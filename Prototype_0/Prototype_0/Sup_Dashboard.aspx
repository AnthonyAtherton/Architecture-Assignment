<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sup_Dashboard.aspx.cs" Inherits="Prototype_0.Sup_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; border-bottom:solid; border-bottom-color:yellow; color:white; background-color:darkviolet;">
            <br />
            <br />
            <asp:Label ID="ServerDateTime" runat="server"></asp:Label>
        </div>
        <div style="text-align:center">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="BtnUpload" runat="server" Text="Upload" OnClick="BtnUpload_Click" />
        </div>
    <div style="text-align:center">
        <asp:Label ID="UploadMessage" runat="server" Font-Bold="true"></asp:Label>
    </div>
  
          <div>
    
        Calendar Selection<br />
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/Images/calendar-icon-small.gif" OnClick="ImageButton1_Click" Width="34px" />
    
    </div>
        <div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Caption="Select Date to Edit Schedule" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="user1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="user1Time" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="user2" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="user2Time" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="user3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="user3Time" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="user4" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="user4Time" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
