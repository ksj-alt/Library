<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	.navbar-inverse { background-color: #221000; position: relative;}
.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #221000}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { background-color: #301602}
.dropdown-menu { background-color: #FFFFFF}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-color: #FFF7CC}
.navbar-inverse { background-image: none; }
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-image: none; }
.navbar-inverse { border-color: #F0F0F0}
.navbar-inverse .navbar-brand { color: #EBCA9A;}
.navbar-inverse .navbar-brand:hover { color: #EBCA9A}
.navbar-inverse .navbar-nav>li>a { color: #D4B78C; font-family: "문체부 제목 돋움체", "함초롱돋움"}
.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { color: #FCDAA6}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { color: #FFFFFF}
.navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus { color: #FFFFFF}
.dropdown-menu>li>a { color: #333333}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { color: #000000}
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-top-color: #999999}
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-top-color: #FFFFFF}
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-bottom-color: #999999}
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-bottom-color: #FFFFFF} 
section{
		width:1000px;
		margin:0 auto;
	}
footer{
		height:50px;
		width:100%;
		background-color:#FFFED7;
		text-align: center;
		font-size:12px;
		color:#5D5D5D;
		margin-top:100px;
	} 
</style>
</head>
<body>
	<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">May Library</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">도서관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">신규도서등록</a></li>
            <li><a href="#">도서목록확인</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">대출관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">대출승인관리</a></li>
            <li><a href="#">대출반납관리</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">회원관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">신규회원등록</a></li>
            <li><a href="#">회원목록확인</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> -->
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./main" class="navbar-brand">KS Library Management</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
			<li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">도서관리 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="${pageContext.request.contextPath }/book/register">신규도서등록</a></li>
	          <li><a href="${pageContext.request.contextPath }/book/list">도서목록확인</a></li>
	        </ul>
	      </li>
       <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">대출관리 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="#">대출승인처리</a></li>
	          <li><a href="#">대출반납처리</a></li>
	        </ul>
	      </li>
	      <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">회원관리 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="${pageContext.request.contextPath }/member/register">신규회원등록</a></li>
	          <li><a href="${pageContext.request.contextPath }/member/list">회원목록확인</a></li>
	        </ul>
	      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      </ul>
    </nav>
  </div>
</header>