<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.tailwindcss.com"></script>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900;1,1000&display=swap');

		* {
			font-family: 'Nunito', sans-serif;
		}
	</style>
	<script>
		$(document).ready(function () {
			$('.dropdown-trigger').click(function () {
				var dropdown = $(this).next('.dropdown');
				$('.dropdown').not(dropdown).addClass('hidden');
				dropdown.toggleClass('hidden');
			});

			$(document).click(function (e) {
				var target = e.target;
				if (!$(target).is('.dropdown-trigger') && !$(target).closest('.dropdown').length) {
					$('.dropdown').addClass('hidden');
				}
			});
		});
	</script>
</head>

<body>

<nav class="flex items-center gap-12 p-3 text-gray-700 shadow justify-between px-12">
	<div>
		<h2 class="text-blue-600 font-bold text-3xl">RCA MIS</h2>
		<p>RCA Management Information System</p>
	</div>
	<div class="flex items-center gap-12 ">
		<div class="flex items-center gap-5">
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Users</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="createuser.php?page=createuser" class="">Create User </a>
						<a class="hover:text-blue-500 font-medium" href="listuser.php?page=users&&action=list">List Of Users</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Instructors</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="createInstructor.php?page=creatInstructor">Create Instructor</a>
						<a class="hover:text-blue-500 font-medium" href="listinstructor.php?page=instructors&&action=list">List Of Instructors</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Students</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="createstudent.php?page=createStudent">Create Student</a>
						<a class="hover:text-blue-500 font-medium" href="liststudents.php?page=students&&user_role=adm&&action=list">List Of Students</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Courses</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="">Create Course</a>
						<a class="hover:text-blue-500 font-medium" href="listcourse.php?page=courses&&action=list">List Of Courses</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Marks</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="createmark.php?page=creatMark">Create Mark</a>
						<a class="hover:text-blue-500 font-medium" href="listmarks.php?page=marks&&action=list">List Of Marks</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Parents</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="createparent.php?page=creatParent">Create Parent</a>
						<a class="hover:text-blue-500 font-medium" href="listparents.php?page=listparents&&user_role=adm&&action=list">List Of Parents</a>
					</div>
				</div>
			</div>
			<div>
				<div class="relateve">
					<p class="dropdown-trigger cursor-pointer hover:text-blue-500 transition-colors font-medium ">
						Reports</p>
					<div class="dropdown absolute flex flex-col gap-2 text-sm hidden text-gray-700">
						<a class="hover:text-blue-500 font-medium" href="listStudents.php?page=reportsearch&&user_role=adm&&action=search">Student
							Reports</a>
						<a class="hover:text-blue-500 font-medium" href="listCourses.php?page=reportcourses&&user_role=adm&&action=search">Courses
							Reports</a>
						<a class="hover:text-blue-500 font-medium" href="listMarks.php?page=markssearch&&user_role=adm&&action=search">Marks Reports</a>
						<a class="hover:text-blue-500 font-medium" href="instructorspdf.php?">Instructors Reports</a>
					</div>
				</div>
			</div>
		</div>
		<div class="">
			<c:if test="${authenticatedUser !=null}">

				<a href="listuser.php?page=profile&&id=${authenticatedUser.id}">
					<button class="p-2 px-3 bg-blue-500 text-white font-medium rounded-md">Profile</button>
				</a>
				<a class="p-2 px-3 border border-red-500 text-red-500 rounded-md hover:text-white hover:bg-red-500 transition-colors" href="login.php?logout=logout">Logout</a>
			</c:if>
			<c:if test="${authenticatedUser ==null}">
				<div class="" >
					<a class="" href="login.php?">Login</a>
				</div>
			</c:if>
		</div>
	</div>
</nav>

</body>
