<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<title>Registration form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<style>
h3{color:black;}

.a{color:red;}

.container{
	margin-top:5%;
	max-width:600px;
	}
.form-control{
width:500px;
}
	
</style>  
</head>
<body>
<div class="container">
<div class="card bg-light">
<center><h3>Register</h3></center>
<article class="card-body mx-auto" style="max-width: 200px;">
                
                <form action="registerform"  method="post">
                  <h4 class="a">${msg}</h4>
                  <div class="form-group input-group">
                    <input type="text" name="username" class="form-control" placeholder="USERNAME" size=200 required /> 
                  </div>
                  
    
                   <div class="form-group input-group">
                    <input type="text" name="password" class="form-control" placeholder="PASSWORD" required /> 
                   </div>

                  <div class="form-group input-group">
                    <input type="text" name="email" class="form-control" placeholder="EMAIL ID" required /> 
                  </div>

                  <div class="form-group input-group">
                    <input type="text" name="phone" class="form-control" placeholder="PHONE NO" required /> 
                  </div>
                  
                  <div class="rows">
                   <div class="form-group input-group">
                   <a href="log" class="btn btn-primary btn-lg float-left">LOGIN</a>
                  </div>

                  <div class="form-group input-group">
                  <button type="submit" class="btn btn-success btn-lg float-right">REGISTER</button>
                  </div>
                  </div>           
                  </form>

    </article>
</div>

</div>
</body>
</html>