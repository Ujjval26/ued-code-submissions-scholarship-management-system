<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<title>ICT scholarship</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/title_image.png" type="image/icon">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

</head>
<style>
body {
	overflow-x: hidden;
}

.footer {
	margin-left: 12PX;
}

.card {
	border: none;
	box-shadow: none;
}

.card-body h3 {
	font-weight: 700;
}

.subbtn:hover {
	background: #1165F1 !important;
	color: #fff !important;
}

.subbtn {
	font-size: 18px;
	text-transform: capitalize;
	border-radius: 42px;
	background: #fff;
	border: 1px solid #1165F1;
	width: 150px;
	box-shadow: none;
	margin-left: 15vw;
	color: #1165F1;
}
</style>
<body>


	<!--Navbar-->
	<jsp:include page="navbar.jsp" />
	<br>
	<br>

	<img src="images/home3.jpg" alt="home img"
		style="width: 100%; height: 45vw">
	<br>
	<br>
	<br>
	<div class="card"></div>
	<div class="row">

		<div class="card col-md-6" data-aos="fade-up" data-aos-duration="1000">
			<div class="card-body">
				<img src="images/join-and-match.png"
					style="width: 70%; margin-left: 140px;">
			</div>
		</div>
		<div class="card col-md-6" data-aos="fade-up" data-aos-duration="1000">
			<div class="card-body">
				<h1 class="card-title"
					style="font-weight: 700; margin-left: 20px; margin-top: 100px;">Purpose</h1>
				<p class="card-text" style="margin-left: 20px; margin-right: 20px;">Education
					has a crucial role to play in the development of a person and
					subsequently, the entire nation. The purpose of our organization
					primarily is to spread the importance of education, especially to
					the disadvantaged and rural areas. We aim to address and resolve
					the numerous issues faced by the current education system through
					our various projects. Our projects are crafted for students and the
					other important stakeholders, parents and teachers.</p>
			</div>
		</div>
	</div>
	<div class="row">

		<div class="card col-md-6" data-aos="fade-up" data-aos-duration="1000">
			<div class="card-body">
				<h1 class="card-title"
					style="font-weight: 700; margin-left: 20px; margin-top: 150px;">Vision</h1>
				<p class="card-text" style="margin-left: 20px; margin-right: 20px;">We
					provide all the information regarding scholarships to the student
					as our main objective. Our primary vision is to increase the number
					of scholarships</p>
			</div>
		</div>
		<div class="card col-md-6" data-aos="fade-up" data-aos-duration="1000">
			<div class="card-body">
				<img src="images/organzie-and-manage.png"
					style="width: 70%; margin-right: 140px;">
			</div>


		</div>
		<div class="row">
			<div class="card-body col-md-6" data-aos="fade-up"
				data-aos-duration="1000">
				<img src="images/apply-to-scholarships.png"
					style="width: 70%; margin-left: 140px;">
			</div>
			<div class="card col-md-6" data-aos="fade-up"
				data-aos-duration="1000">
				<div class="card-body">2
					<h1 class="card-title"
						style="font-weight: 700; margin-left: 20px; margin-top: 50px;">Mission</h1>
					<p class="card-text" style="margin-left: 20px; margin-right: 20px;">Our
						prime mission is to pass the value of education in our
						communities, enhance skills by offering tailored programs and
						teach human values. We develop scalable, sustainable,
						process-driven projects for corporate entities and institutes and
						invite like-minded corporate houses and interested individuals to
						replicate ICT scholarship projects. Our mission is also to set a
						benchmark framework for quality education by creating working
						models, which can be reviewed and replicated by others, to improve
						the education standards and greater societal good.</p>
				</div>
			</div>

		</div>
		<div class="row">

			<div class="col-sm-6">
				<div class="card">
					<div class="card-body"></div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="row">

				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<h1 class="card-title text-center"
								style="font-size: 50px; font-weight: 700;">Start searching
								today!</h1>
							<br> <a href="scholarship.jsp"
								style="color: #1165F1; text-decoration: none;"><button
									type="submit" class="btn btn-primary subbtn">Search
									Here</button></a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<p class="card-text"
								style="font-size: 18px; letter-spacing: 1px;">ICT
								scholarship is the boldest, baddest scholarship-matching website
								out there. It's simple, accurate, and fast. Made by students,
								for students, we know firsthand what it's like to have to search
								high and low for scholarships. The money is free, the impact is
								real. With over $100 million in scholarships won so far, here's
								to helping you achieve your greatest potential.</p>
						</div>
					</div>
				</div>
			</div>

			<!-- FOOTER -->
			<jsp:include page="footer.jsp" />

			<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
			<script src="bootstrap/js/bootstrap.min.js"></script>
			<script src="bootstrap/js/popper.min.js"></script>
			<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
			<script>
				AOS.init();
			</script>
			<script type="text/javascript"
				src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>