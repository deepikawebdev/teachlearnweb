<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="USky.WebApp.Default" %>
<%@ Register Src="Controls/HeaderOutside-K12.ascx" TagName="HeaderOutsidek12" TagPrefix="uc1" %>
<%@ Register Src="Controls/FooterOutside-K12.ascx" TagName="FooterOutsidek12" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>USky K-12 Landing Page</title>
    <!-- Bootstrap -->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/material-icons.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Rancho" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
    
    <script src="js/jquery.min.js" type="text/javascript"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<style>
	    
	    .header img
	    {
	        height:60px;
	    }
	    .banner .image-sec
	    {
	        background-image: url('Images/verticalline.png');
             background-position: right;
             background-repeat: no-repeat;
             
	    }
	    
	    .btn1, .btn2
	    {
	        border-radius:50px;
	        border:none;
	    }
	    
	    
	    .header
	    {
	        background-image: url('Images/hline.png');
             background-position: bottom;
             background-repeat: no-repeat;
             background:#002749;
	    }
	    
	    .banner .search-sec
	    {
	        padding-top:5px;
	    }
	    
	    .banner .search-sec h2
	    {
	        font-size:40px;
	        
	    }
	    .banner .search-sec h2 span
	    {
	        color:#2196f3;
	    }
		.artifacts .tab-content .home-caption
		{
			background:none !important;
		}
		
		.artifacts .tab-content
		{
			border:none;
		}
		
		.tab-box
		{
			border: 1px solid #bdbdbd;
		}
		
		.home-caption-top
		{
			border-top: 1px solid #bdbdbd;
		}
		
		.banner .search-sec .input-group-addon .btn
		{
		    background:none !important;
		    margin:0 !important;
		    padding:0 !important;
		}
		
		.banner .image-sec img
		{
		    margin-top:-40px;
		}
		
		.banner .search-sec h2
		{
		    margin-top:30px;
		    margin-bottom:20px;
		}
		.banner .search-sec h4
		{
		    color:#000;
		    font-size:14px;
		    margin-top:20px;
		}
		
		.banner .search-sec .form-control
		{
		    border:1px solid #777;
		}
		
		.banner .search-sec .input-group-addon
		{
		    background:#2196f3;
		    color:#fff;
		    border:1px solid #777;
		    border-left:none;   
		}
		
		.artifacts .nav-tabs li a span
		{
		    font-size:20px;
		     margin-top: 3px;		    
		     text-transform:none;
		     
		}
		
		.carousel
		{
		    height:360px;
		}
		.carousel-control.right, .carousel-control.left
		{
		    background-image:none;
		}
		
		.carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
		{
		    margin-left:-30px;    
		    font-size:15px;
		}
		.carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
		{
		    margin-right:-30px;
		    font-size:15px;
		}
		
		.carousel-control
		{
		    opacity: 0.15;
		    font-size: 15px;
		    color: #222;
		}
		
		.carousel-indicators
		{
		    bottom:0px;
		}
		
		.artifacts
		{
		    background:none;
		    margin-top:-70px;
		}
		
		.tab-box
		{
		    background:#f2f2f2;
		}
		
		.nav-tabs > li
		{
		    margin-bottom:5px;
		    padding:5px;    
		}
	
	    .artifacts .nav-tabs li a
	    {
	        border:1px solid #c5c5c5;
	    }
	    
	    .artifacts .nav-tabs li a:hover
	    {
	        background:#d5d5d5;
	    }
	    .artifacts .nav-tabs .active a:hover
	    {
	        border:1px solid #0c7cd5;
	        background:#0c7cd5;
	    }
	    
	    .artifacts .nav-tabs li:last-child a
	    {
	        border-right:1px solid #c5c5c5;
	    }
	    
	    .artifacts .nav-tabs li a img
	    {
	        height:35px;
	        width:35px;
	    }
	    
	    .artifacts .nav-tabs .active a
	    {
	        border:1px solid #0c7cd5;
	        background:#0c7cd5;
	    }
	    
	    .artifacts .nav-tabs .active:after
	    {
	        content: '';
            position: absolute;
            left: 40%;
            top: 60px;
            width: 0;
            height: 0;
            border-left: 20px solid transparent;
            border-right: 20px solid transparent;
            border-top: 10px solid #0c7cd5;
            clear: both;
            
            
	    }
	
	</style>


    <style>

