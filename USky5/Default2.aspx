<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="USky.WebApp.Default2" %>
<%@ Register src="Controls/BasicSearch.ascx" tagname="BasicSearch" tagprefix="uc1" %>
<%@ Register src="Controls/HeaderHome.ascx" tagname="HeaderHome" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>USky-Free Learning Resources</title>
     <meta name="viewport" content="width=device-width">
   
	<link rel="stylesheet" href="css/custom.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />	
	<link rel="stylesheet" href="css/login.css" type="text/css" /> 
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

 

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Bad+Script' rel='stylesheet' type='text/css'>


  
    <%--<script src="../js/login.js" type="text/javascript"></script> <!-- Gem jQuery -->--%>
    <%--<script src="../js/modernizr.js" type="text/javascript"></script> <!-- Modernizr --> --%>

  
    <%--<script src="~/js/bootstrap.js" type="text/javascript"></script>--%>
   

    

   
   <style>
       
      
      
    .popover
        {           
            
            color:#fff;
            border-radius:20px;
            t/ransition: all 0.5s ease-out;
            background-color:rgba(0,172,214,0.8);
            
        }
        
        .popover-title 
        {
            border-radius:20px 20px 0 0;            
            background-color: #00acd6 ;
            border-bottom:1px solid #f2f2f2;
            font-size:18px;
            font-weight:bold;
            
        }

        .popover.right .arrow:after {
            border-right-color: #00acd6 ;
        }
        
        .popover.left .arrow:after {
            border-left-color: #00acd6 ;
        }
   
   
   .popover.top .arrow:after {
        
        border-top-color: #00acd6 ;
    }
    
    .popover.bottom .arrow:after {
        
        border-bottom-color: #00acd6 ;
    }
   
    .u-wrapper .u-search h2
        {
            font-family: 'Bad Script', cursive;
            
            font-size: 40px;
            text-align: center;
            
            color:#555;
        }
        
        .u-wrapper .u-search h2 span
        {
            color:#e73827  !important;
        
        }
        </style>

</head>
<body>


  
    <div id="panel">

  <div class="box bulb">
    <div class="popcircle">
      <ul id="pops2">
        <li style="top: 25px;left: 388px;" data-toggle="popover" data-placement="left" data-content="Smart classrooms, content, assessments and teacher resources to increase enrollment and retention." title="Schools"><a href=""><img src="img/school-icon.png" ><br>
          Schools</a></li>
        <li style="top: 120px;left: 450px;" data-toggle="popover" data-placement="left" data-content="Teacher can use, share and contribute lessons." title="Teachers"><a href=""><img src="img/teacher.png"><br>
          Teacher</a></li>
        <li style="top: 239px;left: 465px;"  data-toggle="popover" data-placement="left" data-content="24/7 access to FREE Learning content by class, curriculum and subject on any portable device." title="Students"><a href=""><img src="img/student.png"><br>
          Students</a></li>
        <li style="top: 370px;left: 417px;"data-toggle="popover" data-placement="left" data-content="Partner with U-Sky to enhance your Revenues & Savings" title="Business"><a href=""><img src="img/business.png"><br>
          Business</a></li>
        <li style="top: 350px;left: 18.6618px;" data-toggle="popover" data-placement="right" data-content="Micro and Macro data to improve children outcomes." title="Analytics"><a href=""><img src="img/stats.png"><br>
          Analytics</a></li>
        <li style="top: 245px;left: -24px;" data-toggle="popover" data-placement="right" data-content="E-Learning resources for life and job related skills." title="Skillwise Tutorials"><a href=""><img src="img/skill.png"><br>
          Skillwise<br>
          Tutorials</a></li>
        <li style="top: 120px;left: -20px;"data-toggle="popover" data-placement="right" data-content="Largest practice material for all exams – higher education/careers." title="Exam Prep"><a href="ExamPrep/AdvancedSearch-EP.aspx"><img src="img/exam.png"><br>
          Exam Prep</a></li>
		  
		    <li style="top: 25px;left: 48px;"data-toggle="popover" data-placement="right" data-content="India’s biggest repository of supplemental education resources for all curriculums." title="K - 12 Content"><a href="Search/AdvancedSearch.aspx" ><img src="img/content.png"><br>
          K - 12 Content</a></li>
      </ul>
    </div>
  </div>
