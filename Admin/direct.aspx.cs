﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_DirectList : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();  
    public List<clsuser> objuserlist = new List<clsuser>();   
    protected void Page_Load(object sender, EventArgs e)
    {
      
      
    }
    public void loaddirect()
    {
        try
        {
            string username = SessionData.Get<string>("newuser");
              string sql = "";
            sql = " select username, name, mobile, state, reffname, reffid, dateofjoining,onside,JoinAmount from register where reffid ='" + txtUname.Text + "' order by name asc";

           
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    clsuser objuser = new clsuser();
                    objuser.city = dt.Rows[i]["state"].ToString()== "Select"?"": dt.Rows[i]["state"].ToString();
                    objuser.mobile = dt.Rows[i]["mobile"].ToString();
                    objuser.name = dt.Rows[i]["name"].ToString();
                    objuser.reffid = dt.Rows[i]["reffid"].ToString();
                    objuser.reffname = dt.Rows[i]["reffname"].ToString();
                    objuser.username = dt.Rows[i]["username"].ToString();
                    objuser.position = dt.Rows[i]["onside"].ToString();
                    objuser.JoinAmt = dt.Rows[i]["JoinAmount"].ToString();


                    objuserlist.Add(objuser);
                }


            }
            else
            {
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
            Repeater1.DataSource = objuserlist;
            Repeater1.DataBind();

        }
        catch (Exception ex)
        {

        }
       
    }

    protected void btnSeach_Click(object sender, EventArgs e)
    {
        loaddirect();

    }
}