.btn-select {
    position: relative;
    padding: 0;
    max-width: 300px;
    width: 100%;
    border-radius: 0;
    margin-bottom: 10px;
    height:42px;
    border-radius:2px;
}

.btn-select .btn-select-value {
    padding: 10px 12px;
    display: block;
    position: absolute;
    left: 0;
    right: 34px;
    text-align: left;
    text-overflow: ellipsis;
    overflow: hidden;
    border-top: none !important;
    border-bottom: none !important;
    border-left: none !important;
    border-radius: 2px 0 0 2px;
}

.btn-select .btn-select-arrow {
    float: right;
    line-height: 20px;
    padding: 10px 10px;
    top: 0;
}

.btn-select ul {
    display: none;
    background-color: white;
    color: black;
    clear: both;
    list-style: none;
    padding: 0;
    margin: 0;
    border-top: none !important;
    position: absolute;
    left: -1px;
    right: -1px;
    top: 33px;
    z-index: 999;
}

.btn-select ul li {
    padding: 3px 6px;
    text-align: left;
}

.btn-select ul li:hover {
    background-color: #f4f4f4;
}

.btn-select ul li.selected {
    color: white;
}

/* Default Start */
.btn-select.btn-default:hover, .btn-select.btn-default:active, .btn-select.btn-default.active {
    border-color: #ccc;
}

.btn-select.btn-default ul li.selected {
    background-color: #ccc;
}

.btn-select.btn-default ul, .btn-select.btn-default .btn-select-value {
    background-color: white;
    border: #ccc 1px solid;
}

.btn-select.btn-default:hover, .btn-select.btn-default.active {
    background-color: #e6e6e6;
}
/* Default End */

/* Primary Start */
.btn-select.btn-primary:hover, .btn-select.btn-primary:active, .btn-select.btn-primary.active {
    border-color: #286090;
}

.btn-select.btn-primary ul li.selected {
    background-color: #2e6da4;
    color: white;
}

.btn-select.btn-primary ul {
    border: #2e6da4 1px solid;
}

.btn-select.btn-primary .btn-select-value {
    background-color: #428bca;
    border: #2e6da4 1px solid;
}

.btn-select.btn-primary:hover, .btn-select.btn-primary.active {
    background-color: #286090;
}
/* Primary End */

/* Success Start */
.btn-select.btn-success:hover, .btn-select.btn-success:active, .btn-select.btn-success.active {
    border-color: #4cae4c;
}

.btn-select.btn-success ul li.selected {
    background-color: #4cae4c;
    color: white;
}

.btn-select.btn-success ul {
    border: #4cae4c 1px solid;
}

.btn-select.btn-success .btn-select-value {
    background-color: #5cb85c;
    border: #4cae4c 1px solid;
}

.btn-select.btn-success:hover, .btn-select.btn-success.active {
    background-color: #449d44;
}
/* Success End */

/* info Start */
.btn-select.btn-info:hover, .btn-select.btn-info:active, .btn-select.btn-info.active {
    border-color: #46b8da;
}

.btn-select.btn-info ul li.selected {
    background-color: #46b8da;
    color: white;
}

.btn-select.btn-info ul {
    border: #46b8da 1px solid;
}

.btn-select.btn-info .btn-select-value {
    background-color: #5bc0de;
    border: #46b8da 1px solid;
}

.btn-select.btn-info:hover, .btn-select.btn-info.active {
    background-color: #269abc;
}
/* info End */

/* warning Start */
.btn-select.btn-warning:hover, .btn-select.btn-warning:active, .btn-select.btn-warning.active {
    border-color: #eea236;
}

.btn-select.btn-warning ul li.selected {
    background-color: #eea236;
    color: white;
}

.btn-select.btn-warning ul {
    border: #eea236 1px solid;
}

.btn-select.btn-warning .btn-select-value {
    background-color: #f0ad4e;
    border: #eea236 1px solid;
}

.btn-select.btn-warning:hover, .btn-select.btn-warning.active {
    background-color: #d58512;
}
/* warning End */

/* danger Start */
.btn-select.btn-danger:hover, .btn-select.btn-danger:active, .btn-select.btn-danger.active {
    border-color: #d43f3a;
}

.btn-select.btn-danger ul li.selected {
    background-color: #d43f3a;
    color: white;
}

.btn-select.btn-danger ul {
    border: #d43f3a 1px solid;
}

