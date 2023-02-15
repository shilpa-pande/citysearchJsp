<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>register page</title>

</head>
<body>
<div class="topheader">
<%@ include file="header.jsp"  %>
</div>
<div class="bottom">
<%@ include file="footer.jsp"  %>
</div>
<div>
<%@ include file="cookie.jsp" %>
</div>
<div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="formpostclassified">
                <h1 style="text-align: center;color:blue;">Registration Form</h1><hr>
                <form class="form-horizontal" action="registerprocess.jsp" method="post">
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="name">Name:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control"  placeholder="Enter Name" name="name" pattern="[a-zA-Z][a-zA-Z ]{1,}" required>
                        </div>
                      </div><br>
                      <div class="form-group">
                      <label class="control-label col-sm-3" for="pwd">Password:</label>
                      <div class="col-sm-8">          
                        <input type="password" class="form-control"  placeholder="Enter password" name="password"  min="8" required>
                      </div>
                    </div><br>
                    <div class="form-group">
                      <label class="control-label col-sm-3" for="email">Email:</label>
                      <div class="col-sm-8">
                        <input type="email" class="form-control"  placeholder="Enter email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" name="email" required >
                      </div>
                    </div><br>
                         <div class="form-group">
                      <label class="control-label col-sm-3" for="pwd">Address:</label>
                      <div class="col-sm-8">          
                        <input type="text" class="form-control"  placeholder="Enter address" name="address" required>
                      </div>
                    </div><br>
                    <div class="form-group">
                            <label class="control-label col-sm-3" for="country">Select City:</label>
                            <div class="col-sm-8">
                            <select class="form-control"  name="country" required>
                              <option>Dehradun</option>
                              <option>Gurgaon</option>
                              <option>Delhi</option>
                              <option>Mumbai</option>
                               <option>Chennai</option>
                                   <option>Raipur</option>
                            </select>
                            </div>
                    </div><br>
                        <div class="form-group">
                      <label class="control-label col-sm-3" for="contact">Contact Number:</label>
                      <div class="col-sm-8">
                        <input type="number" class="form-control" placeholder="Enter Contact no"  title="number should be enter in 10 digits" required>
                      </div>
                    </div><br>
                    
                    <div class="form-group">        
                      <div class="col-sm-offset-3 col-sm-8">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                      </div>
                    </div>
                    <hr>
                </form>
                

            </div>

        </div>

    </div>
    <!----------------container closed------------------------------------------>

</body>
</html>