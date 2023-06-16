<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%--<jsp:include page="headerlogin.jsp">--%>
<%--	<jsp:param value="Login page" name="title" />--%>
<%--</jsp:include>--%>

<html>
<head>
	<script src="https://cdn.tailwindcss.com"></script>
	<title>Login</title>
</head>
<section class="w-screen h-screen overflow-hidden">
	<h2 class="text-3xl font-semibold text-gray-800 text-center my-2">RCA MIS</h2>
	<div class="w-[400px] mx-auto shadow border rounded p-4 mt-24">
		<h2 class="text-2xl font-semibold text-center text-gray-800">Welcome back</h2>
		<form action="login.php" method="post" class="py-4">
			<input type="text" placeholder="username" name="username" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
			<input type="password" placeholder="password" name="password" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
			<button type="submit" class="w-full p-2 bg-blue-500 mt-5 rounded text-white">LOGIN</button>

			<div class="pt-2">
				<p class="text-center">Don't have account? <a href="createuser.php?page=createuser" class="text-blue-500">create account</a></p>
			</div>
		</form>
	</div>
</section>
</html>
