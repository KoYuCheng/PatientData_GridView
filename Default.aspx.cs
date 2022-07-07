using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);  //取得哪個Row的列索引
        GridViewRow selectedRow = GridView1.Rows[index];
        TableCell Pid = selectedRow.Cells[2]; //取得該列Row的欄位-病歷號
        TableCell Name = selectedRow.Cells[3]; //取得該列Row的欄位-姓名
        //判斷使用者按下的按鈕
        switch (e.CommandName)
        {
            case "in":
                Panel1.Visible = true;
                Panel2.Visible = false;
                TextBox1.Text = Pid.Text;
                TextBox2.Text = Name.Text;
                break;
            case "out":
                Panel1.Visible = false;
                Panel2.Visible = true;
                TextBox5.Text = Pid.Text;
                TextBox6.Text = Name.Text;
                break;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx?Pid=" + TextBox1.Text + "&name=" + TextBox2.Text + "&inroom=" + TextBox3.Text + "&intime=" + TextBox4.Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?Pid=" + TextBox5.Text + "&name=" + TextBox6.Text + "&outtime=" + TextBox7.Text + "&backtime=" + TextBox8.Text + "&doctor=" + DropDownList1.SelectedValue);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
}