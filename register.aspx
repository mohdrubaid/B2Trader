<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html lang="en" class="light-style  customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="../Loginassets/" data-template="vertical-menu-template-free">

<head  runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Signup - Page | B2Traders</title>

    <meta name="description" content="Achieve new heights of success in life Start your own business." />
    <meta name="keywords" content="B2Traders, business B2Traders, login ">
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
     <script>
         function checksPassword(password) {


           <%--  var pattern = /^.*(?=.{8,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&!-_]).*$/;
             if (!pattern.test(password)) {
                 document.getElementById("<%=lbpass.ClientID%>").innerHTML = 'Enter minimum 8 chars with atleast 1 number, lower, upper char'
            } else {
                document.getElementById("<%=lbpass.ClientID%>").innerHTML = '';
             }--%>
         }
         function validatepassword() {
             var password = document.getElementById("<%=txtPassword.ClientID%>").value;

            <%--var pattern = /^.*(?=.{8,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&!-_]).*$/;
            if (!pattern.test(password)) {
                document.getElementById("<%=lbpass.ClientID%>").innerHTML = 'Enter minimum 8 chars with atleast 1 number, lower, upper char'
                return false;
            } else {
                document.getElementById("<%=lbpass.ClientID%>").innerHTML = '';
                
            }--%>

            if (document.getElementById("<%=txtPassword.ClientID%>").value != document.getElementById("<%=txtConfirmPassword.ClientID%>").value) {
                document.getElementById("<%=lbcpass.ClientID%>").innerHTML = 'ConfirmPassword did not match';
                return false;
            }
            else {
                document.getElementById("<%=lbcpass.ClientID%>").innerHTML = '';

             }
             return true;
         }
</script>
</head>

<body id="top" data-theme-color="color-yellow"  style="background-image:url(Loginassets/img/logo/bg.jpg); background-size:cover; background-position:center">
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
                            <a href="index.html" class="app-brand-link gap-2">
                                <span class="app-brand-logo demo ">

                                   <img src="Loginassets/img/logo/logo.png" style="width:150px !important" />

                                </span>
                                <%--<span class="app-brand-text demo text-body fw-bolder">Sneat</span>--%>
                            </a>
                        </div>
                        <!-- /Logo -->
                      <%--<h4 class="mb-2">Welcome to UPTO!  </h4>--%>
                        <p class="mb-4">Please sign-up to your account and start the adventure</p>
                      
                        <div id="formAuthentication" class="mb-3" ">
                                                <input type="hidden" id="hndsponser" runat="server" />
                                                <input type="hidden" id="hndsponsername" runat="server" />
                            <div class="mb-1 row">
                                 <div class="col-md-6">
                                      <label for="email" class="form-label">Sponsor ID</label>
                               <asp:TextBox ID="lbsponserid" ReadOnly="true"  required="" runat="server" class="form-control" ></asp:TextBox>
      
                                     </div>
                                 <div class="col-md-6">
                                      <label for="email" class="form-label">Sponsor Name</label>
                               <asp:TextBox ID="lbSponsermsg" ReadOnly="true"     required="" runat="server" class="form-control" ></asp:TextBox>

                       </div>
        </div>
                           
                            <asp:Label ID="msg" Text="" CssClass=" text-danger " runat="server"></asp:Label>

                             <div class="mb-1">
                                <label for="email" class="form-label">Full Name</label>
                                  <asp:TextBox ID="txtName"  required="" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>
                            </div>
                            
                             <div class="mb-1 mb-2">
                                <label for="email" class="form-label">Country</label>
                                    <asp:DropDownList ID="drpcountry"   class="form-control" runat="server" DataTextField="Country" DataValueField="CID" AutoPostBack="true" OnSelectedIndexChanged="drpcountry_SelectedIndexChanged">

                                     </asp:DropDownList>
                            </div>
                             <div class="mb-1 row">
                                 <div class="col-lg-3">
                                 <asp:TextBox ID="drpcode"   required=""  runat="server" class="form-control" Text="+1" ReadOnly="true"></asp:TextBox>
                                 </div>
                                  <div class="col-lg-9">
                                 <asp:TextBox ID="txtMobile"   onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;"  onkeyup="doKeyUpValidation(this)"   required="" MaxLength="10" runat="server" class="form-control" placeholder="Enter Mobile"></asp:TextBox>
         </div>
                            </div>
                             <asp:Label ID="lbmobileMsg" runat="server" Visible="false" CssClass=" text-warning"></asp:Label>
                           <div class="mb-1">
                                <label for="email" class="form-label">Email</label>
                                <asp:TextBox ID="txtemail" Type="Email"  required=""   runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                                 
                            </div>
                            <asp:Label ID="lbEmailMsg" runat="server" Visible="false" CssClass=" text-warning"></asp:Label>
                             
                           
                          <div class="mb-1 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Password</label>
                                    
                                </div>
                                <div class="input-group input-group-merge">
                                    <asp:TextBox ID="txtPassword" runat="server" onkeyup="checksPassword(this.value)" TextMode="Password" CssClass="form-control" placeholder="*********"></asp:TextBox>
                                     <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span> </div>
                                 <asp:Label ID="lbpass" Text="" CssClass="text-warning" runat="server"></asp:Label>
                            </div>
                            <div class="mb-1 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Confirm Password</label>
                                    
                                </div>
                                <div class="input-group input-group-merge">
                                    <asp:TextBox ID="txtConfirmPassword" TextMode="Password"  required=""  runat="server" class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                                <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                </div>
                                 <asp:Label ID="lbcpass" Text="" CssClass="text-warning" runat="server"></asp:Label>
                            </div>
                            
                            <asp:Label ID="lbmsg" Text="" CssClass="label label-danger" runat="server"></asp:Label>
                            <div class="mb-3">
                                 <asp:Button runat="server" ID="btnRegister" OnClientClick="return validatepassword();" OnClick="btnRegister_Click"  CssClass="btn btn-info d-grid w-100"  Text="Register" style=" background: radial-gradient(circle,rgba(70, 87, 171, 1) 37%, rgba(224, 52, 86, 0.29) 99%) !important;"/>
                          
                           
                               
                            </div>
                        </div>

                        <p class="text-center">
                            <span>Already on our B2Traders?</span>
                            <a href="login.aspx">
                                <span>Login an account</span>
                            </a>
                        </p>
                    </div>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>

    <!-- / Content -->
<%-- <div class="buy-now">
        <a href="index.html" target="_blank" class="btn btn-danger btn-buy-now">Back To V-DESK</a>
    </div>--%>
         <script type="text/javascript">
             function doKeyUpValidation(text) {
                 var validationRegex = /[0-9]/g;
                 if (!validationRegex.test(text.value)) {
                     text.value = '';
                     //alert('Please enter only numbers.');
                 }
             }
         </script>
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