.btn-select.btn-danger .btn-select-value {
    background-color: #d9534f;
    border: #d43f3a 1px solid;
}

.btn-select.btn-danger:hover, .btn-select.btn-danger.active {
    background-color: #c9302c;
}
/* danger End */

.btn-select.btn-select-light .btn-select-value {
    background-color: white;
    color: black;
}

.curriculum
{
   margin-top:30px;
   
}

.curriculum .cols
{
    padding:2px;
    margin:0px;
}

.btn-go
{
    border-radius:0px;
    min-width:150px;
    border-radius:50px;
}


    </style>
  </head>
  <body>
  <div class="fullHeightWrap">
    <!--~~~~~~~~~~~~~~~~~~~~~~ header ~~~~~~~~~~~~~~~~~~~~~~-->

    <asp:PlaceHolder ID="phHome" runat="server">
            </asp:PlaceHolder>


    <uc1:HeaderOutsidek12 ID="HeaderOutsidek121" runat="server" />
    <!-- banner -->


    <!-- banner -->
    <section class="banner">
      <div class="banner-wrap">
        <div class="container">
          <div class="row">
            <div class="col-md-7 col-sm-6 hidden-xs image-sec">
              <img class="img-responsive center-block" src="images/home-banner.png"/>
            </div>
            <div class="col-md-5 col-sm-6 search-sec">
              <h2><span><span>Free</span> K-12 education resources</span></h2>
			  
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">

                  

                  <input  class="form-control" id="txtSearch" placeholder="Enter Keyword to Search">
                  
                  <a  id="aSearch" href="#" class="input-group-addon"> Search</a>
                  </div>
                  <%--<a class="adv-search" href="#">Advanced Search</a>--%>
                </div>
              </div>

              <h4>The largest Education search engine for the Indian school system</h4>
              <div class="curriculum">
                <br />
                <%--<a href="K12/Curriculum/Default.aspx" class="btn btn-sm btn1"><img src="Images/curriculums.png" style="margin-left:-5px; margin-top:0;" /> Show Curriculums</a>--%>

                <div class="col-md-12 col-sm-3 cols">
                    
                    <a class="btn btn-danger btn-select">
                        <input type="hidden" class="btn-select-input" id="" name="" value="" />
                        <span class="btn-select-value">Select Curriculum</span>
                        <span class='btn-select-arrow glyphicon glyphicon-chevron-down'></span>
                        <ul>
                            <li>CBSE</li>
                            <li>ICSE</li>
                            <li>SSC - Andhra Pradesh</li>
                            <li>SSC - Telangana</li>
                            <li>SSC - Maharastra</li>
                            <li>SSC - Jharkhand</li>
                        </ul>
                    </a>

                    <a class="btn btn-info btn-select">
                        <input type="hidden" class="btn-select-input" id="Hidden1" name="" value="" />
                        <span class="btn-select-value"> Select Class</span>
                        <span class='btn-select-arrow glyphicon glyphicon-chevron-down'></span>
                        <ul>
                            <li>Class 1</li>
                            <li>Class 2</li>
                            <li>Class 3</li>
                            <li>Class 4</li>
                            <li>Class 5</li>
                            <li>Class 6</li>
                            <li>Class 7</li>
                            <li>Class 8</li>
                            <li>Class 9</li>
                            <li>Class 10</li>
                            
                        </ul>
                    </a>
                    <br />
                    <a href="K12/Curriculum/Default.aspx" class="btn btn-primary btn-go btn-lg ">Go</a>

                </div>

                <div class="col-md-5 col-sm-3 cols">
                    
                    
                </div>




                <div class="col-md-1 cols">
                    
                </div>

              </div>
              
            </div>
            <div class="col-md-6 visible-xs image-sec">
              <img src="images/home-banner.png"/>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
