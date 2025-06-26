﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class User_Default : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();  
    public List<clsuser> objuserlist = new List<clsuser>();   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = SessionData.Get<string>("newuser");
            loaddirect(username);
        }
       
    }
    protected void btnSeach_Click(object sender, EventArgs e)
    {
        loaddirect(SessionData.Get<string>("newuser"));
    }
    public void loaddirect(string username)
    {
        try
        {
            
            string sql = " select *,LEFT(PackType, 4) AS CoinType from tblrwithdraw where username='" + username+"'";
            if (txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "and dor between '" + txtfromdate.Text + "' dor '" + txttodate.Text + "'";

            }
            sql += "order by dor asc";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                grdData.DataSource = dt;
                grdData.DataBind();

            }
            else
            {
                lbdanger.Text = "Oops! No Data Found...";
                danger.Visible = true;
            }

        }
        catch (Exception ex)
        {

        }


    }
    public string Color(object IsType)
    {
        string Status = "";
        if (IsType.ToString() == "Deposit")
        {
            Status = "From: ";
        }
        else if (IsType.ToString() == "Withdraw")
        {
            Status = "To: ";
        }
        else
        {
            Status = " ";
        }
        return Status;

    }
    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdData.PageIndex = e.NewPageIndex;

        loaddirect(SessionData.Get<string>("newuser"));
    }

}

