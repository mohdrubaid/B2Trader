﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Activelist.aspx.cs" Inherits="Admin_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
       
           <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
          <!---  <div class="input-group input-group-sm" style="margin-bottom:30px;"> 
                <asp:DropDownList ID="Drpstatus" runat="server" CssClass=" form-control">
              <asp:ListItem>Active </asp:ListItem>
               <asp:ListItem>Not Active</asp:ListItem>
             
          </asp:DropDownList>
                    <span class="input-group-btn">                    
<asp:Button ID="btnsearch" runat="server" Text="Go!" OnClick="btnsearch_Click"   CssClass="btn btn-info btn-flat btn-lg"  />
                </span>
              </div>---->
              <div class="row">
<div  class="col-lg-12">
           <div class="card ">
                            <div class="card-body">
              <h3> Active Distributor</h3>
 

<div class="form-group row">
    <div  class="col-lg-12" style="overflow:auto;">
       
<table class="table table-bordered  table-hover"  >
        <thead>
            <tr>
                  <th>#</th>
                  <th>Sponsor Id</th>
                 
                  <th>Distributor</th>
                  <th>Name</th>
                  <th>Mobile</th>
                  <th>Statue</th>
                   <th>Amount</th>
                   <th>Purchase Package</th>
                   <th>Blocked Status </th>
                   <th>DateOfJoin  </th>
              
            </tr>
        </thead>
    <tbody>
       <asp:Repeater ID="Repeater1" runat="server" >
      
         <ItemTemplate>
             <tr>
                 <td> <%#Container.ItemIndex+1 %> </td>
                  <td>
                    <asp:Label ID="lbsponser" runat="server" Text='<%#Eval("reffid") %>'></asp:Label></td>
                  
                  <td><%#Eval("username") %></td>
                  <td><%#Eval("name") %></td>
                  <td><%#Eval("mobile") %></td>
                  <td><%#Eval("status") %></td>
                   <td><%#Eval("JoinAmount") %></td>
                   <td><%#Eval("PackType") %></td>
                   <td><%#Eval("loginstatus") %></td>
                     <td><%#DataBinder.Eval(Container.DataItem, "dateofjoin", "{0:dd/MM/yyyy}")%></td>
             </tr>

         </ItemTemplate></asp:Repeater>
      
            </tbody>
     <tfoot>
                <tr>
                     <th >#</th>
                 <th ></th>
                      <th ></th>
                  <th></th>
                  <th>Total</th>
                  <th>  </th>
                  <th><asp:Label ID="lbtotal" CssClass="text  text-bold text-bold" runat="server" Text=""></asp:Label>  </th>
                  
                </tr>
                </tfoot>
              </table>  

       
    </div>
    
 </div>
</div>
   </div>
    </div>

    </div>
       
</asp:Content>

