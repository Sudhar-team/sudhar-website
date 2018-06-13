


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>
      
        Profile &middot; 
      
    </title>
    
    <style>
* {
    box-sizing: border-box;
}



.abc{
border-style: none;
}

/* Create two unequal columns that floats next to each other */
.column {
    float: left;
    padding: 10px;
    height: 600px;
    border-radius: 10px; /* Should be removed. Only for demonstration */
}

.left {
  width: 65%;
}

.right {
  width: 35%;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
</style>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <link href="css1/toolkit.css" rel="stylesheet">
    
    <link href="css1/application.css" rel="stylesheet">

    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>

  </head>


<body class="with-top-navbar">
  


<div class="growl" id="app-growl"></div>

<nav class="navbar navbar-toggleable-sm fixed-top navbar-inverse bg-primary app-navbar">
  <button
    class="navbar-toggler navbar-toggler-right hidden-md-up"
    type="button"
    data-toggle="collapse"
    data-target="#navbarResponsive"
    aria-controls="navbarResponsive"
    aria-expanded="false"
    aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <a class="navbar-brand" href="../index.html">
    <img src="img/brand-white.png" alt="brand">
  </a>

  <div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="../index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="../profile/index.html">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="modal" href="#msgModal">Messages</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../docs/index.html">Docs</a>
      </li>

      <li class="nav-item hidden-md-up">
        <a class="nav-link" href="../notifications/index.html">Notifications</a>
      </li>
      <li class="nav-item hidden-md-up">
        <a class="nav-link" data-action="growl">Growl</a>
      </li>
      <li class="nav-item hidden-md-up">
        <a class="nav-link" href="../login/index.html">Logout</a>
      </li>

    </ul>

    <form class="form-inline float-right hidden-sm-down">
      <input class="form-control" type="text" data-action="grow" placeholder="Search">
    </form>

    <ul id="#js-popoverContent" class="nav navbar-nav float-right mr-0 hidden-sm-down">
      <li class="nav-item">
        <a class="app-notifications nav-link" href="../notifications/index.html">
          <span class="icon icon-bell"></span>
        </a>
      </li>
      <li class="nav-item ml-2">
        <button class="btn btn-default navbar-btn navbar-btn-avatar" data-toggle="popover">
          <img class="rounded-circle" src="img/avatar-dhg.png">
        </button>
      </li>
    </ul>

    <ul class="nav navbar-nav hidden-xs-up" id="js-popoverContent">
      <li class="nav-item"><a class="nav-link" href="#" data-action="growl">Growl</a></li>
      <li class="nav-item"><a class="nav-link" href="../login/index.html">Logout</a></li>
    </ul>
  </div>
</nav>


<div class="profile-header" style="background-image: url(https://i.stack.imgur.com/wOWOi.jpg); background-size: cover;">
  <div class="container">
    <div class="container-inner">
      <img class="rounded-circle media-object" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSseK7B5LjfkYFidF6qchEccZPN8RzKMKAfdb9tuqWKQmBgDCyN">
      <h1 class="profile-header-user" style="font-size: 70px;" >PYTHON</h1>
      <p class="profile-header-bio">
      Scroll down to see the complete Description
      </p>
    </div>
  </div>

 
</div>
<div class="container pt-4" style="width: 90vw; background-color: #fff;">
<div class="row">
  <div class="col-lg-9" style="background-color:transparent;;">
    <center><h2  style="font-family: serif; font-size: 50px;">CONSULTANCY</h2>
    <p style="font-size:20px;">here are few consultacies for your reference</p></center>
     <hr>
     <hr>
     
     <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

	<%
	
	 Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sudhar","root","102938"); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from consultancy"); 
 %>	
     
    <%while(rs.next()){ %>
    
    <div class="card visible-md-block visible-lg-block mb-4 "  style="border-style:none;" >
        <div class="card-block" >
          <img  src="https://img.freepik.com/free-vector/connect-c-letter-logo-design-template_1156-1255.jpg?size=338&ext=jpg" style="height:190px; width:190px; float: left; border-radius: 20px;padding-left: 10px;padding-top: 10px;">
    	 
          <h2 class="mb-3"><%=rs.getString(1) %></h2>
          
 			<ul class:"list-group media-list media-list-stream mb-4 container">
 	        	<li >	    <i style="font-size:24px" class="fa">&#xf073;</i> 45days</li>
 				
 			    <li >		<i class="fa fa-money" aria-hidden="true" style="font-size: 24px;"></i>12000</li>
 			<button type="button" class="btn btn-lg btn-pill btn-info" style="float:right;">Info</button>
		    
 			</ul>
        </div>
      </div>

     <br>

    <%} %>





    
     <br>
    

     
     
     
  </div>
  <div class="col-lg-3" style="background-color:#F0F0F0 ;">
    <center>
    <br><h2 style="font-family:monospace;">PYTHON</h2>
    <p style="font-family: monospace;"><i style="font-size:24px" class="fa">&#xf10d;</i>&nbsp;&nbsp;Python is an interpreted high-level programming language for general-purpose programming. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace.<i style="font-size:24px" class="fa">&#xf10e;</i></p></center>
    <hr>
    <p> LIKES <i class="fa fa-thumbs-o-up" style="font-size:28px;color:blue;"></i>&nbsp;&nbsp;&nbsp;<b>( 154) </b></p> 
    <p>No of Consultancies:<b> 55 </b></p>
    <hr>
    <br>
    <ul class="media-list media-list-users list-group">
  <li class="list-group-item">
    <div class="media w-100">
      <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-fat.jpg">
      <div class="media-body align-self-center">
        <button class="btn btn-outline-primary btn-sm float-right">
          <span class="icon icon-add-user"></span> Like
        </button>
        <strong>DJANGO</strong>
        <small>See More</small>
      </div>
    </div>
  </li>
  <li class="list-group-item">
    <div class="media w-100">
      <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-dhg.png">
      <div class="media-body align-self-center">
        <button class="btn btn-outline-primary btn-sm float-right">
          <span class="icon icon-add-user"></span> Like
        </button>
        <strong>JAVA</strong>
        <small>See More</small>
      </div>
    </div>
  </li>
  <li class="list-group-item">
    <div class="media w-100">
      <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-mdo.png">
      <div class="media-body align-self-center">
        <button class="btn btn-outline-primary btn-sm float-right">
          <span class="icon icon-add-user"></span> Like
        </button>
        <strong>C Programming</strong>
        <small>See More</small>
      </div>
    </div>
  </li>
</ul>
     
  </div>
  <hr>
</div>
</div>


    <script src="js1/jquery.min.js"></script>    
    <script src="js1/tether.min.js"></script>
    <script src="js1/chart.js"></script>
    <script src="js1/toolkit.js"></script>
    <script src="js1/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){
        if (window.BS&&window.BS.loader&&window.BS.loader.length) {
          while(BS.loader.length){(BS.loader.pop())()}
        }
      })
    </script>
  </body>
</html>

