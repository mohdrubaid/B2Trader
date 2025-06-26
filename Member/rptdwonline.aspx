<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptdwonline.aspx.cs" Inherits="User_rptdwonline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
 
    <%--<div class=" container">--%>
        <div class="card">
            <div class="card-header">
              <h5 class="card-title">Downline Member Detail</h5>
                
            </div>
            <!-- /.card-header -->
            <div class="card-body">

               <div class="form-group row">
                          <label class="control-label col-sm-2">Select Level</label>
                          <div class="col-sm-6">
                    <asp:DropDownList runat="server" ID="drplevelno" OnSelectedIndexChanged="drplevelno_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control text-warning">
                        <asp:ListItem Value="0">All</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                        <asp:ListItem Value="12">12</asp:ListItem>
                    </asp:DropDownList>
              </div>
              </div>
                <hr />
    <div style="overflow:auto;color:#000000; ">
       
      <asp:gridview ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="100"  Font-Size="Large" CssClass="table table-bordered  " 

          GridLines="Both" Width="100%" AllowPaging="True"   OnPageIndexChanging="grdData_PageIndexChanging"  >
           
            <columns>
             

<asp:TemplateField HeaderText="#">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <ItemStyle Width="10%" />
</asp:TemplateField>
                <asp:boundfield DataField="Level" HeaderText="LevelNo"></asp:boundfield>
                <asp:boundfield DataField="username" HeaderText="UserName"></asp:boundfield>
                <asp:boundfield DataField="Name" HeaderText="Name"></asp:boundfield>
                <asp:boundfield DataField="reffid" HeaderText="Sponser"></asp:boundfield>
                <asp:boundfield DataField="DateOFJOining" DataFormatString="{0:d}" HeaderText="DOA"></asp:boundfield>
                <%--<asp:boundfield DataField="Upline"  HeaderText="Upline"></asp:boundfield>--%>
             <%--   <asp:boundfield DataField="side"  HeaderText="Side"></asp:boundfield>--%>
                <asp:boundfield DataField="joinamount"  HeaderText="Amount"></asp:boundfield>
                <asp:boundfield DataField="Status" HeaderText="AccountStatus"></asp:boundfield>
               
            </columns>
          
           
        </asp:gridview>
            
       </div></div></div>
       </div>
   <%-- </div>--%>
</asp:Content>

