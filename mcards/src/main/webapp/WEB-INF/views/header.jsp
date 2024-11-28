<%@page import="org.springframework.web.util.UrlPathHelper"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
<title>Dashboard</title>
<style>
body{
background:linear-gradient(rgba(255,255,255,.7),rgba(255,255,255,0.6)), url('images/bg2.jpg') no-repeat;min-height:100vh;
background-size:100% 100%;
}
a.list-group-item{
	background-color:rgba(255,255,255,0.4);
}
.list-group{
	min-height: 88.5vh;
    background-color: rgba(255,255,255,0.4);
}
</style>
</head>
<body>
<c:set var="url" value="<%= new UrlPathHelper().getOriginatingRequestUri(request) %>"></c:set>
<div class="jumbotron p-3 rounded-0 mb-0 text-center bg-danger text-white border-bottom border-white">
<a class="btn btn-success float-right btn-sm" href="/logout">Logout</a>
	<h5 class="float-left">Welcome ! ${sessionScope.uname }</h5>
	<h4>College Mark-Card Portal</h4>
</div>
<div class="container-fluid">

			<div class="card shadow" style="background-color:rgba(255,255,255,0.4)">
				<div class="card-body" style="min-height:88.5vh;">
				
				