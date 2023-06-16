<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>User Registrations</title>
</head>
<body>
	<div>

		<div>
			<%@ include file="menu.jsp"%>
		</div>
		<div class="px-12 mt-5">
			<c:if test="${authenticatedUser !=null}">
				<div class="options">

					<a class="inline-block my-3 rounded-md p-2 px-3 text-white bg-blue-500 " href="createuser.php?page=createuser">
						New User Registration
					</a>
				</div>
				<div class="search mt-3">
					<form action="listuser.php" method="get">
						<input class="p-2 border border-slate-500 outline-none rounded-md focus:border-blue-400 transition-all" placeholder="Enter an ID to search" type="text" name="id" id="id" />
						<button type='submit' name="userregistrationsearch" value='search' class="p-2 px-3 text-blue-500 border border-blue-500 rounded-md hover:text-white hover:bg-blue-500 transition-colors">Search</button>
					</form>
				</div>

				<form class="mt-4 p-3 shadow-md border rounded-md" action="listuser.php?page=statusapproval" method="post">
					<fieldset>
						<legend class="pb-5 text-gray-600 font-medium text-lg"> User Registration Approval Status </legend>
						<input type="text" size="15" maxlength="50" readonly="readonly" name="savedBy" id="savedBy" hidden="hidden" value="${authenticatedUser.id}" />

						<select name="userRole" id="userRole" class="border border-gray-600 p-2 outline-none text-sm rounded-md">
							<option selected="selected" value="NONE">Select Role</option>
							<c:forEach items="${userRoles}" var="usrRole"
								varStatus="usrRolestatus">
								<option value="${usrRole}">
									<c:out value="${usrRole.getRoleDescription()}" />
								</option>
							</c:forEach>
						</select>

						<button type="submit" name="saveDataUserStatus" class="text-white text-sm p-2 bg-blue-500 rounded-md">Save Status</button>

						<table class="mt-4 table-auto w-full text-left">
							<thead class="border-b font-medium dark:border-neutral-500">
								<tr class="font-semibold">
									<td scope="col" class="px-6 py-4"># ID</td>
									<td scope="col" class="px-6 py-4">Name</td>
									<td scope="col" class="px-6 py-4">Email</td>
									<td scope="col" class="px-6 py-4">Role</td>
									<td scope="col" class="px-6 py-4">Check User</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${users}" var="usr" varStatus="usrstatus">
									<tr class="border-b dark:border-gray-500">
										<td class="whitespace-nowrap px-6 py-4 font-medium">#${usr.id}</td>
										<td class="whitespace-nowrap px-6 py-4">${usr.fullName}</td>
										<td class="whitespace-nowrap px-6 py-4">${usr.email}</td>
										<td class="whitespace-nowrap px-6 py-4">${usr.userRole.getRoleDescription()}</td>
										<td class="whitespace-nowrap px-6 py-4"><input type="checkbox" class="h-6 w-6" name="usrIds"
											value="${usr.id}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</fieldset>
				</form>
			</c:if>
		</div>
		<%@ include file="footer.jsp"%>