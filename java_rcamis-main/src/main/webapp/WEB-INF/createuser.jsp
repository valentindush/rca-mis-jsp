<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%--<jsp:include page="headeradmin.jsp"><jsp:param--%>
<%--		name="title" value="Create User" />--%>
<%--</jsp:include>--%>
<html>
<head>
	<title>Create User</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
	<script src="https://cdn.tailwindcss.com"></script>
</head>

		<body>

		<c:if test="${message != null}">
			<span>${message}</span>
		</c:if>

		<section class="w-screen h-screen overflow-hidden">
			<h2 class="text-3xl font-semibold text-gray-800 text-center my-2">RCA MIS</h2>
			<div class="w-[400px] mx-auto shadow border rounded p-4 mt-6">
				<h2 class="text-2xl font-semibold text-center">Create a new user</h2>
				<form action="createuser.php" method="post" class="py-4">
					<input type="text" placeholder="username" name="username" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
					<input type="password" placeholder="password" name="password" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
					<input type="text" placeholder="full name" name="userfullname" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
					<input type="email" placeholder="email" name="email" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">

					<select name="userRole" id="useRole" class="p-2 mt-2 w-full border border-gray-400 outline-none rounded active:border-blue-400 transition-all">
						<option value="">Select Role</option>
						<c:forEach items="${userRoles}" var="userrole"
								   varStatus="userrolestatus">
							<option value="${userrole}">
								<c:out value="${userrole.getRoleDescription()}" />
							</option>
						</c:forEach>
					</select>
					<input type="submit" name="saveDataUser" value="CREATE USER" class="w-full p-2 bg-blue-500 mt-5 rounded text-white" />

					<div class="pt-2">
						<p class="text-center">Already have account? <a href="login.php?" class="text-blue-500">Login</a></p>
					</div>
				</form>
			</div>
		</section>

		</body>

</html>
<%@ include file="footer.jsp"%>