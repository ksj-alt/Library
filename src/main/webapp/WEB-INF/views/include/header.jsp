<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KS Library Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.navbar-inverse { background-color: white; position: relative;} /* #221000 */
.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color:none; } /* #221000 */
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { background-color: #B2CCFF;} /* #301602 */
.dropdown-menu { background-color: none; } /* #FFFFFF */
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-color:none; }	/* #FFF7CC */
.navbar-inverse { background-image: none; }
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-image: none; }
.navbar-inverse { border-color:none; } /* #F0F0F0 */
.navbar-inverse .navbar-brand { color: #003399; } /* #EBCA9A */
.navbar-inverse .navbar-brand:hover { color: #353535;} /* #EBCA9A */
.navbar-inverse .navbar-nav>li>a { color: #003399; font-family: "문체부 제목 돋움체", "함초롱돋움";} /* #D4B78C */
.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { color: #353535;} /* #FCDAA6 */
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { color: none;} /* #FFFFFF */
.navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus { color: none;} /* #FFFFFF */
.dropdown-menu>li>a { color: none;} /* #333333 */
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { color: none;} /* #000000 */
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-top-color: none;} /* #999999 */
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-top-color: none;} /* #FFFFFF */
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-bottom-color: none;} /* #999999 */
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-bottom-color: none;} /* #FFFFFF */ 
header{
	height:60px;
	padding-top:5px;
}
section{
		width:1000px;
		margin:0 auto;
		position: relative;
	}
footer{
		height:75px;
		width:100%;
		text-align: center;
		font-size:12px;
		color:#5D5D5D;
		margin-top:180px;
	}
footer hr{
		padding-bottom:5px;
	}
</style>
</head>
<body>
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="${pageContext.request.contextPath }/main" class="navbar-brand">KS Library Management</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
      		<li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-weight: bold">회원관리 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="${pageContext.request.contextPath }/member/register">신규회원등록</a></li>
	          <li><a href="${pageContext.request.contextPath }/member/listPage">회원목록확인</a></li>
	        </ul>
	      </li>
			<li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-weight: bold">도서관리 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="${pageContext.request.contextPath }/book/register">신규도서등록</a></li>
	          <li><a href="${pageContext.request.contextPath }/book/listPage">도서목록확인</a></li>
	        </ul>
	      </li>
       <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-weight: bold">도서대출 <b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="${pageContext.request.contextPath }/loan/lending">도서대출처리</a></li>
	          <li><a href="${pageContext.request.contextPath }/loan/returnbook">도서반납처리</a></li>
	        </ul>
	      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span class="hidden-xs" style="color:#353535;">${Name }(${Auth })</span> 
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header" style="text-align: center;">
                   <%--  <img src="${pageContext.request.contextPath }/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" /> --%>
                    <p>
                   		${Email }
                   	</p>
                   	<a href="${pageContext.request.contextPath }/logout" class="btn btn-default btn-flat" style="width:100px; margin:0 auto;">Logout</a>
                  </li>
          		</ul>
      </ul>
    </nav>
  </div>
</header>