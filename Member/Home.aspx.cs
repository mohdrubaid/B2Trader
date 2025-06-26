using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using TripleITTransaction;
using TripleITConnection;
using System.Web.UI.HtmlControls;
using Newtonsoft.Json;
using System.Security.Principal;
using System.Activities.Statements;
using System.Activities.Expressions;
using Org.BouncyCastle.Asn1.Cmp;
using iTextSharp.text;

public partial class Member_Default : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsTimeZone objtime = new clsTimeZone();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    public List<clsaccount> objacclist = new List<clsaccount>();
    clsfunction objfun = new clsfunction();
    clsDashboard objdash = new clsDashboard();
    clsAMD objamd = new clsAMD();
    CoinPayments objcoin = new CoinPayments();
    clsDashboard objdashboard = new clsDashboard();
    string Sql = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            loadNews();
            loadDownLineBusniess();
           
          
           PackMaster();
           

            string username = SessionData.Get<string>("Newuser");


            myInput.Value = "http://b2traders.uk/register.aspx?Sponsor=" + username;
           // lbreffsidLeft.Text = "http://b2traders.uk/register.aspx?Sponsor=" + username;


            lbAvailabledeposit.Text = objdashboard.TotalWallectBlance(username);
            lbdeposit.Text = objdashboard.DepositCredit(username, "Payment");
            //lbWithdrawdeposit.Text = objdashboard.DepositDebit(username, "INCOME");

            lbteam.Text = objdashboard.TotalTeam(username);
            lbDirectteam.Text = objdashboard.TotalDirect(username);
            lbActiveteam.Text = objdashboard.TotalActiveTeam(username);
            lbInActiveteam.Text = objdashboard.TotalInActiveTeam(username);
            lbinvest.Text = objdashboard.SelfBusiness(username);
            lbTeamBusiness.Text = objdashboard.TeamBusiness(username);
            lbDirectBusiness.Text = objdashboard.TotalDirectBusiness(username);
            lbwithdrawapprove.Text = objdashboard.WithdrawType(username, "Approved", "INCOME");

            lbTotalIncome.Text = objdashboard.TotalIncome(username);
           lbbalance.Text = objdashboard.TotalBlance(username);
          
            //lbteambuss.Text = objdashboard.TotalTeamBusness(username);
            lblevelroi.Text = objdashboard.IncomeType(username, "DIRECTROI");
            lbdirect.Text = objdashboard.IncomeType(username, "DIRECT");
            lblevelincome.Text = objdashboard.IncomeType(username, "LEVEL");
            lbcompound.Text = objdashboard.IncomeType(username, "ROI");
           lbreward.Text = objdashboard.IncomeType(username, "REWARD");

           // lbdirect.Text = objdashboard.TotalDirect(username);
           // lbteam.Text = objdashboard.TotalTeam(username);
           // totalactiveteam.Text = objdashboard.TotalActiveTeam(username);
          //  lbinactiveteam.Text = objdashboard.TotalInActiveTeam(username);
            //if (Convert.ToDecimal(lbtodayroi.Text.Trim()) > 0)
            //{
            //    lbprofit.Visible = true;
            //} else if (Convert.ToDecimal(lbtodayroi.Text.Trim()) <= 0)
            //{
            //    lbloss.Visible = true;
            //}

            loadaccount(username);
            loadWithdraw(username);
            //loadPendingTransaction();
            lbInvestmentamt.Text = (Math.Round(Convert.ToDecimal(objdashboard.SelfBusiness(SessionData.Get<string>("Newuser"))), 2)).ToString();
            lbincome.Text = objdashboard.TotalIncome(SessionData.Get<string>("Newuser"));
            lbLeftinocme.Text = objdashboard.CappingBalance(SessionData.Get<string>("Newuser"));

        }
    }
   
    private void PackMaster()
    {
        try
        {
            string sql = "Select * from tblproduct";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
            //    PackRepeater.DataSource = dt;
               // PackRepeater.DataBind();
            }
            else
            {

            }

        }
        catch (Exception ex)
        { }
    }
    public string Isactive(int index)
    {
        string Abc = "carousel-item";
        if (index == 1)
        {
            Abc = "carousel-item active";
        }
        return Abc;
    }

   
  
   
    private void loadDownLineBusniess()
    {
        try
        {
            string sql = "select status,reffid,username,email,mobile,dob,doa,dateofjoin,name,country,packtype,JoinAmount,TotalRepurchase,rankname from register  where username='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {
                // lbEmail.Text = dt.Rows[0]["email"].ToString();
                //lbDOJ.Text = Convert.ToDateTime(dt.Rows[0]["dateofjoin"].ToString()).ToShortDateString();
              lbdoa.Text = Convert.ToDateTime(dt.Rows[0]["DOA"].ToString()).ToString("dd/MM/yyyy");
                lbSponsorId.Text = dt.Rows[0]["reffid"].ToString();
                 lbContact.Text = dt.Rows[0]["mobile"].ToString();
                lbstatus.Text = dt.Rows[0]["status"].ToString();
                lbRewardstaus.Text = dt.Rows[0]["reward"].ToString();
                //lbpackname.Text = dt.Rows[0]["PackType"].ToString();
               

       

            }

        }
        catch (Exception ex)
        { }
    }

    private void loadNews()
    {
        try
        {
            string sql = "select news,tittle from tblnews order by id desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
           // repNews.DataSource = dt;
            //repNews.DataBind();
            lbnews.Text = dt.Rows[0]["news"].ToString();
            lbhead.Text = dt.Rows[0]["tittle"].ToString();

        }
        catch (Exception ex)
        { }
    }




    public void loadaccount(string username)
    {
        try
        {
            string sql = "Select Top 5 * from tblretopup where username = '" + username + "' order by DOR desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            //Rep1.DataSource = dt;
            //Rep1.DataBind();

        }
        catch (Exception ex)
        {

        }
    }

    public void loadWithdraw(string username)
    {
        try
        {
            string sql = "Select Top 5 * from tblrwithdraw where username='" + username + "' order by DOR desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            //Rep2.DataSource = dt;
           // Rep2.DataBind();


        }
        catch (Exception ex)
        {

        }


    }
    //private void loadPendingTransaction()
    //{
    //    try
    //    {
    //        string sql = " select top 1 UserName,AmountUSD,AmountBTC,txn_id,address,confirms_needed,timeout,checkout_url,status_url,qrcode_url,Status,DOI from [TblFundRequest] where username='" + SessionData.Get<string>("Newuser") + "' and status='Pending'  order by DOI asc";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);
    //        if (dt.Rows.Count > 0)
    //        {
    //            string txn_id = dt.Rows[0]["txn_id"].ToString();
    //            Response.Redirect("BTCSuccess.aspx?TID=" + txn_id);
    //            var parentRow = objcoin.TransactionStatus(txn_id);

    //            string json = JsonConvert.SerializeObject(parentRow, Formatting.Indented);
    //            var parentData = JsonConvert.DeserializeObject<Root>(json);
    //            if (parentData.error == "ok")
    //            {
    //                string status = parentData.result.status_text;
    //                //if (status == "Complete")
    //                //{
    //                //    int a = objamd.BTCAPI(0, SessionData.Get<string>("Newuser"), 0, Convert.ToDouble(parentData.result.amount), txn_id, "", "", "", "", "", "", "Approved", "", "C");
    //                //    if (a > 0)
    //                //    {

    //                //    }
    //                //}
    //                //else if (parentData.result.status == -1)
    //                //{
    //                //    int a = objamd.BTCAPI(0, SessionData.Get<string>("Newuser"), 0, Convert.ToDouble(parentData.result.amount), txn_id, "", "", "", "", "", "", "Reject", "", "F");
    //                //    if (a > 0)
    //                //    {

    //                //    }

    //                //}
    //            }
    //            else
    //            {

    //            }
    //        }
    //        else
    //        {

    //        }

    //    }
    //    catch (Exception ex)
    //    {

    //    }

    //}


    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Un-lock")
        {
            try
            {
                string rid = e.CommandArgument.ToString();
                Response.Redirect("ButtonLink.aspx?Rid=" + rid);
            }
            catch (Exception ex)
            {

            }
        }
    }
    
    protected void p2pRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Buy")
        {
            try
            {
                string username = e.CommandArgument.ToString();
                Response.Redirect("p2pbuynow.aspx?aid=" + username + "&theme=1");
                //string Username = e.CommandArgument.ToString();
                //Response.Redirect("fundtransfer.aspx?Username=" + Username + "&theme=1");
            }
            catch (Exception ex)
            {

            }
        }
    }

    public class Checkout
    {
        public string currency { get; set; }
        public long amount { get; set; }
        public int test { get; set; }
        public string item_number { get; set; }
        public string item_name { get; set; }
        public List<object> details { get; set; }
        public string invoice { get; set; }
        public string custom { get; set; }
        public string ipn_url { get; set; }
        public int amountf { get; set; }
    }

    public class Result
    {
        public int time_created { get; set; }
        public int time_expires { get; set; }
        public int status { get; set; }
        public string status_text { get; set; }
        public string type { get; set; }
        public string coin { get; set; }
        public long amount { get; set; }
        public string amountf { get; set; }
        public long received { get; set; }
        public string receivedf { get; set; }
        public int recv_confirms { get; set; }
        public string payment_address { get; set; }
        public int time_completed { get; set; }
        public string send_tx { get; set; }
        public string sender_ip { get; set; }
        public Checkout checkout { get; set; }
        public List<object> shipping { get; set; }
    }

    public class Root
    {
        public string error { get; set; }
        public Result result { get; set; }
    }

    
}