<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="topheader">
<%@ include file="header3.jsp"  %>
</div>
<div>
<%@include file="cookie.jsp" %>
</div>

<div class="bottom">
<%@ include file="footer.jsp"  %>
</div>



<div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="formpostclassified">
                <h1 style="text-align: center;color:blue;">POST CLASSIFIED</h1><hr>
                <form class="form-horizontal" action="posterspostclassifiedprocess.jsp" method="post">
                  <div class="form-group">
                            <label class="control-label col-sm-3" for="category">Select Category:</label>
                            <div class="col-sm-8">
                            <select class="form-control"  name="type" required>
                              <option>BUY</option>
                              <option>SELL</option>
                            </select>
                            </div>
                    </div><br>
                
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="name">Name:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control"  placeholder="Enter Name" name="name" pattern="[a-zA-Z][a-zA-Z ]{1,}" required>
                        </div>
                      </div><br>
                      <div class="form-group">
                     <label  class="control-label col-sm-3" for="description">Description</label>
                     <div class="shadow-textarea col-sm-8">
  					<textarea class="form-control z-depth-1" rows="10" placeholder="Write your description here..." name="description" required></textarea>
					</div>
                    </div><br>
                    
                    
                    <div class="form-group">        
                      <div class="col-sm-offset-3 col-sm-8">
                        <button type="submit" class="btn btn-primary btn-block">POST FEED</button>
                      </div>
                    </div>
                    <hr>
                </form>
                

            </div>

        </div>

    </div>



</body>
</html>