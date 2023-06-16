<%--
  Created by IntelliJ IDEA.
  User: Eden
  Date: 6/10/2023
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <title>Instructors List</title>

</head>
<body>
    <div>
        <%@ include file="menu.jsp"%>
    </div>
    <div class="px-12 mt-5">
        <c:if test="${authenticatedUser !=null}">
            <div class="options">
                <a class="inline-block my-3 rounded-md p-2 px-3 text-white bg-blue-500 " href="createInstructor.php?page=creatInstructor">
                    New Instructor Registration
                </a>
            </div>
            <div class="search mt-3">
                <form action="listinstructor.php" method="get">
                    <input class="p-2 border border-slate-500 outline-none rounded-md focus:border-blue-400 transition-all" placeholder="Enter an ID to search" type="text" name="id" id="id" />
                    <button type='submit' name="userregistrationsearch" value='search' class="p-2 px-3 text-blue-500 border border-blue-500 rounded-md hover:text-white hover:bg-blue-500 transition-colors">Search</button>
                </form>
            </div>
            <div class="p-3 shadow-sm border mt-4 rounded-md">
                <legend class="pb-5 text-gray-600 font-medium text-lg"> Courses List </legend>
                <td>
                    <input type="text" size="15" maxlength="50" readonly="readonly" name="savedBy" id="savedBy" hidden="hidden" value="${authenticatedUser.id}" /></td>
                <table class="mt-4 table-auto w-full text-left">
                    <thead class="border-b font-medium dark:border-neutral-500">
                    <tr>
                        <th cope="col" class="px-6 py-4"># ID</th>
                        <th cope="col" class="px-6 py-4">First Name</th>
                        <th cope="col" class="px-6 py-4">Last Name</th>
                        <th cope="col" class="px-6 py-4">Salary</th>
                        <th cope="col" class="px-6 py-4">Remuneration Date</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${instructors}" var="instructor">
                        <tr class="border-b dark:border-gray-500">
                            <td class="whitespace-nowrap px-6 py-4 font-medium">#${instructor.id}</td>
                            <td class="whitespace-nowrap px-6 py-4">${instructor.firstName}</td>
                            <td class="whitespace-nowrap px-6 py-4">${instructor.lastName}</td>
                            <td class="whitespace-nowrap px-6 py-4">${instructor.salary}</td>
                            <td class="whitespace-nowrap px-6 py-4">${instructor.remunerationDate}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
    <%@ include file="footer.jsp"%>