</div>





<div id="u-search">
<form id="form1" runat="server">
 <asp:ScriptManager ID="smMain" runat="server"></asp:ScriptManager>
  <div class="pull-right">
            
            <asp:PlaceHolder ID="phHome" runat="server">
            </asp:PlaceHolder>
    
            <%--<uc1:HeaderHome ID="HeaderHome1" runat="server" />--%>

    
  </div>
  <div class="u-wrapper ">
    <div class="u-search">
      <div class="row  n-margin">
        <div class="col-md-12">
            
            

         


          <h2><span><big>F</big>ree</span> education resources</h2>
          <div class="row">
            <div class="col-md-12 ">
              <uc1:BasicSearch ID="BasicSearch2" runat="server" />
            </div>
          </div>
          <div class="row advanced-block">
            <ul>
              <li><a href="Search/AdvancedSearch.aspx">
                <p class="icon-tag">Advanced Search</p>
                </a> </li>
                <%--<li>|</li>--%>
              <%--<li class="">
			  <a href='#'>
                <p class="icon-tag">Browse</p>
                </a> </li>--%>
             
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="homefooter  u-footer">
    <div class="row">
      <div class="col-md-5">
        <ul class="footer-links">
          <li>© U-Sky - All Rights Reserved</li>
        </ul>
      </div>
      <div class="col-md-7 text-right">
        <ul class="footer-links">
		<li><a href="about.aspx">About</a></li>
          <li><a href="Help/Contact.aspx">Contact</a></li>
          <li><a href="Help">Help</a></li>
          <%--<li><a href="#">Privacy Policy</a></li>--%>
        </ul>
      </div>
    </div>
  </div>
  </form>
</div>

<div class="us-features">
 <h2> Features</h2>
  <ul>
  <li><div class="icon">
         <a href=""><img src="img/content.png" ><br> K-12 Content </a>
	  </div>
	  
	  <div class="desc">
       India’s biggest repository of supplemental education resources for all curriculums.
	  </div>
		  
  </li>
     <li><div class="icon">
         <a href=""><img src="img/exam.png" ><br>Exam Prep</a>
	  </div>
	  
	  <div class="desc">
        Largest practice material for all exams – higher education/careers.
	  </div>
		  
  </li>
	  <li><div class="icon">
         <a href=""><img src="img/skill.png" ><br>  Skillwise Tutorials</a>
	  </div>
	  
	  <div class="desc">
        E-Learning resources for life and job related skills.
	  </div>
		  
  </li>
	  <li><div class="icon">
         <a href=""><img src="img/stats.png" ><br> Analytics</a>
	  </div>
	  
	  <div class="desc">
         Micro and Macro data to improve children outcomes.
	  </div>
		  
  </li>
  </ul>
  
  <h2> Benefits</h2>
 <ul>
  <li><div class="icon">
         <a href=""><img src="img/school-icon.png" ><br> Schools</a>
	  </div>
	  
	  <div class="desc">
        Smart classrooms, content, assessments and teacher resources to increase enrollment and retention
	  </div>
		  
  </li>
     <li><div class="icon">
         <a href=""><img src="img/teacher.png" ><br> Teachers</a>
	  </div>
	  
	  <div class="desc">
        Teacher can use, share and contribute lessons and earn.
	  </div>
		  
  </li>
	  <li><div class="icon">
         <a href=""><img src="img/student.png" ><br> Students</a>
	  </div>
	  
	  <div class="desc">
        24/7 access to FREE Learning content by class, curriculum and subject on any portable device.
	  </div>
		  
  </li>
	  <li><div class="icon">
         <a href=""><img src="img/business.png" ><br> Business</a>
	  </div>
	  
	  <div class="desc">
         Partner with U-Sky to enhance your Revenues & Savings
	  </div>
		  
  </li>
  </ul>
  </div>


<!-- Wrapper --> 



  
</body>



    <script>


        $(document).ready(function () {
            $('[data-toggle="popover"]').popover({
                trigger: 'hover'
            });
        });
    </script>

</html>