<!--~~~~~~~~~~~~~~~~~~~~~~ Artifacts ~~~~~~~~~~~~~~~~~~~~~~-->

    <section class="artifacts">
      <div class="container">
        <div class="row">
          <!--~~~~~~~~~~~~~ Nav tabs ~~~~~~~~~~~~~-->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active">
              <a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">
                <img src="images/government.png" />
                <span class="hidden-xs">Government 
                  </span>
              </a>
            </li>

            <li role="presentation">
              <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">
                <img src="images/institute.png" />
                <span class="hidden-xs">Schools
                  </span>
              </a>
            </li>

            <li role="presentation">
              <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">
                <img src="images/teacher.png" />
                <span class="hidden-xs">Teachers
              </a>
            </li>

            <li role="presentation">
              <a href="#home" aria-controls="home" role="tab" data-toggle="tab">
                <img src="images/student.png" />
                <span class="hidden-xs">Students
                  
                </span>
              </a>
            </li>
            
            
            
          </ul>

          <!--~~~~~~~~~~~~~ Tab panes ~~~~~~~~~~~~~-->
		  
		  
          <div class="tab-content">
            <%--<div role="tabpane0" class="tab-pane active" id="home22">
              <div class="container-fluid">
                <div class="row home-caption-top">
                  <div class="col-md-12 col-sm-12 text-center">
                    <div class="home-caption">
                      <h1>The best things in life are free,</h1>
                      <h3>Love, friendship, kindness, smile, air, sun light, moon and stars </h3>
                      <h2>- shouldn’t education be free?</h2>
                      <br />
                      <br />
                      <p class="text-justify">
                        Students are our precious resource for future global leadership. Access to learning is a human right. Universe Sky – www.u-sky.in or www.usky.in is a FREE education content and data services company. It is a distribution platform for students and content creators to inform, connect, collaborate, share, learn and earn. 
                        
                      </p>

                      <p  class="text-justify">
                        U-Sky is a collection of millions of students and educators who come together to share resources. U-Sky is a growing compilation of over 0.4 million (4 lakh) Curated, peer reviewed education material comprising of different categories and sub-categories and products in different formats. You can search or browse the learning material on U-Sky. You can create your own library, form groups, collaborate and communicate. We believe in the sharing economy, we believe reusable educational content and resources should be shared. All resources on U-sky are FREE to individual users..
                      </p>

                      <a class="btn btn-primary btn-sm" href="about.aspx">Read more...</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>--%>

            <div role="tabpanel" class="tab-pane " id="home">
              <div class="container-fluid">
                <div class="row tab-box">
                  <div class="col-md-3 col-sm-4">
                    <div class="description">
                      <img src="images/students.jpg" class="img-responsive" />
                      <h3>Students</h3>
                      <p>Over 1 crore students across India have been provided free curriculum aligned Digital Education Resource platform in multiple formats, multiple languages in different grades with multiple subjects for all students across India.</p>
                    </div>
                  </div>
                  <div class="col-md-9 col-sm-8 artifact-items">
                    <div class="row all-border4">
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/curriculum.png" />
                                <h4>Curriculum Aligned Resources</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-lib.png" />
                                <h4>My Library</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-group.png" />
                                <h4>My Groups</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-upload.png" />
                                <h4>My Uploads</h4>
                              </a>
                            </div>
                          </div>
                        </div>


                    
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/plp.png" />                                
                                <h4>Personalized Learning Plan</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/dt-test.png" />
                                <h4>Learning Skills Diagnostic Test Assessments</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-reports.png" />
                                <h4>Reports</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">
              <div class="container-fluid">
                <div class="row tab-box">
                  <div class="col-md-3 col-sm-4">
                    <div class="description">
                      <img src="images/teachers.jpg" class="img-responsive" />
                      <h3>Teachers</h3>
                      <p>Over 24000 Teachers have uploaded educational resources on the U-Sky portal. U-Sky currently supports over 4 lakh Teachers providing a unique platform for Teachers to UPLOAD education resources, Professional Training, Personalized Learning Plan, Data Analytics and more to enhance quality teaching</p>
                    </div>
                  </div>
                  <div class="col-md-9 col-sm-8 artifact-items">
                    <div class="row all-border3">
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/curriculum.png" />
                                <h4>Curriculum Aligned Resources</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-lib.png" />
                                <h4>My Library</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-group.png" />
                                <h4>My Groups</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-upload.png" />
                                <h4>My Uploads</h4>
                              </a>
                            </div>
                          </div>
                        </div>


                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/student-zone.png" />
                                <h4>Student Zone</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-reports.png" />
                                <h4>Reports</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                       
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="messages">
              <div class="container-fluid">
                <div class="row  tab-box">
                  <div class="col-md-3 col-sm-4">
                    <div class="description">
                      <img src="images/institute.jpg" class="img-responsive" />
                      <h3>Schools</h3>
                      <p>U-Sky provides Digital multimedia content platform to over 2000 private schools covering 30,000 Teachers and 8 Lakhs Students through both Online and Offline</p>
                    </div>
                  </div>
                  <div class="col-md-9 col-sm-8 artifact-items">
                    <div class="row all-border3">
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/curriculum.png" />
                                <h4>Curriculum Aligned Resources</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-lib.png" />
                                <h4>My Library</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-group.png" />
                                <h4>My Groups</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-upload.png" />
                                <h4>My Uploads</h4>
                              </a>
                            </div>
                          </div>
                        </div>

                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/analytics.png" />
                                <h4>Data Analytics</h4>
                              </a>
                            </div>
                          </div>
                        </div>

                        <div class="col-md-4 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/value-added-services.png" />
                                <h4>Value Added Services</h4>
                              </a>
                            </div>
                          </div>
                        </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div role="tabpanel" class="tab-pane active" id="settings">
              <div class="container-fluid">
                <div class="row  tab-box">
                  <div class="col-md-3 col-sm-4">
                    <div class="description">
                      


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="Images/g-1.jpg" alt="Los Angeles">
      <h4>NRI Schools Project</h4>
      <b>Smart Classroom Project</b>
      <p>U-Sky has implimented in 5000 schools across Andhra Pradesh Phase-I and Phase-II</p>
      
    </div>

    <div class="item ">
      <img src="Images/g-1.jpg" alt="Los Angeles">
      <h4>Digital Classroom Project</h4>
      
      <p>U-Sky has implimented multimedia content and Analytics platforms via Akashvidya.in and apakx.in portals across 39000 government schools both online and offline.</p>
      
    </div>

    <div class="item">
      <img src="Images/g-1.jpg" alt="Los Angeles">
      <h4>Kasturba Gandhi Balika Vidyalaya (KGBV) schools</h4><br />
      
      <p>U-Sky is implimenting multimedia content platform for virtual classroom project in 350 schools</p>
      
    </div>

    <div class="item ">
      <img src="Images/g-4.jpg" alt="New York">
      <h4>Vizianagaram</h4>
      <b>Smart Classroom Project</b>
      
      <p>Schools adopted by <b>Shri. Ashok Gajapathi Raju, Minister for Civil Aviation</b> (MPLAD funds) in 46 schools of Vizianagaram District.</p>
      
    </div>

    <div class="item ">
      <img src="Images/g-6.jpg" alt="New York"><br />
      <b>IL&FS - Google Classroom project in GVMC HIGH SCHOOLS OF VISAKHAPATNAM, VIJAYAWADA and NELLORE</b><br />
      
      
      <p>U-Sky is implimenting Smart Classroom multimedia content in Government Schools</p>
      
    </div>

    <div class="item ">
      <img src="Images/g-5.jpg" alt="Los Angeles">
      <h4>TSWREIS</h4>
      <b>Digital Classroom Project</b>
      
      <p>U-Sky is implimenting Digital Classroom multimedia content and Data Analytics solutions across Social Welfare and Tribal Schools</p>
      <br />
     
      
    </div>



    <div class="item">
     <img src="Images/g-2.jpg" alt="Los Angeles">
      <h4>Kendriya Vidyalaya</h4><br />
      <p class="text-left">U-Sky provided the following solutions</p>
      <ul class="text-left">
        <li>Multimedia content Platform</li>
        <li>Data Analytics</li>
        <li>Diagnostic Test</li>
        <li>Vidyalaya Plan</li>
      </ul>
    </div>

    <div class="item">
      <img src="Images/g-3.jpg" alt="New York">
      <h4>ERNET India</h4>
      <b>Central government Project</b><br />
      <p>Implimented Smart Classroom Project for ERNET across Andhra Pradesh</p>
      <br /><br /><br /><br /><br />
    </div>


  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>







                    </div>
                  </div>
                  <div class="col-md-9 col-sm-8 artifact-items">
                    <div class="row all-border4">
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/curriculum.png" />
                                <h4>Curriculum Aligned Resources</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-lib.png" />
                                <h4>My Library</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-group.png" />
                                <h4>My Groups</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/my-upload.png" />
                                <h4>My Uploads</h4>
                              </a>
                            </div>
                          </div>
                        </div>




                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/portal.png" />
                                <h4>Portal <br /><small>(Co-Branding)</small></h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/analytics.png" />
                                <h4>Data Analytics</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/dcr.png" />
                                <h4>Digital Classroom</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                          <div class="box">
                            <div class="inner-box">
                              <a href="#">
                                <img src="img/training-modules.png" />
                                <h4>Training Modules</h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<!--~~~~~~~~~~~~~~~~~~~~~~ Resources Count ~~~~~~~~~~~~~~~~~~~~~~-->
  
  <section class="count">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-6">
          <img src="images/video.png">
          <h3>70,000 <br><span>Videos & Animations</span></h3>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <img src="images/presentation.png">
          <h3>30,000 <br><span>Presentations</span></h3>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <img src="images/classnotes.png">
          <h3>43,000 <br><span>Class Notes</span></h3>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <img src="images/worksheets.png">
          <h3>3,00,000 <br><span>Worksheets</span></h3>
        </div>
      </div>
    </div>
  </section>

