<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Login</title>
</head>
<%@ include file="menu.jsp"%>
<body class="w-screen overflow-hidden">
<section class="w-screen h-screen overflow-hidden">
    <h2 class="text-3xl font-semibold text-gray-800 text-center my-2">RCA MIS</h2>
    <div class="w-[400px] mx-auto shadow border rounded p-4 mt-4">
        <h2 class="text-2xl font-semibold text-center text-gray-800">Create a new student</h2>
        <form action="createstudent.php?page=createStudent" method="post" class="py-4">
            <input type="text" placeholder="first name" name="firstName" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
            <input type="text" placeholder="last name" name="lastName" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
            <label class="mt-2">Date of birth</label>
            <input type="date"  name="dateOfBirth" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">

            <input type="phone" placeholder="phone number" name="phoneNumber" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
            <input type="text" placeholder="student id" name="studentId" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">
            <input type="text" placeholder="major" name="major" class="p-2 border border-gray-400 outline-none mt-2 rounded block w-full active:border-blue-400 transition-all">

            <button type="submit" class="w-full p-2 bg-blue-500 mt-5 rounded text-white">CREATE</button>

            <div class="pt-2">
                <a href="liststudents.php?page=students&&user_role=adm&&action=list" class="text-blue-500 text-center"><-- Go back</a>
            </div>
        </form>
    </div>
</section>
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

