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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<style>

	.divider:after,
	.divider:before {
		content: "";
		flex: 1;
		height: 1px;
		background: #eee;
	}
	.h-custom {
		height: calc(100% - 73px);
	}
	@media (max-width: 450px) {
		.h-custom {
			height: 100%;
		}
	}
</style>

			<section class="vh-100" style="font-size: 16px">

				<div class="container-fluid h-custom">
					<div class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-md-9 col-lg-6 col-xl-5">
							<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
								 class="img-fluid" alt="Sample image">
						</div>
						<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
							<form action="login.php" method="post">
								<div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
									<p class="lead fw-normal mb-2 me-3">Sign in with</p>
									<button type="button" class="btn btn-primary btn-floating mx-4 btn-lg">
										<i class="fab fa-facebook-f"></i>
									</button>

									<button type="button" class="btn btn-primary btn-floating mx-4 btn-lg">
										<i class="fab fa-twitter"></i>
									</button>

									<button type="button" class="btn btn-primary btn-floating mx-4 btn-lg">
										<i class="fab fa-linkedin-in"></i>
									</button>
								</div>

								<div class="divider d-flex align-items-center my-4">
									<p class="text-center fw-bold mx-3 mb-0">Or</p>
								</div>

								<!-- Email input -->
								<div class="form-outline mb-12 mt-12">
									<label class="form-label"  for="username">UserName</label>
									<input type="text"  class="form-control form-control-lg" name="username" id="username"
										   placeholder="Enter username" />

								</div>

								<!-- Password input -->
								<div class="form-outline mb-8 mt-12">
									<label class="form-label" for="password" style="font-size: 16px">Password</label>
									<input type="password"  class="form-control form-control-lg" name="password" id="password"
										   placeholder="Enter password" />

								</div>

								<div class="d-flex justify-content-between align-items-center" style="font-size: 12px">
									<!-- Checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
										<label class="form-check-label ml-4" for="flexCheckChecked">
											Remember me
										</label>
									</div>

									<a href="#!" class="text-body" >Forgot password?</a>
								</div>

								<div class="text-center text-lg-start mt-4 pt-2">

									<button type="submit" class="btn btn-primary btn-lg"

									style="padding-left: 2.5rem; padding-right: 2.5rem;"> Login</button>

								</div>

							</form>

							<c:if test="${authenticatedUser ==null}">
								<p class="small fw-bold mt-2 pt-1 mb-0" style="font-size: 16px">Don't have an account? <a href="createuser.php?page=createuser"
																								  class="link-danger">Register</a></p>
							</c:if>
						</div>
					</div>
				</div>
				<div
						class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
					<!-- Copyright -->
					<div class="text-white mb-3 mb-md-8">
						Copyright © 2020. All rights reserved.
					</div>
					<!-- Copyright -->

					<!-- Right -->
					<div>
						<a href="#!" class="text-white mx-4">
							<i class="fab fa-facebook-f"></i>
						</a>
						<a href="#!" class="text-white mx-4">
							<i class="fab fa-twitter"></i>
						</a>
						<a href="#!" class="text-white mx-4">
							<i class="fab fa-google"></i>
						</a>
						<a href="#!" class="text-white">
							<i class="fab fa-linkedin-in"></i>
						</a>
					</div>
					<!-- Right -->
				</div>
			</section>


</html>
