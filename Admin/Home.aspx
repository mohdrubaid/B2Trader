<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

				<div class="row invoice-card-row">
					<div class="col-md-3 mb-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Total Deposite</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbTotalDeposite" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
					<div class="col-md-3 mb-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Available Fund</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbavailablefund" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 mb-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Success Withdraw</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbTotalWithdrawal" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				
				<div class="col-md-3 mb-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Company Balance</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbCompanyNetBalance" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Pending Withdraw</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbpendingwithdraw" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				
				
			
				
			
				
	
					<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Total Member</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbTotalMember" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Active Member</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbpaidmember" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				
				<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Inactive Member</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbfreemember" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
				<%--<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Total Team Business</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbteambusiness" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>--%>
						<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Direct Refer Profit</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbdirectincome" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
                    <div class="col-md-3 mt-3">
                        <div class="card coin-card">
                            <div class="card-body ">
                                <h4 class="card-title" style="font-size: 18px;"><b>Compound Profit</b></h4>
                                <div class="d-flex align-items-center">

                                    <h2 class="fs-38">
                                        <asp:Label ID="lbroi" runat="server" Text="0"></asp:Label></h2>
                                </div>
                            </div>
                        </div>
                    </div>
						
							<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Direct Profit Sharing</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lblevelIncome" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Master Level Profit</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"> <asp:Label ID="lbroilevelincome" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 mt-3">
								<div class="card coin-card">
									<div class="card-body ">
										<h4 class="card-title" style="font-size:18px;"><b>Weekly Reward</b></h4>
										<div class="d-flex align-items-center">
											
											<h2 class="fs-38"><asp:Label ID="lbrewardincome" runat="server" Text="0"></asp:Label></h2>
										</div>
									</div>
								</div>
							</div>
					
					
						
								
				</div>
           
</asp:Content>

