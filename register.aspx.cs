using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Data.SqlClient;
using TripleITConnection;
using TripleITTransaction;
using System.Drawing;
using System.Threading.Tasks;

public partial class Signup : System.Web.UI.Page
{
    clsmail objmail = new clsmail();
    clsfunction objfun = new clsfunction();

    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsSMS objsms = new clsSMS();
    clsDashboard objdash = new clsDashboard();
    string Password = "", UserName = "", Sponserid = "", SponserName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbsponserid.Text = Request.QueryString["Sponsor"].ToString();
            DataTable dt2 = objcon.ReturnDataTableSql("select username,name from register where username='" + lbsponserid.Text + "' order by username asc");
            if (dt2.Rows.Count > 0)
            {
                lbSponsermsg.Text = dt2.Rows[0]["name"].ToString();
                Visible = true;
                msg.Visible = false;

                msg.Text = "";

            }
            else
            {
                msg.Text = "Invaild Sponsor.!";
                lbsponserid.Text = "";
                lbSponsermsg.Text = "";
                lbsponserid.Focus();
                Visible = true;
                msg.Visible = true;
            }
            loadCountry();
            drpcode.Text = "+1";
        }
    }

    protected void drpcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            DataTable dt2 = objcon.ReturnDataTableSql("select Country,code from tblcountry  where cid='" + drpcountry.SelectedValue + "' ");
            if (dt2.Rows.Count > 0)
            {
                drpcode.Text = "+" + dt2.Rows[0]["code"].ToString();
                Visible = true;
            }
            else
            {
                //code = "Invaild Sponser Name";
                //Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }
    public void loadCountry()
    {

        DataTable dt1 = objcon.ReturnDataTableSql("select cid,Country,code from tblcountry  order by Country asc");
        drpcountry.DataSource = dt1;
        drpcountry.DataBind();
        drpcountry.Items.Insert(0, "Select Country");
        //// drpcode.DataSource = dt1;
        //// drpcode.DataBind();
        //// drpcode.Items.Insert(0, "Select Country");
    }




    public string loaduseridsixdigit()
    {
        string capta = "";
        string newuser = "";
        for (int i = 1; i <= 100; i++)
        {
            var chars = "0123456789";
            var stringChars = new char[6];
            var random = new Random();

            for (int ik = 0; ik < stringChars.Length; ik++)
            {
                stringChars[ik] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            capta = Convert.ToString(finalString);
            newuser = "B2B" + capta;
            DataTable dt1 = objcon.ReturnDataTableSql("select username from register where username='" + newuser + "'");
            if (dt1.Rows.Count > 0)
            {

            }
            else
            {
                i = 120;
            }
        }
        return newuser;

    }



 



    private string genratepassword1()
    {
        string TransactionPassword = "";
        try
        {


            var chars = "5678943210";
            var stringChars = new char[4];
            var random = new Random();

            for (int ik = 0; ik < stringChars.Length; ik++)
            {
                stringChars[ik] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            TransactionPassword = Convert.ToString(finalString);

        }
        catch (Exception ex) { }
        return TransactionPassword;
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            //if (drpside.SelectedValue != "Choose Position")
            //{

            lbmsg.Visible = false;
            if (txtPassword.Text == txtConfirmPassword.Text)
            {

                string side = "";// drpside.SelectedItem.Text;
                UserName = loaduseridsixdigit();
                string TransactionPassword = genratepassword1();

                string DOJ = objtime.returnStringServerMachTime();
                string DOB = "";// txtDOB.Text == "" ? "" : Convert.ToDateTime(txtDOB.Text).ToString("yyyy-MM-dd");
                                //int a = objamd.Register(0, lbsponserid.Text, lbSponsermsg.Text, txtName.Text, UserName, txtPassword.Text, "", txtName.Text, side, DOJ, "", "", "", drpcountry.SelectedItem.Text, txtemail.Text, txtMobile.Text, "Not Active", "", "", "", "", "", "", "", DOB, "", "", "", "", "", "", DOJ, "", DOJ, TransactionPassword, "../SoftImg/NoImage.jpeg", lbsponserid.Text, lbSponsermsg.Text, "N");
                                //if (a > 0)
                                //{
                int a = objamd.Register(0, lbsponserid.Text, lbSponsermsg.Text, txtName.Text, UserName, txtPassword.Text, "", txtName.Text, side, DOJ, "", "", "", drpcountry.SelectedItem.Text, txtemail.Text, txtMobile.Text, "Not Active", "", "", "", "", "", "", "", DOB, "", "", "", "", "", "", DOJ, "", DOJ, TransactionPassword, "../SoftImg/NoImage.jpeg", lbsponserid.Text, lbSponsermsg.Text, "N");
                if (a > 0)
                {
                    objmail.sendpass(txtName.Text, UserName, txtPassword.Text, TransactionPassword, txtemail.Text.Trim());

                    Response.Redirect("msg.aspx?username=" + UserName + "&Tp=" + TransactionPassword + "&Pass=" + txtPassword.Text + "&Name=" + txtName.Text);



                }
                else if (a == -1)
                {

                    lbmsg.Text = "Record already inserted Like- Email,Mobile?";
                    lbmsg.Visible = true;
                }
                else
                {

                    lbmsg.Text = "Record has not insert successfully? Try Again?";
                    lbmsg.Visible = true;
                }
            }
            else
            {
                lbmsg.Text = "Password does not match";
            }
            //}
            //else
            //{
            //    lbmsg.Text = "Select One Side Side Please!";
            //    lbmsg.Visible = true;
            //}
        }
        catch (Exception ex)
        {
            lbmsg.Text = "Try AGain!";
            lbmsg.Visible = true;
        }
    }

    protected void txtMobile_TextChanged(object sender, EventArgs e)
    {
        try
        {

            DataTable dt2 = objcon.ReturnDataTableSql("select mobile from register where mobile='" + txtMobile.Text + "'");
            if (dt2.Rows.Count > 0)
            {
                lbmobileMsg.Text = "Mobile No. Already Exsits !!! Try Again With Another Number";
                lbmobileMsg.Visible = true;
                txtMobile.Text = "";
                txtMobile.Focus();
            }
            else
            {
                lbmobileMsg.Visible = false;
            }

        }
        catch (Exception ex)
        { }
    }

    protected void txtemail_TextChanged(object sender, EventArgs e)
    {
        try
        {

            DataTable dt2 = objcon.ReturnDataTableSql("select email from register where email='" + txtemail.Text + "'");
            if (dt2.Rows.Count > 3)
            {
                lbEmailMsg.Text = "Email Already Exsits !!! Try Again With Another Email";
                lbEmailMsg.Visible = true;
                txtemail.Text = "";
                txtemail.Focus();
            }
            else
            {
                lbEmailMsg.Visible = false;
            }

        }
        catch (Exception ex)
        { }
    }
}