<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" DataKeyNames="Id"   >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Pid" HeaderText="病歷號" SortExpression="Pid" />
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="電話" SortExpression="Phone" />
                <asp:BoundField DataField="Date" HeaderText="出生日期" SortExpression="Date" DataFormatString="{0:D}" />
                <asp:ButtonField ButtonType="Button" CommandName="in" Text="入院" />
                <asp:ButtonField ButtonType="Button" CommandName="out" Text="出院" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="Id"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Pid" HeaderText="病歷號" SortExpression="Pid" />
                <asp:BoundField DataField="Heigh" HeaderText="身高" SortExpression="Heigh" />
                <asp:BoundField DataField="Weigh" HeaderText="體重" SortExpression="Weigh" />
                <asp:BoundField DataField="BloodPresureSYS" HeaderText="收縮壓" SortExpression="BloodPresureSYS" />
                <asp:BoundField DataField="BloodPresureDIA" HeaderText="舒張壓" SortExpression="BloodPresureDIA" />
                <asp:BoundField DataField="HeartRate" HeaderText="心率" SortExpression="HeartRate" />
                <asp:BoundField DataField="Temperature" HeaderText="體溫" SortExpression="Temperature" />
                <asp:BoundField DataField="Time" HeaderText="檢測日期" SortExpression="Time" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\MS_SQL_2012\northwnd.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Patient] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Patient] ([Id], [Pid], [Name], [Phone], [Date]) VALUES (@Id, @Pid, @Name, @Phone, @Date)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Pid], [Name], [Phone], [Date] FROM [Patient]" UpdateCommand="UPDATE [Patient] SET [Pid] = @Pid, [Name] = @Name, [Phone] = @Phone, [Date] = @Date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Pid" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pid" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\MS_SQL_2012\northwnd.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Pid], [Heigh], [Weigh], [BloodPresureSYS], [BloodPresureDIA], [HeartRate], [Temperature], [Time], [Id] FROM [Patientdata]" DeleteCommand="DELETE FROM [Patientdata] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Patientdata] ([Pid], [Heigh], [Weigh], [BloodPresureSYS], [BloodPresureDIA], [HeartRate], [Temperature], [Time], [Id]) VALUES (@Pid, @Heigh, @Weigh, @BloodPresureSYS, @BloodPresureDIA, @HeartRate, @Temperature, @Time, @Id)" UpdateCommand="UPDATE [Patientdata] SET [Pid] = @Pid, [Heigh] = @Heigh, [Weigh] = @Weigh, [BloodPresureSYS] = @BloodPresureSYS, [BloodPresureDIA] = @BloodPresureDIA, [HeartRate] = @HeartRate, [Temperature] = @Temperature, [Time] = @Time WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pid" Type="String" />
                <asp:Parameter Name="Heigh" Type="String" />
                <asp:Parameter Name="Weigh" Type="String" />
                <asp:Parameter Name="BloodPresureSYS" Type="String" />
                <asp:Parameter Name="BloodPresureDIA" Type="String" />
                <asp:Parameter Name="HeartRate" Type="String" />
                <asp:Parameter Name="Temperature" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pid" Type="String" />
                <asp:Parameter Name="Heigh" Type="String" />
                <asp:Parameter Name="Weigh" Type="String" />
                <asp:Parameter Name="BloodPresureSYS" Type="String" />
                <asp:Parameter Name="BloodPresureDIA" Type="String" />
                <asp:Parameter Name="HeartRate" Type="String" />
                <asp:Parameter Name="Temperature" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            病歷號碼 :
            <asp:TextBox  ID="TextBox1" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名 :
            <asp:TextBox  ID="TextBox2" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            入院病房 :
            <asp:TextBox  ID="TextBox3" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            入院時間 :
            <asp:TextBox  ID="TextBox4" runat="server" style="margin-top: 0px" Height="23px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="margin-top: 0px" Visible="False">
            病歷號碼 :
            <asp:TextBox  ID="TextBox5" runat="server" style="margin-top: 0px" ></asp:TextBox>
            <br />
            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名 :
            <asp:TextBox  ID="TextBox6" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            出院時間 :
            <asp:TextBox  ID="TextBox7" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            回診時間 :
            <asp:TextBox  ID="TextBox8" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            回診醫師 :
            <asp:DropDownList  ID="DropDownList1" runat="server">
                <asp:ListItem>黃大師</asp:ListItem>
                <asp:ListItem>王小師</asp:ListItem>
                <asp:ListItem>陳中師</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="確定" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="取消" OnClick="Button4_Click" />
        </asp:Panel>
    </div>
     </form>
</body>
</html>
