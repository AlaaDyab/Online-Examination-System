<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 612px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Exam" BackColor="#CCFFCC" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Height="37px" Width="85px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Course Name" BackColor="#FFCC00" Height="33px" Width="120px"></asp:Label><asp:TextBox ID="CourseTextBox" runat="server" Height="23px"></asp:TextBox>
            <asp:Button ID="ExamDisplay" runat="server" Text="ExamDisplay" OnClick="Button2_Click" BackColor="#993399" Font-Bold="True" ForeColor="White" Height="30px" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Student Id" BackColor="#FFCC00" Height="33px" Width="120px"></asp:Label><asp:TextBox ID="StudentIdTextBox" runat="server" Height="23px"></asp:TextBox>
            <br />
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td runat="server" id="Quest"><%#Eval("body")%></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadMCQOp1" runat="server" Text='<%#Eval("option1")%>' GroupName="rdexam"/>
                                        <asp:RadioButton ID="RadMCQOp2" runat="server" Text='<%#Eval("option2")%>' GroupName="rdexam"/>
                                        <asp:RadioButton ID="RadMCQOp3" runat="server" Text='<%#Eval("option3")%>' GroupName="rdexam"/>
                                        <asp:RadioButton ID="RadMCQOp4" runat="server" Text='<%#Eval("option4")%>' GroupName="rdexam"/>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td runat="server" id="Quest"><%#Eval("body")%></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadTFOp1" runat="server" Text="True" GroupName="rdexam"/>
                                        <asp:RadioButton ID="RadTFOp2" runat="server" Text="False" GroupName="rdexam"/>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Submit" runat="server" Text="Submit" BackColor="#FFCC00" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" OnClick="Button1_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ResultLabel" runat="server" BackColor="White" EnableViewState="False" Font-Bold="True" Font-Size="X-Large" Height="50px" Text="Result:" Width="300px"></asp:Label>
&nbsp;</p>

        </div>
    </form>
</body>
</html>
