<%--
  Created by IntelliJ IDEA.
  User: Eden
  Date: 6/13/2023
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
</head>
<body>
<h1>Create Student</h1>
<form action="createstudent.php?page=createStudent" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required><br>

    <label for="dateOfBirth">Date of Birth:</label>
    <input type="date" id="dateOfBirth" name="dateOfBirth" required><br>

    <label for="phoneNumber">Phone Number:</label>
    <input type="text" id="phoneNumber" name="phoneNumber" required><br>

    <label for="studentId">Student ID:</label>
    <input type="text" id="studentId" name="studentId" required><br>

    <label for="major">Major:</label>
    <input type="text" id="major" name="major" required><br>

    <input type="submit" value="Create Student">
</form>
</body>
</html>

