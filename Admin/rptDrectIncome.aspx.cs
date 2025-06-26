﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_rptlevelIncome : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadlist();
        }
     
    }
    private void loadlist()
    {
        try
        {
            string sql = "select r.name,r.dateofjoin,a.username,sum(cast (a.credit as real)) as totalincome from register r inner join dbo.account a on r.username=a.username  where a.valu='DIRECT' ";
             if (txtsearch.Text != "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "and a.username='" + txtsearch.Text + "'  and  a.date between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
           else if (txtsearch.Text == "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "  and  a.date between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
            else if (txtsearch.Text != "" && txtfromdate.Text == "" && txttodate.Text == "")
            {
                sql += "and a.username='" + txtsearch.Text + "'";
            }
            

            sql += "group by r.name,r.dateofjoin,a.username order by r.name asc";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                decimal total = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    total += Convert.ToDecimal(dt.Rows[i]["totalincome"].ToString());


                }
                lbtotal.Text = total.ToString();
                danger.Visible = false;
                
            }
            else
            {
                lbtotal.Text = "0";
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadlist();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            string username = e.CommandArgument.ToString();
            Response.Redirect("rptViewIncome.aspx?username=" + username + "&type=DIRECT");
        }
    }
    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        try
        {


            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=rptIncome.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";

            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            //     Your Repeater Name Mine is "Rep"
            Repeater1.RenderControl(htmlWrite);
            Response.Write("<table>");
            Response.Write(stringWrite.ToString());
            Response.Write("</table>");
            Response.End();

        }
        catch (Exception ex)
        { }
    }

}