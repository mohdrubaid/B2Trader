using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITTransaction;
using TripleITConnection;
public partial class Autorun : System.Web.UI.Page
{
    clsAMD ObjAmd = new clsAMD();
    clsConnection objcon = new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        {
             MasterClosing();
        }
    }

    public void MasterClosing()
    {

        try
        {
            //check first time binary or secoand time piar
            string sql11 = "exec [dbo].[MachingDateMaster]";
            int aa = objcon.ExecuteSqlQuery(sql11);


        }
        catch (Exception ex)
        {


        }


    }
}