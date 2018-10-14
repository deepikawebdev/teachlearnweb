<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside.Master" AutoEventWireup="true"
    CodeBehind="about.aspx.cs" Inherits="USky.WebApp.about" %>

<%@ Register Src="Controls/BasicSearch.ascx" TagName="BasicSearch" TagPrefix="uc1" %>
<%@ Register Src="Controls/Help.ascx" TagName="Help" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .abt
        {
            margin: 30px 0px;
        }
        
        .abt .big h2
        {
            font-size: 25px;
            margin: 0px;
            line-height: 35px;
            text-align: center;
            margin-bottom:25px;
        }
        
        .abt p
        {
            text-align: justify;
            font-size: 18px;
            margin-bottom: 23px;
            line-height: 28px;
        }
        .abt img
        {
            width: 100%;
        }
        .abt ul
        {
            font-size: 18px;
            line-height: 30px;
            padding: 20px;
        }
        
        .abt span
        {
            color: #4285f4;
        }
        
        .r-count
        {
            padding: 30px; /*  border: solid 1px rgba(87, 149, 156, 0.24);*/
            margin-bottom: 20px; /* background: #5DC7D3;*/
            color: #fff;
        }
        
        .r-count h2
        {
            font-size: 35px;
            text-align: center;
        }
        .r-count p
        {
            font-size: 16px;
            text-align: center;
        }
        
        
        .r-count li
        {
            float: left;
            width: 24%;
            margin-right: 1%;
            list-style-type: none;
            background: #5DC7D3;
            padding: 10px;
            text-align: center;
            margin-bottom: 10px;
            border-radius: 3px;
            box-shadow: 0 0 3px 3px #e5e5e5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container-fluid db-title">
        <div class="row">
            <div class="col-md-7 db-heading">
                <h1>
                    <i class="fa fa-info-circle"></i> About Us</h1>
            </div>
            <div class="col-md-5 db-search">
                <uc1:BasicSearch ID="BasicSearch1" runat="server" />
            </div>
            
        </div>
    </div>
    <div class="container-fluid abt  ">
        <div class="row ">
            <div class="col-md-12 big">
                <h2>
                    “The best things in life are free,”
                    <br>
                    Love, friendship, kindness, smile, air, sun light, moon and stars
                    <br>
                    <span>- shouldn’t education be free?</span>
                </h2>
            </div>
        </div>
      
        <div class="row panel" style="margin-left: 0px;">
            <div class="container">
                <div class="col-md-12" style="font-size: 17px; margin-top: 20px">
                    <p>
                        Students are our precious resource for future global leadership. Access to learning
                        is a human right. Universe Sky – www.u-sky.in or www.usky.in is a FREE education
                        content and data services company. It is a distribution platform for students and
                        content creators to inform, connect, collaborate, share, learn and earn.
                    </p>
                    <p>
                        U-Sky is a collection of millions of students and educators who come together to
                        share resources. U-Sky is a growing compilation of over 0.4 million (4 lakh) Curated,
                        peer reviewed education material comprising of different categories and sub-categories
                        and products in different formats. You can search or browse the learning material
                        on U-Sky. You can create your own library, form groups, collaborate and communicate.
                        We believe in the sharing economy, we believe reusable educational content and resources
                        should be shared. All resources on U-sky are FREE to individual users..</p>
                    <p>
                        We understand personal and professional developments are lifelong pursuits, we are
                        providing a platform everywhere and at every stage of their life to learn and grow.
                        We understand that the learning and working eco-systems can only work by sharing,
                        collaborating and innovating..
                    </p>

                    <p>
                        U-Sky is a compilation of the following portals: <br />
                        <ol>
                            <li><b>K-12 Learning Content</b> for multiple curriculums in different languages</li>
                            <li><b>Exam Prep Resources </b> for Standardized Test (Higher education, careers, and other)</li>
                            <li><b>Skills based - Vocational /Career oriented /Life Skills courses</b> in the form of MOOCs</li>
                            <li><b>Analytics for the Education Eco-system</b> policy makers, schools, students and parents to make informed decisions.</li>
                        </ol>
                    </p>

                    <p>
                        We are a team of Academics, IT professionals, Data Scientists and Content Specialists, who passionately believe that sharing knowledge can make the world a better place. “Tiny drops of water make an ocean,” <b>contribute just one educational resource and help millions learn.</b>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="container">
                    <div class="col-md-10">
                        <h2>
                            Our Resources</h2>
                    </div>
                    <ul class="r-count">
                        <li>
                            <h2 class="counter">
                                70000</h2>
                            <p>
                                Videos & Animations
                            </p>
                        </li>
                        <li>
                            <h2 class="counter">
                                30000</h2>
                            <p>
                                Presentations
                            </p>
                        </li>
                        <li>
                            <h2 class="counter">
                                43000</h2>
                            <p>
                                Class Notes</p>
                        </li>
                        <li>
                            <h2 class="counter">
                                300000</h2>
                            <p>
                                Worksheets
                            </p>
                        </li>
                        <li>
                            <h2 class="counter">
                                7200000</h2>
                            <p>
                                Students
                            </p>
                        </li>
                        <li>
                            <h2 class="counter">
                                120000
                            </h2>
                            <p>
                                Teachers</p>
                        </li>
                        <li>
                            <h2 class="counter">
                                40000
                            </h2>
                            <p>
                                Schools</p>
                        </li>
                        <li>
                            <h2 class="counter">
                                6
                            </h2>
                            <p>
                                Govt. Projects</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        });
    </script>
</asp:Content>
