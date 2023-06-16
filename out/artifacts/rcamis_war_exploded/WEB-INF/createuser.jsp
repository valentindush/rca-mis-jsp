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
	<title>Create Course</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

		</head>

		<body>

		<c:if test="${message != null}">
			<fieldset>
				<h3>
					<span style="color: red"> ${message}</span>
				</h3>
			</fieldset>
		</c:if>


	<!-- Section: Design Block -->
	<section class="text-center text-lg-start">
		<style>
			.cascading-right {
				margin-right: -50px;
			}

			@media (max-width: 991.98px) {
				.cascading-right {
					margin-right: 0;
				}
			}
		</style>

		<!-- Jumbotron -->
		<div class="container py-4">
			<div class="row g-0 align-items-center">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
						<div class="card-body p-5 shadow-5 text-center">
							<h2 class="fw-bold mb-5">Sign up now</h2>
							<form action="createuser.php?page=createuser" method="post">
								<div class="container" style="font-size: 16px ;" >
									<div class="row">
										<div class="col">
											<div class="form-group ">

												<input type="text" class="form-control form-control-lg" name="username" id="username" required placeholder="Enter your username">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="form-group">
												<input type="password" class="form-control form-control-lg" name="password" id="password" required placeholder="Enter your password">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="form-group">

												<input type="text" class="form-control form-control-lg" name="userfullname" id="userfullname" placeholder="Enter your fullname">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="form-group">
												<input type="email" class="form-control form-control-lg" name="email" id="email" placeholder="enter email">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="form-group">
												<select class="form-control form-control-lg" name="userRole" id="userRole">
													<option value="">Select Role</option>
													<c:forEach items="${userRoles}" var="userrole"
															   varStatus="userrolestatus">
														<option value="${userrole}">
															<c:out value="${userrole.getRoleDescription()}" />
														</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<input type="submit" class="btn btn-primary  mb-3 p-2  ml-8" name="saveDataUser" value="Create User">
											</div>
										</div>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0">
					<img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" class="w-100 rounded-4 shadow-4"
						 alt="" />
				</div>
			</div>
		</div>
		<!-- Jumbotron -->
	</section>
<%--	<form action="createuser.php?page=createuser" method="post">--%>
<%--		<div class="container" style="font-size: 16px ;" >--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group ">--%>
<%--						<label for="username"><b>Username:</b></label>--%>
<%--						<input type="text" class="form-control form-control-lg" name="username" id="username" required>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group">--%>
<%--						<label for="password"><b>Password:</b></label>--%>
<%--						<input type="password" class="form-control form-control-lg" name="password" id="password" required>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group">--%>
<%--						<label for="userfullname"><b>User Full Name:</b></label>--%>
<%--						<input type="text" class="form-control form-control-lg" name="userfullname" id="userfullname">--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group">--%>
<%--						<label for="email"><b>Email:</b></label>--%>
<%--						<input type="email" class="form-control form-control-lg" name="email" id="email">--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group">--%>
<%--						<label for="userRole"><b>Role:</b></label>--%>
<%--						<select class="form-control form-control-lg" name="userRole" id="userRole">--%>
<%--							<option value="">Select Role</option>--%>
<%--																					<c:forEach items="${userRoles}" var="userrole"--%>
<%--																						varStatus="userrolestatus">--%>
<%--																						<option value="${userrole}">--%>
<%--																							<c:out value="${userrole.getRoleDescription()}" />--%>
<%--																						</option>--%>
<%--																					</c:forEach>--%>
<%--						</select>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-6">--%>
<%--					<div class="form-group">--%>
<%--						<input type="submit" class="btn btn-primary  mb-3 p-2  ml-8" name="saveDataUser" value="Create User">--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--	</form>--%>

																	</body>

</html>
<%@ include file="footer.jsp"%>