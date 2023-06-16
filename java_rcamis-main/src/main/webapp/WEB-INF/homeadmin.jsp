<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="headeradmin.jsp">
	<jsp:param value="Home Admin" name="title" /></jsp:include>
<div class="mt-4 py-4 px-12">
	<div class="text-gray-700">
		<p class="text-xl font-semibold">Welcome to RCA management Information System <span class="text-blue-500">(RCA MIS)</span></p>
		<p class="text-md font-medium my-4">Inside the school</p>
	</div>

	<div class="grid grid-cols-3 gap-3">
		<img class="object-cover h-[40vh] rounded-md cursor-pointer" src="images/rcaimage2.JPG"/>
		<img class="object-cover h-[40vh] rounded-md cursor-pointer" src="images/rcaimage.JPG"/>
		<img class="object-cover h-[40vh] rounded-md cursor-pointer" src="images/picrca.jpg"/>
	</div>
</div>
<%@ include file="footer.jsp"%>