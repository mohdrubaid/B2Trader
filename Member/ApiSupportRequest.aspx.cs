using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;

public partial class User_Support1 : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Newuser") == null)
        {
            Response.Redirect("logout.aspx");
        }
        else
        {
            try
            {
                if (!IsPostBack)
                {

                }
            }
            catch (Exception ex)
            { }
        }
    }//}
    public string AccountStatus(string username)
    {
        string status = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select status from register where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                status = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return status;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string username = SessionData.Get<string>("Newuser");
            string status = AccountStatus(username); 

            if (status == "Active") 
            {
                string sql = "insert into TblSupportAPI(username,subject,message,DOI) " +
                             "values('" + username + "','" + txtSubject.Text.Trim() + "','" + txtmsg.Text.Trim() + "','" + objtime.returnStringServerMachTime() + "')";
                int a = objcon.ExecuteSqlQuery(sql);

                if (a > 0)
                {
                    lbsuccess.Text = "Your request was sent successfully";
                    sccess.Visible = true;
                    danger.Visible = false;
                }
                else
                {
                    lbdanger.Text = "Try Again";
                    sccess.Visible = false;
                    danger.Visible = true;
                }
            }
            else
            {
                lbdanger.Text = "Your account is Not active. Request not sent.";
                sccess.Visible = false;
                danger.Visible = true;
            }
        }
        catch (Exception ex)
        {
            lbdanger.Text = "An error occurred.";
            sccess.Visible = false;
            danger.Visible = true;
        }
    }

}