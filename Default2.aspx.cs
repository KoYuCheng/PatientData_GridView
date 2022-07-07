using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Request.QueryString["Pid"];
        string name = Request.QueryString["name"];
        string room = Request.QueryString["inroom"];
        string time = Request.QueryString["intime"];

        Label1.Text = "病歷號碼 : " + pid + "<br/>" + "姓名 : " + name + "<br/>" + "入住病房 : " + room + "<br/>" + "入住時間 : " + time;
    }
}