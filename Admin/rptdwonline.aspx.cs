﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
public partial class Adminmain_rptdwonline : System.Web.UI.Page
{
  
    clsList objlist = new clsList();   
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }

    private void  loadlist()
    {
        try
        {
            string username = txtuname.Text;// SessionData.Get<string>("newuser");
        DataTable dt = objlist.GetDownlineLevel(username,"0","ALL");
        //grdData.DataSource = dt;
        //grdData.DataBind();

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        { }

    }
    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      //  grdData.PageIndex = e.NewPageIndex;
        //   this.BindGrid();
        loadlist();
    }
    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        try
        {

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=rptDownline.xls");
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
    protected void btnSeach_Click(object sender, EventArgs e)
    {
        try {
            loadlist();
            //string username = SessionData.Get<string>("newuser");
            //DataTable dt = objlist.GetDownline(username, drpstatus.SelectedValue, drpside.SelectedValue);
            //grdData.DataSource = dt;
            //grdData.DataBind();
            ////==================All Side=======================
            //if (drpside.SelectedValue == "1" && drpstatus.SelectedValue == "1")
            //{
            //    DataTable dt = objlist.GetDownline(username,"1", "A");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
            //else if (drpside.SelectedValue == "1" && drpstatus.SelectedValue == "2")
            //{
            //    DataTable dt = objlist.GetDownline(username,"2", "A");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
            ////    -------left Side===============-
            //else if (drpside.SelectedValue == "2" && drpstatus.SelectedValue == "1")
            //{
            //    DataTable dt = objlist.GetDownline(username,"1", "L");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
            //else if (drpside.SelectedValue == "2" && drpstatus.SelectedValue == "2")
            //{
            //    DataTable dt = objlist.GetDownline(username, "A");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
            ////-------------RIGHT SIDE=============
            //if (drpside.SelectedValue == "3" && drpstatus.SelectedValue == "1")
            //{
            //    DataTable dt = objlist.GetDownline(username, "A");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
            //else if (drpside.SelectedValue == "3" && drpstatus.SelectedValue == "2")
            //{
            //    DataTable dt = objlist.GetDownline(username, "A");
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();
            //}
        }
        catch (Exception ex)
        { }

    }
}

