<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GA_Dashboard.aspx.cs" Inherits="Prototype_0.GA_Dashboard" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div style="text-align:center; border-bottom:solid; border-bottom-color:yellow; color:white; background-color:darkviolet;">
            <br />
            <br />
            <asp:Label ID="ServerDateTime" runat="server"></asp:Label>
        </div>
         <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
        <div style="text-align:center; font-size:36px; font:small-caps; padding-top:2em;">
            <asp:Label ID="WelcomeLabel" runat="server"></asp:Label>
        </div>
        <ajaxToolkit:ModalPopupExtender ID="breakPopUp" runat="server" TargetControlID="lblHidden" PopupControlID="divPopUp" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
            <div id="divPopUp" class="pnlBackGround" 
                style="border-style: inset; border-color: inherit; border-width: medium; background-color:#e8e8e8; text-align:center; height: 129px;">
                 <div id="main" class="main">
                     <br />
                     Have you taken your break?
                     <br />
                     <br />
                 </div>
                 <div id="buttons">
                     <div id="DivbtnOK" class="buttonOK" style="display:inline-block;"><asp:Button id="btnYes" runat="server" text="Yes" OnClick="btnYes_Click" Width="50px" /></div>
                     <div id="btnDivide" style="display:inline-block;">&nbsp &nbsp &nbsp</div> 
                     <div id="Divbtncancel" class="buttonOK" style="display:inline-block;"><asp:Button id="btnNo" runat="server" text="No" OnClick="btnNo_Click" Width="50px" /></div>
                 </div>
            </div>
        <div id="userImage" style="padding-left:43%; padding-top:2em">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/9f812d4cf313e887ef99d8722229eee1.jpg" />
        </div>
        <div style="margin-top:4em; margin-left:20%; margin-right:20%; text-align:center;">
            <asp:Button ID="ClockIOButton" runat="server" Text="Clock in" Height="77px" Width="204px" OnClick="Button1_Click" />
            
            <br />
            <asp:Label ID="ClockIODialog" runat="server"></asp:Label>
        </div> 
        <div style="text-align:center; padding-top:1em">
            <asp:Label ID="schedName" runat="server"></asp:Label>
        </div> 
        <div>
            <br />
            <div id="table1" style="display:inline-block; margin-left:14em;">
            <table style="text-align:center; font-size:24px; border: 1px solid black">
                <tr id="dayOfWeek" >
                    <td>

                        &nbsp;</td>
                    <td id="Mon" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Monday</p>
                    </td>
                    <td id="Tue" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Tuesday</p>
                    </td>
                    <td id="Wed" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Wednesday</p>
                    </td>
                    <td id="Thu" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Thursday</p>
                    </td>
                    <td id="Fri" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Friday</p>
                    </td>
                </tr>
                <tr id="clockIn1">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock In</p>
                    </td>
                     <td id="ciM1" style="border:1px solid black; padding:10px">
                         <p>8:00</p>
                    </td>
                    <td id="ciTu1" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                    <td id="ciW1" style="border:1px solid black; padding:10px">
                        <p>3:00</p>
                    </td>
                    <td id="ciTh1" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                    <td id="ciF1" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                </tr>
                <tr id="clockOut1">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock Out</p>
                    </td>
                    <td id="coM1" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                    <td id="coTu1" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                    <td id="coW1" style="border:1px solid black; padding:10px">
                        <p>5:00</p>
                    </td>
                    <td id="coTh1" style="border:1px solid black; padding:10px">
                        <p>12:00</p>
                    </td>
                    <td id="coF1" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                </tr>
                <tr id="clockIn2">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock In</p>
                    </td>
                    <td id="ciM2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="ciTu2" style="border:1px solid black; padding:10px">
                        <p>1:00</p>
                    </td>
                    <td id="ciW2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="ciTh2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="ciF2" style="border:1px solid black; padding:10px">
                        <p>1:00</p>
                    </td>
                </tr>
                <tr id="clockOut2">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock Out</p>
                    </td>
                    <td id="coM2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="coTu2" style="border:1px solid black; padding:10px">
                        <p>4:00</p>
                    </td>
                    <td id="coW2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="coTh2" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="coF2" style="border:1px solid black; padding:10px">
                        <p>4:30</p>
                    </td>
                </tr>
            </table>
            </div>
              <div id="Div1" style="display:inline-block; margin-left:4em;">
            <table style="text-align:center; font-size:24px; border: 1px solid black">
                <tr id="Tr1" >
                    <td>

                        &nbsp;</td>
                    <td id="Td1" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Monday</p>
                    </td>
                    <td id="Td2" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Tuesday</p>
                    </td>
                    <td id="Td3" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Wednesday</p>
                    </td>
                    <td id="Td4" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Thursday</p>
                    </td>
                    <td id="Td5" style="border:1px solid black; padding:10px">
                        <p style="font-size:24px;">Friday</p>
                    </td>
                </tr>
                <tr id="Tr2">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock In</p>
                    </td>
                     <td id="Td6" style="border:1px solid black; padding:10px">
                         <p>8:00</p>
                    </td>
                    <td id="Td7" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                    <td id="Td8" style="border:1px solid black; padding:10px">
                        <p>3:00</p>
                    </td>
                    <td id="Td9" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                    <td id="Td10" style="border:1px solid black; padding:10px">
                        <p>8:00</p>
                    </td>
                </tr>
                <tr id="Tr3">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock Out</p>
                    </td>
                    <td id="Td11" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                    <td id="Td12" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                    <td id="Td13" style="border:1px solid black; padding:10px">
                        <p>5:00</p>
                    </td>
                    <td id="Td14" style="border:1px solid black; padding:10px">
                        <p>12:00</p>
                    </td>
                    <td id="Td15" style="border:1px solid black; padding:10px">
                        <p>11:00</p>
                    </td>
                </tr>
                <tr id="Tr4">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock In</p>
                    </td>
                    <td id="Td16" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td17" style="border:1px solid black; padding:10px">
                        <p>1:00</p>
                    </td>
                    <td id="Td18" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td19" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td20" style="border:1px solid black; padding:10px">
                        <p>1:00</p>
                    </td>
                </tr>
                <tr id="Tr5">
                    <td style="border:1px solid black; padding:10px">
                        <p>Clock Out</p>
                    </td>
                    <td id="Td21" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td22" style="border:1px solid black; padding:10px">
                        <p>4:00</p>
                    </td>
                    <td id="Td23" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td24" style="border:1px solid black; padding:10px">

                    </td>
                    <td id="Td25" style="border:1px solid black; padding:10px">
                        <p>4:30</p>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
