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
<title>Insert title here</title>
</head>
<body>
  <div class="header">
        <nav class="navbar navbar-inverse">
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
                  <li ><a href="postclassified.jsp">Home</a></li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><a href="postclassified.jsp"><span class="glyphicon glyphicon-user"></span>Post Classified</a></li>
                  
                </ul>
                    <ul class="nav navbar-nav">
                  <li><a href="deleteclassified.jsp"><span class="glyphicon glyphicon-user"></span>Delete Classified</a></li>
                  
                </ul>
                  <ul class="nav navbar-nav">
                  <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span>logout</a></li>
                  
                </ul>
              </div>
            </div>
      </nav>
  </div>
</body>
</html>