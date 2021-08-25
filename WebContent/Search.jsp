<%@page import="java.util.Objects"%>
<%@page import="com.Model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#lab
{
	font-size:18px;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" media="all">
<!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="Style.css" rel="stylesheet" media="all">
    
<meta charset="ISO-8859-1">
<title>Search Page</title>
</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">| Crud Application</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Home.jsp">Home</a></li>
				<li class="active"><a href="Register.jsp">Register</a></li>
				<li><a href="Search.jsp">Search</a></li>
				<li><a href="update1.jsp">Update</a></li>
				<li><a href="Delete.jsp">Delete</a></li>
				<li><a href="Display.jsp">Display</a></li>				

			</ul>
		</div>
	</nav>
<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Search Form</h2>
                    <form method="get" action="SearchController">
                        <div class="row row-space">
                        	<div class="col-2">
                                <div class="input-group">
                                    <label id="lab">UID</label>
                                    <input class="input--style-4" type="text" name="uid">
                                </div>
                            </div>    
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit" >Submit</button>
                        </div><br><br><br>
                        <%!Register r = null; %>
                            <%
   								 if(!session.isNew()){
    			       				r = (Register)session.getAttribute("register");
    			       				if(!Objects.isNull(r)){
                        				out.println("<table align='center' border = 1>");
                        				out.println("<tr><th>ID</th><th>Firstname</th><th>Lastname</th><th>Birth Date</th><th>Gender</th><th>E-mail</th><th>Mobile No</th></tr>");
                        				out.println("<tr><td>"+r.getUid()+"</td><td>"+r.getFname()+"</td><td>"+r.getLname()+"</td><td>"+r.getBday()+"</td><td>"+r.getGender()+"</td><td>"+r.getEmail()+"</td><td>"+r.getMobno()+"</td></tr>");
                        				out.println("<table>");
    			       				}
    			       				else{ %>
    			       					<div class="col-2">
    	                                <div class="input-group">
    	                                    <label id="lab"><%out.println("account not found");%></label>
    	                                </div>
    	                            </div>
    	                            <% } session.invalidate();
    	                            }%>
    			       				
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
</body>
</html>