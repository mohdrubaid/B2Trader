﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html lang="en" class="light-style  customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="../Loginassets/" data-template="vertical-menu-template-free">

<head  runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Admin Login - Pages | B2Traders</title>

    <meta name="description" content="Achieve new heights of SUCCESS in life Start your on BUSINESS" />
    <meta name="keywords" content="vdesk, business vdesk, login ">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/">

   <link rel="icon" type="image/x-icon" href="../Loginassets/img/logo/favicon.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../Loginassets/vendor/fonts/boxicons.css" />



    <!-- Core CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../Loginassets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../Loginassets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

     <link rel="stylesheet" href="../Loginassets/vendor/css/pages/page-auth.css">
    <!-- Helpers -->
    <script src="../Loginassets/vendor/js/helpers.js"></script>
     <script src="../Loginassets/js/config.js"></script>
      <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
     

</head>
<body id="top" data-theme-color="color-yellow" style="background-image:url(../bg.jpg); background-size:cover; background-position:center" >
    <form id="form1" runat="server">
   <!-- Content -->

    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card">
                     <div class="card-body" style=" -webkit-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); -moz-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); box-shadow: 0px 0px 10px 5px #000000;">
                       <!-- Logo -->
                        <div class="app-brand justify-content-center">
                            <a href="../index.html" class="app-brand-link gap-2">
                                <span class="app-brand-logo demo ">

                                   <img src="../Loginassets/img/logo/logo.png" style="width:150px !important" />

                                </span>
                                <%--<span class="app-brand-text demo text-body fw-bolder">Sneat</span>--%>
                            </a>
                        </div>
                        <!-- /Logo -->
                        <h4 class="mb-2">Welcome to B2Traders ADMIN !</h4>

                        <div id="formAuthentication" class="mb-3" ">
                            <div class="mb-3">
                                <label for="email" class="form-label">Admin Username</label>
                                 <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter your Admin username"></asp:TextBox>
                            </div>
                            <div class="mb-3 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Password</label>
                                    
                                </div>
                                <div class="input-group input-group-merge">
                                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="*********"></asp:TextBox>
                                </div>
                            </div>
                           
                             <asp:Label ID="lbmsg" Text="" CssClass="label label-danger" runat="server"></asp:Label>
                
                            <div class="mb-3">
                                 <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-primary d-grid w-100" OnClick="btnLogin_Click"   Text="LogIn" />
                           
                               
                            </div>
                        </div>

                       
                    </div>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>

    <!-- / Content -->
 <div class="buy-now">
        <a href="../login.aspx" target="_blank" class="btn btn-info btn-buy-now">User Login</a>
    </div>

          </form>
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../Loginassets/vendor/libs/jquery/jquery.js"></script>
    <script src="../Loginassets/vendor/libs/popper/popper.js"></script>
    <script src="../Loginassets/vendor/js/bootstrap.js"></script>
    <script src="../Loginassets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../Loginassets/vendor/js/menu.js"></script>
    <!-- endbuild -->
    <!-- Vendors JS -->
    <!-- Main JS -->
    <script src="../Loginassets/js/main.js"></script>

    <!-- Page JS -->
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="../../../buttons.github.io/buttons.js"></script>
  
   
</body>
</html>
