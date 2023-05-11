<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login form</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style>
h3{color:black;}
.rows{margin-bottom:70px}
.a{color:red;}
body{
	background: white;
	padding-top: 25vh;	
}
form{
	background: #fff;
}

.form-container{
	border-radius: 10px;
	border-style:solid;
	border-color:black;
	padding: 30px;
}
</style>  
</head>
<body>
<center><h3>Admin Login page</h3></center>

<section class="container-fluid">
    <!-- row and justify-content-center class is used to place the form in center -->
    <section class="row justify-content-center">
      <section class="col-12 col-sm-6 col-md-4">
                <form class="form-container" action="adminform"  method="post">
                  <center><h3 class="a">${msg}</h3></center>
                 
                  <div class="form-group"> 
                    <input type="text" name="username" class="form-control" placeholder="USERNAME" required/> 
                  </div>

                  <div class="form-group">
                    <input type="text"  class="form-control" name="password" placeholder="PASSWORD" required/>    
                  </div>
          
                  <div class="rows">
                   <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg float-left">LOGIN</button>
                  </div>

                  
                  </div>

                  

                </form>
                </section>
                </section>
                </section>
</body>
</html>