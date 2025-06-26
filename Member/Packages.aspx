<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
     <!-- Content body -->
            <!-- Content -->
               <!------Msgbox End---->
     <div class="card-body ">
              <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
              
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false" >
              
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
            </div>
    <!-----Alert End----->
       
          
             <!-- layout modes selection -->
            <div class="row mb-3">
                <div class="col-12">
                    <h6 class="mb-0">Packages For ID: <asp:Label ID="lbActiveMember"  runat="server"  ></asp:Label></h6>
                </div>
            </div>
<!-- Panel Content --> 
         <!-- Content -->
            <div class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card  mb-4 custom-card5" style="border: 1px solid blue;">

                            <div class="card-body">
                                <div class="form-horizontal">
                                    <h5 class="text-warning " style="text-align: right; padding-right: 20px;" runat="server" visible="false" id="lbfund"><a class=" btn  btn-success" href="WalletRecharge.aspx">Add Fund</a></h5>
                                    <div class="mb-3 row">
                                        <label class="control-label col-sm-3">Fund Balance </label>
                                        <div class="col-sm-3">
                                            <h6>$
                                                <asp:Label ID="txtbalance" runat="server" Text="0"></asp:Label></h6>
                                        </div>
                                        <label class="control-label col-sm-3">Current Package </label>
                                        <div class="col-sm-3">

                                            <h6>
                                                <asp:Label ID="txtcurrentpack" runat="server" Text="NONE"></asp:Label>
                                                (<asp:Label ID="txtcurrentamt" CssClass="text-warning" runat="server" Text="0"></asp:Label>)</h6>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


     <div class="row"> 
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="repPack_ItemCommand">
        <ItemTemplate>
            <div class="col-12 col-xl-4">
                <div class="card custom-card5">
                    <div class="card-body style="border: 1px solid blue;" ">
                        <div class="px-2 py-1 fw-bold bg-success bg-opacity-10 text-success text-uppercase w-50 text-center rounded">B2Traders</div>
                        <div class="my-4">
                                 <div class="bg-info-subtle text-center learning-widgets d-flex align-items-center justify-content-center">
                            <img class="img-fluid" src='<%#Eval("ImgUrl") %>' alt="" style="width:190px !important"">
                        </div>
                            <h3 class="mb-2">
                                <asp:Label runat="server" ID="lbpack" Text='<%#Eval("product") %>'></asp:Label>
                            </h3>
                           
                        </div>
                          <div class="pricing-content d-flex flex-column gap-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <p class="mb-0 fs-6">Amount:</p>
                                <p class="mb-0 fw-medium  text-info">
                                    $ <asp:Label runat="server" ID="lbamountmin" Text='<%#Eval("min") %>'></asp:Label> 
                                </p>
                            </div>
                        </div>

                        <div class="pricing-content d-flex flex-column gap-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <p class="mb-0 fs-6">Compund ROI:</p>
                                <p class="mb-0 fw-medium  text-info">
                                    <asp:Label runat="server" ID="lbPerdays" Text='<%#Eval("Perdays") %>'></asp:Label>% Daily
                                </p>
                            </div>
                        </div>
                        <div class="pricing-content d-flex flex-column gap-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <p class="mb-0 fs-6">Period:</p>
                                <p class="mb-0 fw-medium  text-info">
                                    Daily 
                                </p>
                            </div>
                        </div>
                      
                        <!-- Chart Canvas -->
                        <%--<div class="chart-container mt-4">
                            <canvas id="chart_<%#Eval("packid") %>"></canvas>
                        </div>--%>
                        <hr />
         
                        <div class="d-grid">
                            <a href="SelfActive.aspx?id=<%=SessionData.Get<string>("ActiveUser") %>&Packid=<%#Eval("packid") %>" class="btn btn-success text-black fw-bold" >Buy Now</a>

                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

                <!-- end row -->
          <%--      <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        // Get all the canvas elements
                        const charts = document.querySelectorAll('canvas[id^="chart_"]');

                        charts.forEach(chartElement => {
                            const packId = chartElement.id.split('_')[1]; // Get the packId from canvas ID
                            const ctx = chartElement.getContext('2d');

                            // Example data (replace with actual data from your Repeater items)
                            const data = {
                                labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
                                datasets: [{
                                    label: 'ROI',
                                    data: [0.7, 0.9, 1.0, 1.2, 1.5], // Replace with dynamic data
                                    borderColor: 'rgba(54, 162, 235, 1)', // Use a decent blue
                                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                                    fill: true,
                                    tension: 0.4
                                }]
                            };


                            const config = {
                                type: 'line', // Line chart (you can change this to 'bar', 'pie', etc.)
                                data: data,
                                options: {
                                    responsive: true,
                                    scales: {
                                        x: {
                                            beginAtZero: true
                                        },
                                        y: {
                                            beginAtZero: true
                                        }
                                    }
                                }
                            };

                            // Create the chart
                            new Chart(ctx, config);
                        });
                    });
                </script>--%>

                <script>

                    function Processclick() {
                        swal({
                            title: "Processing.......!",
                            text: "Note: Do Not press back or close the app? It will close in few seconds.",
                            imageUrl: "../SoftImg/refresh.gif",
                            timer: 2000000,
                            showConfirmButton: false
                        });
                    }
                    function Successclick() {
                        swal("Succesfully", "Packages Purchased successfully!", "success")
                    }
                    function dangerlick() {
                        swal("Oops...!", "Something went wrong! Try Again", "error")
                    }
                    function Warninglick() {
                        swal("Oops...!", "You have already buy this Package ,please buy another packages!", "warning")
                    }
                    function fundlick() {
                        swal("Oops...!", "Balance is less then to require amount,Please Add Fund! Check Minimum And Maxmum Amount", "warning")
                    }
                    function PrePackBuy() {
                        swal("Oops...!", "you can't buy this packages! Please Buy previous packages SequenceWise", "error")
                    }
                    function Direct() {
                        swal("Oops...!", "you can't buy this packages! Required 2 Direct For Buy a Packages?", "error")
                    }
     //function NotActive() {
     //    swal("Oops...!", "Your Account Is Not-Active ...! Please Active Your Account(Buy JOIN PAKAGE)", "error")
     //}
                </script>
                <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
                <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
           <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                </div>
</asp:Content>

