<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  

    <!-- content -->
    <div class="container">
       
        
        <input type="text" name="link" id="myInput" runat="server" value="" style="opacity: 0;">
          <div class="row">
        

       <div class="card custom-card5  ">
                      <div class="card-body text-center row">
                                <div class="col-lg-4 col-sm-12">
                                    <div class="row eth-id ">
                                        <div class="col-12 text-yellow text-text-info text-center">
                                           User ID : <h5 class="text-white fw-bold" > <%=SessionData.Get<string>("newuser") %></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8 col-sm-12">
                                    <div class="row eth-id ">
                                        <div class="col-12 text-yellow text-white text-center">
                                            <h5>Refferal Link:
                                            <a id="btnCopy1" style="cursor: pointer; color: rgba(255, 255, 255, 0.5); font-size: 14px;" title="Copy" class="text-whiteLight float-center mx-auto d-block text-center" onclick="myFunction('https://b2traders.uk/register.aspx?Sponsor=<%=SessionData.Get<string>("newuser") %>','btnCopy1')">
                                              <span style="background: transparent; border: none; color: #868686; font-size: 12px; width: 80%; display: inline-block; overflow: hidden;">https://b2traders.uk/register.aspx?Sponsor=<%=SessionData.Get<string>("newuser") %></span>
                                                <i class="fas fa-copy"></i>
                                            </a></h5>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                </div>
                           
         
            <div class="card custom-card5 ">
                <div class="card-body" style="padding:0px!Important">
                    <div class="row align-items-center">
                        
                        <div class="col-10" style="    padding: 10px;">
                           
                            <marquee onmouseover="this.stop()" onmouseout="this.start()">
                                <h5>
                                    <span style="color: #fff!important">
                                        <asp:Label ID="lbhead" Font-Bold="true" Font-Size="Larger" Font-Underline="false" runat="server"></asp:Label>
                                        : </span><a style="color: #fff!important">
                                            <asp:Label ID="lbnews" runat="server"></asp:Label>
                                        </a></h5>
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
  

                  <div class="card custom-card5 ">
                      <div class="card-body text-center">
                          <div class="mx-auto my-3">
                          <img src="<%=SessionData.Get<string>("Profilepic") %>" alt="Avatar Image" class="rounded-circle" style="height: 100px !important; width:100px !important"  />
                          </div>
                          <h4 class="mb-1 card-title text-white fw-bold"><%=SessionData.Get<string>("newuser") %></h4>
                          <span class="pb-1"><%=SessionData.Get<string>("name") %></span>

                             <div class="d-flex justify-content-between mb-4  align-items-center">
                          <div>
                              <span>Total Balance</span>
                              <h5> $ <asp:Label ID="lbbalance" runat="server" Text="0.00"></asp:Label></h5>
                           
                          </div>
                          <div class="ms-0 ms-md-3" >
                          <i class="fas fa-sync fs-20 rotate-hover"></i>
                              
                          </div>

                      </div>

                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#EB8153" />
                                  </svg>
                                  <span class="fs-14">Sponsor ID</span>
                              </div>
                              <div>
                                  <h5 class="mb-0">
                                      <asp:Label ID="lbSponsorId"  style="color:rgb(255, 165, 0) !important;" runat="server" Text="0"></asp:Label></h5>
                              </div>
                          </div>
                       
                        <%--  <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#71B945" />
                                  </svg>

                                  <span class="fs-14">Next Rank</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbrank2" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>
                          </div>--%>
                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#71B945" />
                                  </svg>

                                  <span class="fs-14">Phone No</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbContact" style="color:rgb(255, 165, 0) !important;" runat="server" Text="0"></asp:Label></h6>
                              </div>
                          </div>
                     

                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#EB8153" />
                                  </svg>
                                  <span class="fs-14">Activation Date</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbdoa" style="color:rgb(255, 165, 0) !important" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
                   <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#EB8153" />
                                  </svg>
                                  <span class="fs-14">Status</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbstatus" style="color:rgb(255, 165, 0) !important" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
                    <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  <svg class="me-2" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <rect width="10" height="10" rx="7.5" fill="#EB8153" />
                                  </svg>
                                  <span class="fs-14">Current Reward</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbRewardstaus" style="color:rgb(255, 165, 0) !important" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
                  

               <hr />

                      <div class="d-flex justify-content-between mb-4  align-items-center">
                          <div>
                              <h5> $ <asp:Label ID="lbinvest" runat="server" Text="0.00"></asp:Label></h5>
                              <span>Invested</span>
                              <div class="progress mt-2" style="height: 8px; width: 60px;">
                                  <div class="progress-bar bg-info" role="progressbar" style="width: 100%;" aria-valuenow="100"
                                      aria-valuemin="0" aria-valuemax="100">
                                  </div>
                              </div>
                          </div>
                          <div class="ms-0 ms-md-3">
                              <h5>$ <asp:Label ID="lbwithdrawapprove" runat="server" Text="0.00"></asp:Label></h5>
                              <span>Withdrawal</span>
                              <div class="progress mt-2" style="height: 8px; width: 60px;">
                                  <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100"
                                      aria-valuemin="0" aria-valuemax="100">
                                  </div>
                              </div>
                          </div>

                      </div>
                    
    </div>
                  </div>
                   

           
            

 

      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Direct Refer</br> Profit</p>
                        <h5 class="text-white text-center">
                             $ <asp:Label ID="lbdirect" runat="server" Text="0.00"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>

       
           <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Compound</br> Profit</p>
                      <h5 class="text-white text-center">
                            $ <asp:Label ID="lbcompound" runat="server" Text="0.00"></asp:Label>
                        </h5>
                    </div>
                </div>
            </a>
        </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Direct Profit</br> Sharing</p>
                       <h5 class="text-white text-center">
                            $ <asp:Label ID="lblevelroi" runat="server" Text="0.00"></asp:Label>
                        </h5>
                    </div>
                </div>
            </a>
        </div>
               
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Master Level</br> Profit</p>
                        <h5 class="text-white text-center">
                            $ <asp:Label ID="lblevelincome" runat="server" Text="0.00"></asp:Label>
                        </h5>
                     
                    </div>
                </div>
            </a>
        </div>

      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Weekly </br> Rewards</p>
                        <h5 class="text-white text-center">
                            $ <asp:Label ID="lbreward" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>
 <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Total </br> Income</p>
                        <h5 class="text-white text-center">
                            $ <asp:Label ID="lbTotalIncome" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>

     <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Fund </br>Deposit</p>
                        <h5 class="text-white text-center">
                            $ <asp:Label ID="lbdeposit" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>

    <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Available</br> Fund</p>
                        <h5 class="text-white text-center">
                            $ <asp:Label ID="lbAvailabledeposit" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>

     

    
