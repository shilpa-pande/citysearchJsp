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
<title>home page</title>
</head>
<body>
  <div class="header">
        <nav class="navbar navbar-inverse"><!---------------navbar started------------------->
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MyFirstWebsite</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="register.jsp">Home</a></li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>Registration</a></li>
                  
                </ul>
                    <ul class="nav navbar-nav">
                   <li><a data-toggle="modal" data-target="#loginModalV"><span class="glyphicon glyphicon-log-in"></span>Posters login</a></li>
                </ul>
                  <ul class="nav navbar-nav">
                 <li><a data-toggle="modal" data-target="#loginModalV"><span class="glyphicon glyphicon-log-in"></span>Post Classified</a></li>
                </ul>
                  <ul class="nav navbar-nav">
                  <li><a href="viewclassifiedforindex.jsp"><span class="glyphicon glyphicon-user"></span>View Classified</a></li>
                  
                </ul>
                    <ul class="nav navbar-nav">
                   <li><a data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span> Admin</a></li>
                </ul>
              </div>
            </div>
      </nav>
         <!---------------------- admin loginmodal started---------------------------------->
      <div class="loginmodal">
          <div id="loginModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"> &times;</button>
                    <h4 style="color: seagreen; text-align: center;">Login Admin</h4>
                </div>
                <div class="modal-body">
                       <form class="form-inline" action="adminprocess.jsp" method="post">
                       <div class="form-group">
                           <label class="sr-only" for="email">Admin Name</label>
                           <input type="text" class="form-control input-sm" placeholder=" Admin name" id="name" name="name" required>
                        </div><br><br>
                        <div class="form-group">  
                              <label class="sr-only" for="password">Password</label>
                              <input type="password" class="form-control input-sm" placeholder="Password" id="password" name="password" required>
                            </div><br><br>
                              <button type="submit" class="btn btn-info btn-xs">Sign in</button>
                              <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Cancel</button> 
                        
                       
                         
                   
                        </form>
                </div>
    
                <div class="modal-footer">
                    <div style="padding: 5px"></div>
                </div>
            </div>
            </div>
        </div>
        </div><!---------------------------admin login modal closed-------------------------------->
        <!-- --------------------posters login modal start------------------------ -->
         <div class="loginmodal">
          <div id="loginModalV" class="modal fade" role="dialog">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"> &times;</button>
                    <h4 style="color: seagreen; text-align: center;"> Posters Login</h4>
                </div>
                <div class="modal-body">
                       <form class="form-inline" action="postersloginprocess.jsp" method="post">
                       <div class="form-group">
                           <label class="sr-only" for="email">Email Id</label>
                           <input type="text" class="form-control input-sm" placeholder="email"  name="email" required>
                        </div><br><br>
                        <div class="form-group">  
                              <label class="sr-only" for="password">Password</label>
                              <input type="password" class="form-control input-sm" placeholder="Password"  name="password" required>
                            </div><br><br>
                              <button type="submit" class="btn btn-info btn-xs">Sign in</button>
                              <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Cancel</button> 
                        
                       
                         
                   
                        </form>
                </div>
    
                <div class="modal-footer">
                    <div style="padding: 5px"></div>
                </div>
            </div>
            </div>
        </div>
        </div><!---------------------------viewers login modal closed-------------------------------->
      
      
  </div>

</body>
</html>