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
<title>Update Page</title>
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
                    <h2 class="title">Updation form</h2>
                    <form method="get" action="UpdateController">
                        <div class="row row-space">
                        	<div class="col-2">
                                <div class="input-group">
                                    <label id="lab">Current UID</label>
                                    <input class="input--style-4" type="text" name="curr_uid">
                                </div>
                            </div>  
                        	<div class="col-2">
                                <div class="input-group">
                                    <label id="lab">FirstName</label>
                                    <input class="input--style-4" type="text" name="fname">
                                </div>
                            </div>      
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">LastName</label>
                                    <input class="input--style-4" type="text" name="lname">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">UID</label>
                                    <input class="input--style-4" type="text" name="uid">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">Birthday</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="bday">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" value = "male" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" value = "female" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab">Phone Number</label>
                                    <input class="input--style-4" type="text" name="phone">
                                </div>
                            </div>
                            
                            <%!String s = null; %>
                            <%
   								 if(!session.isNew()){
    			       				s = (String)session.getAttribute("status");
    			       				if(s==null){
    			       					s="updation failed";
    			       				}
    						%>
                            <div class="col-2">
                                <div class="input-group">
                                    <label id="lab"><%out.println(s);%></label>
                                    <% } session.invalidate(); %>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        </div>
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