<div class="col-xl-6 col-xxl-6 col-lg-6 col-sm-6 ">
						<div class="widget-stat card">
							<div class="card-body p-4">
								<div class="media ai-icon d-flex">
									<span class="me-3 bgl-primary text-primary">
										<!-- <i class="ti-user"></i> -->
										<img runat="server" src="usdt.png" class="icone"/>
									</span>
									<div class="media-body">
                                        <p class="mb-1   text-white mb-2">Direct Business</p>
										<h2 class="mb-0">$ <asp:Label ID="lbDirectBusiness" runat="server" Text="0"></asp:Label></h2>
									</div>
								</div>
							</div>
						</div>
                    </div>
              <div class="col-xl-6 col-xxl-6 col-lg-6 col-sm-6 ">
						<div class="widget-stat card">
							<div class="card-body p-4">
								<div class="media ai-icon d-flex">
									<span class="me-3 bgl-primary text-primary">
										<!-- <i class="ti-user"></i> -->
										<img runat="server" src="usdt.png" class="icone"/>
									</span>
									<div class="media-body">
										<p class="mb-1   text-white mb-2">Team Business</p>
										<h2 class="mb-0">$ <asp:Label ID="lbTeamBusiness" runat="server" Text="0"></asp:Label></h2>
									</div>
								</div>
							</div>
						</div>
                    </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Total</br> Team</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbteam" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>
               <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Direct</br> Team</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbDirectteam" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>
   <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">InActive</br> Team</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbInActiveteam" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>
