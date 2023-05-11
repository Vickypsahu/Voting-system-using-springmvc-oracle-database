<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <title>Go for vote </title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>
h3{color:black;}
.a{color:red;}
</style>  

</head>
<body> 
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md4">

                <form action="votingform/${username}"  method="post">

                  <center><h3>Choose candidate</h3></center>
                  
                  <h3 class="a">${msg}</h3>
                 <div class="justify-content-center">

<form action="votingform/${username}" method="post">  
 <input type="radio" name="vote" value="candidate1" required/><label>Candidate 1</label><br><br>
 <input type="radio" name="vote" value="candidate2"/><label>Candidate 2</label><br><br>
 <input type="radio" name="vote" value="candidate3"/><label>Candidate 3</label><br><br>
 <input type="radio" name="vote" value="candidate4"/><label>Candidate 4</label><br><br>
</div>
                  
                   <div class="col-xs-6">
                    <button type="submit" class="btn btn-success btn-lg float-center">VOTE</button>
                  </div>                                                      
                </form>

              </div>
            </div>
  
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section> 
</body>
</html>