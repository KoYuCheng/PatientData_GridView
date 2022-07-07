using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Request.QueryString["Pid"];
        string name = Request.QueryString["name"];
        string time = Request.QueryString["outtime"];
        string ttime = Request.QueryString["backtime"];
        string tdoctor = Request.QueryString["doctor"];

        Label1.Text = "病歷號碼 : " + pid + "<br/>" + "姓名 : " + name + "<br/>" + "出院時間 : " + time + "<br/>" + "回診時間 : " + ttime + "<br/>" + "回診醫師 : " + tdoctor;
        
    }
}