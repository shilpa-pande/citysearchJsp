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
<title>post classified</title>
</head>
<body>
<div class="adminheader">
<%@ include file="adminheader.jsp"  %>
</div>
<div class="adminbottom">
<%@ include file="footer.jsp"  %>
</div>
<!-------------------------container started--------------------------->
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="formpostclassified">
                <h1 style="text-align: center;color:blue;">Post Information</h1><hr>
                <form class="form-horizontal" action="postclassifiedprocess.jsp" method="post">
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="name">Name:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" pattern="[a-zA-Z][a-zA-Z ]{1,}"required>
                        </div>
                      </div><br>
                       <div class="form-group">
                            <label class="control-label col-sm-3" for="category">Category:</label>
                            <div class="col-sm-8">
                            <select class="form-control" id="category" name="category" required>
                              <option>Shopping Malls</option>
                              <option>Colleges</option>
                              <option>School</option>
                              <option>Hospital</option>
                               <option>BANK</option>
                                <option>ATM</option>
                                 <option>COMPANY</option>
                            </select>
                            </div>
                    </div><br>
                    <div class="form-group">
                      <label class="control-label col-sm-3" for="email">Email:</label>
                      <div class="col-sm-8">
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" required>
                      </div>
                    </div><br>
                      <div class="form-group">
                      <label class="control-label col-sm-3" for="pwd">Address:</label>
                      <div class="col-sm-8">          
                        <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" required>
                      </div>
                    </div><br>
                         <div class="form-group">
                      <label class="control-label col-sm-3" for="city">City:</label>
                      <div class="col-sm-8">          
                        <input type="text" class="form-control" id="city" placeholder="Enter city" name="city" required>
                      </div>
                    </div><br>
                    <div class="form-group">
                      <label class="control-label col-sm-3" for="email">Contact Number:</label>
                      <div class="col-sm-8">
                        <input type="number" class="form-control" id="contact" placeholder="Enter Contact no"   title="number should be enter in 10 digits" name="contact" required>
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