<%--
  Created by IntelliJ IDEA.
  User: Eden
  Date: 6/11/2023
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Instructor</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Login</title>
</head>
<%@ include file="menu.jsp"%>
<body class="w-screen h-screen overflow-hidden">
<section class="w-screen h-screen overflow-hidden">
  <h2 class="text-3xl font-semibold text-gray-800 text-center my-2">RCA MIS</h2>
  <div class="w-[400px] mx-auto shadow border rounded p-4 mt-4">
    <h2 class="text-2xl font-semibold text-center text-gray-800">Create a new instructor</h2>
    <form action="createInstructor.php?page=createInstructor" method="post" class="py-4">
      <input type="text" placeholder="first name" name="firstName" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
      <input type="text" placeholder="last name" name="lastName" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
      <input type="number" placeholder="salary" name="salary" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
      <label class="mt-2">Enumeration date</label>
      <input type="date" name="remunerationDate" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
      <button type="submit" class="w-full p-2 bg-blue-500 mt-5 rounded text-white">CREATE</button>

      <div class="pt-2">
        <a href="listinstructor.php?page=instructors&&action=list" class="text-blue-500 text-center"><-- Go back</a>
      </div>
    </form>
  </div>
</section>


<%--<form action="createInstructor.php?page=createInstructor" method="post" >--%>
<%--  <label for="firstName">First Name:</label>--%>
<%--  <input type="text" id="firstName" name="firstName" required><br>--%>

<%--  <label for="lastName">Last Name:</label>--%>
<%--  <input type="text" id="lastName" name="lastName" required><br>--%>

<%--  <label for="salary">Salary:</label>--%>
<%--  <input type="number" id="salary" name="salary" required><br>--%>

<%--  <label for="remunerationDate">Remuneration Date:</label>--%>
<%--  <input type="date" id="remunerationDate" name="remunerationDate" required><br>--%>

<%--  <input type="submit" value="Create Instructor">--%>
<%--</form>--%>
</body>
</html>