<div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Active</br> Team</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbActiveteam" runat="server" Text="0"></asp:Label>
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>
   

              <style>
                  .widget-stat{
                      background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgb(3 12 9 / 88%) 35%, rgb(0 0 0 / 38%) 100%);
                      border: 1px solid #ffffff96!important;
                  }
      .icone{
          margin-top: -4px!important;
          width:78px!important;
      }
  </style>
    

                     <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="card   custom-card5">
            <div class="card-body ">

                <div class="card-header d-flex justify-content-between ">
                    <div class="header-title">
                        <h5 class="card-title">Total Capping : <span style="font-size:10px!important ;color:yellow"> 4X</span></h5>
                    </div>
                    <div class="card-header-toolbar d-flex align-items-center">
                        <a href="PurchaseHistory.aspx"  class="btn  btn-sm bg-primary text-white">View</a>
                    </div>
                </div>
              
                
            
                    <div class="table-responsive" style="overflow:auto;">
                        <table class="table table-striped mb-0 table-border" style="border:1px solid white; background-color:none;">
                            <thead class="">
                                <tr>
                                    <th style="color:rgb(125 255 224) !important;">Total Investment</th>
                                    <th style="color:rgb(125 255 224) !important;">Total Income</th>
                                     <th style="color:rgb(125 255 224) !important;">Remaining Capping</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        $ <asp:Label ID="lbInvestmentamt" class="text-white" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                   <td>
                                        $ <asp:Label ID="lbincome" class="text-white" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                 
                                    <td>
                                       $ <asp:Label ID="lbLeftinocme" class="text-white" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                    
                                   
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
               
            </div>
        </div>
        </div>

   

      </div>
                            





    

        
  
     
     </div>
        <asp:HiddenField ID="hndside" ClientIDMode="Static" runat="server" />

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript">
        function myFunction() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInput');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            Swal.fire(
                'Refferal Link :',
                copyText.value,
                'success'
            )

            //alert("Copied the text: " + copyText.value);

        }
    </script>


    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
   <script>

        function Processclick() {
            swal({
                title: "Processing.......!",
                text: "Note: Do Not press back or close the app? It will close in few seconds.",
                imageUrl: "../SoftImg/refresh.gif",
                timer: 20000,
                showConfirmButton: false
            });
        }
        function Successclick(msg) {
            swal("Success!", msg, "success")
        }
        function Warningclick(msg) {
            swal("Warning!", msg, "warning")
        }
    </script>
      <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" />
       <style type="text/css">
        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20px;
            width: 110px;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20px;
                width: 40px;
            }
    </style>

    <style>
        .btn-primary {
            background-color: #7367f0 !important;
            color: #fff;
        }

        .btn-danger {
            background-color: #d34c4d !important;
            color: #fff;
        }

        .btn1 {
            --bs-btn-padding-x: 0.25rem !important;
            --bs-btn-padding-y: -0.4rem !important;
        }

        .pad1 {
            padding: 0.1rem 1rem !important;
        }


        .recent-activity-wrapper-invoice {
            height: 816px  !important;
        }

        @media only screen and (max-width: 61.9375rem) {
            .ref {
                width: 30px !important;
            }
        }
    </style>

       <style>
        /*.custom-card1 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card2 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card3 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card4 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }*/

        .custom-card5 {
    background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgb(3 12 9 / 88%) 35%, rgb(0 0 0 / 38%) 100%);
            /*box-shadow: 4px 4px 6px 0px rgb(173 173 173 / 75%);*/
            border-radius: 15px;
            border:1px solid white!important;
        }
    </style>
     <style>
  .rotate-hover {
    display: inline-block;
    transition: transform 0.5s ease;
  }

  .rotate-hover:hover {
    animation: rotate-once 0.6s ease forwards;
  }

  @keyframes rotate-once {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
  }
</style>
     <script type="text/javascript">
         function myFunction() {

             var copyText = document.getElementById('ContentPlaceHolder1_myInput');

             copyText.select();
             copyText.setSelectionRange(0, 99999); /*For mobile devices*/
             /* Copy the text inside the text field */
             document.execCommand("copy");
             /* Alert the copied text */

             alert("Copied the text: " + copyText.value);

         }
     </script>
</asp:Content>

