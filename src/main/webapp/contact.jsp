<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" , initial-scale="1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
    <title>Contact-Us</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" href="images/logo-titlebar.png" type="image/icon">
    <script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<style>
	body,.card{
		font-family:calibri !important;		
	}
	
	.hiii .card{
		background:none;
	}
	
</style>
</head>
<body>

<!--Navbar-->
 <jsp:include page="navbar.jsp" /> 
<br><br><br><br><br><br><br>

  
    
    <!-- CARD-1 -->
    <div class="row hiii">
        <div class="col-sm-6">
            <div class="card" style="border:none;box-shadow:none;">
                <div class="card-body">
                    <h3 style="color: #000; text-align: center; margin-top: -80px;text-transform:capitalize;">Submit
                        Your Query</h3>
                    <br>
                    <br>

                    <form class="mx-1 mx-md-4" action="contact_logic.jsp" method="post"
                        style="background: none !important; color: #000 !important;">

                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                            <div class="form-outline flex-fill mb-0">
                                <input type="text" id="form3Example1c" class="form-control" name="name" required/> <label
                                    class="form-label" for="form3Example1c">Your
                                    Name</label>
                            </div>
                        </div>

                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-solid fa-envelope fa-lg me-3 fa-fw"></i>
                            <div class="form-outline flex-fill mb-0">
                                <input type="email" id="form3Example3c" class="form-control" name="email" required/> <label
                                    class="form-label" for="form3Example3c">Your
                                    Email</label>
                            </div>
                        </div>

                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-phone-alt fa-lg me-3 fa-fw"></i>
                            <div class="form-outline flex-fill mb-0">
                                <input type="text" id="form3Example3c" class="form-control" name="phno" required/> <label
                                    class="form-label" for="form3Example3c">Mobile</label>
                            </div>
                        </div>

                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-solid fa-file-invoice fa-lg me-3 fa-fw"></i> <i class=""></i>
                            <div class="form-outline flex-fill mb-0">
                                <input type="text" id="form3Example1c" class="form-control" name="subject" required/> <label
                                    class="form-label" for="form3Example1c">Subject</label>
                            </div>
                        </div>
                        
                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-solid fa-comment fa-lg me-3 fa-fw"></i> <i class=""></i>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3"
                                placeholder="How Can We Help You?" name="comment"></textarea>
                        </div>

                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                            <button type="submit" class="btn btn-primary btn-lg"
                                style="background: #406cbd;color:#fff;text-transform:capitalize;box-shadow:none;border:none;">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        
        <!-- CARD-2 -->
        <div class="col-sm-6">
            <div class="card" style="border:none;box-shadow:none;">
                <div class="card-body">

                    <h3 class="card-title" style="color: #000 !important; text-align: center; margin-top: -80px;">
                        Contact Us</h3><br><br>
                    <i class="fas fa-location-arrow fa-lg me-3 fa-fw"></i>A-110, Vishwas City 1, Sola, Ahmedabad,
                    Gujarat, India 380061.
                    <br><br><i class="fas fa-phone-alt fa-lg me-3 fa-fw"></i>1234567890<br><br><i
                        class="fas fa-globe fa-lg me-3 fa-fw"></i>www.scholarship.com
                    <br><br>
                    <i class="fas fa-handshake fa-lg me-3 fa-fw"></i>Become our partner to serve the students community
                    together. Write to us at <a class="a" href="#"
                        style="color:blue"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;care@scholarship.com</a>
                </div>
            </div>
        </div>
    </div>
    <br><br>
    
    
<!-- FOOTER -->
<jsp:include page="footer.jsp" />  
      <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
      <script src="bootstrap/js/bootstrap.min.js"></script>
      <script src="bootstrap/js/popper.min.js"></script>
      <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	  <script src="js/app.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
      
<script>
    AOS.init();
</script>
</body>
</html>