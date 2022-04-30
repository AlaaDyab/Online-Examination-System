<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Course Name" Height="27px" Width="220px"></asp:Label><asp:TextBox ID="CrsNameTextBox" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Generate Exam" BackColor="#FF9933" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Total Number of Questions" Height="27px" Width="220px"></asp:Label><asp:TextBox ID="NOQTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Number of MCQ Questions" Height="27px" Width="220px"></asp:Label><asp:TextBox ID="NoMCQTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Number of T/F Questions" Height="27px" Width="220px"></asp:Label><asp:TextBox ID="NoTFTextBox" runat="server"></asp:TextBox>            
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