<!--~~~~~~~~~~~~~~~~~~~~~~ Contact ~~~~~~~~~~~~~~~~~~~~~~-->
  <section class="contact">
    <div class="container">
      <h3>Get in touch</h3>
      <div class="row">
        <div class="col-md-4 col-sm-4">
          <p><b>Visakhapatnam</b></p>
          <p>
            8-4-56, Plot No.23, Ground Floor<br>
            Prasanthi Nagar, Peda Waltair,<br>
            Visakhapatnam 530017, India.<br>
          </p>
          <p>Phone: +91 8008525252</p>
        </div>
        <div class="col-md-4 col-sm-4">
          <p><b>Hyderabad</b></p>
          <p>
            Plot No: 68, Krishna Sarada Residency,<br>
            Near Sujana Forum Mall, KPHB 9th Phase,<br>
            Hyderabad 500072, India. <br>
          </p>
          <p>Phone: 040-40110114</p>
        </div>
        <div class="col-md-4 col-sm-4">
          
        </div>
      </div>
    </div>
  </section>

<!--~~~~~~~~~~~~~~~~~~~~~~ Footer ~~~~~~~~~~~~~~~~~~~~~~-->

    <uc2:FooterOutsidek12 ID="FooterOutsidek1" runat="server" />



  <script>
      $(document).ready(function () {
          $('.nav-tabs li').click(function (e) {
              $('html, body').animate({
                  scrollTop: $('.artifacts').offset().top - 0
              }, 'slow');
          });


          $("#txtSearch").on("keypress", function (event) {
              if (event.which == 13) {
                  GetSearchItems();
              }
          });

          $("#aSearch").on("click", function (event) {
              GetSearchItems();
          });

      });


      var specialKeys = new Array();
      specialKeys.push(8); //Backspace
      specialKeys.push(9); //Tab
      specialKeys.push(46); //Delete
      specialKeys.push(36); //Home
      specialKeys.push(35); //End
      specialKeys.push(37); //Left
      specialKeys.push(39); //Right
      specialKeys.push(13); //Enter

      function IsAlphaNumeric(e) {
          var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
          var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (specialKeys.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
          return ret;
      }

      function GetSearchItems() {
          var textSearch = document.getElementById("txtSearch").value;
          window.parent.location.href = "Search/SearchResults.aspx?Text=" + encodeURIComponent(textSearch);
      }

  </script>


  <script>
      $(document).ready(function () {
          $(".btn-select").each(function (e) {
              var value = $(this).find("ul li.selected").html();
              if (value != undefined) {
                  $(this).find(".btn-select-input").val(value);
                  $(this).find(".btn-select-value").html(value);
              }
          });
      });

      $(document).on('click', '.btn-select', function (e) {
          e.preventDefault();
          var ul = $(this).find("ul");
          if ($(this).hasClass("active")) {
              if (ul.find("li").is(e.target)) {
                  var target = $(e.target);
                  target.addClass("selected").siblings().removeClass("selected");
                  var value = target.html();
                  $(this).find(".btn-select-input").val(value);
                  $(this).find(".btn-select-value").html(value);
              }
              ul.hide();
              $(this).removeClass("active");
          }
          else {
              $('.btn-select').not(this).each(function () {
                  $(this).removeClass("active").find("ul").hide();
              });
              ul.slideDown(300);
              $(this).addClass("active");
          }
      });

      $(document).on('click', function (e) {
          var target = $(e.target).closest(".btn-select");
          if (!target.length) {
              $(".btn-select").removeClass("active").find("ul").hide();
          }
      });

  </script>

          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  
    

  
  </body>
</html>