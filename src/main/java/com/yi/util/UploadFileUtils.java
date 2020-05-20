package com.yi.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;


public class UploadFileUtils {
	
	public static String uploadFile(String uploadPath, String filename, byte[] fileDate) throws IOException {
		File dir = new File(uploadPath); 
		if(dir.exists() == false) { 
			dir.mkdirs();
		}
		String target = calcPath(uploadPath);
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + filename;
		File file = new File(uploadPath +target+"/"+ savedName); 
		FileCopyUtils.copy(fileDate, file);
		
		String thumbPath = makeThumbnail(uploadPath, target, savedName);
		
		return thumbPath;
	}
	
	
	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		String yearPath = "/" + cal.get(Calendar.YEAR);
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH)+1);
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE));
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		
		return datePath;
	}
	
	private static void makeDir(String uploadPath, String... paths) {
		for(String path: paths) {
			File dir = new File(uploadPath+path); //uploadPath:c:/zzz/upload/  ----> +path : 년도, 월, 일 폴더 만들어야함
			if(dir.exists() == false) {
				dir.mkdir();
			}
		}
	}
	
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws IOException {
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath+path+"/"+fileName));
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); 
		
		String thumbnailName = uploadPath + path + "/s_" + fileName;
		
		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		return thumbnailName.substring(uploadPath.length()); 
	}
}
