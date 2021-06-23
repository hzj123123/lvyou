<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>用户注册</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.white1 {color: #FFFFFF;
}
body {
	background-image: url(images/bg.gif);
}

</style>
</head>
<body>
    <form id="form1" runat="server">
   <cc1:top ID="top" runat="server" />
     <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="218" valign="top" bgcolor="#F6F6F6" rowspan="1" style="height: 471px">
      <table border="0" cellpadding="0" 
            cellspacing="0" style="width: 226px" >
      <tr>
        <td bgcolor="#32CD32" class="lefttt1" style="width: 299px; font-size: 18px;  color: #ffffff; background-repeat: repeat-x; height: 28px;">
            频道导航</td>
      </tr>
     
      <tr>
        <td align="left" valign="top"  style="width: 299px; border-right: #009933 0.1mm solid; border-top: #009933 0.1mm solid; border-left: #009933 0.1mm solid; border-bottom: #009933 0.1mm solid; height: 107px;">
            &nbsp;<uc1:Left ID="Left1" runat="server" />
        </td>
      </tr>
      <tr>
        <td align="center" style="width: 299px; height: 15px;"></td>
      </tr>
    </table>
    </td>
    <td width="10" valign="top" style="height: 471px">&nbsp;</td>
    <td valign="top" style="height: 471px; width: 752px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="8"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;用户注册</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table align="center" cellpadding="0" cellspacing="0" style="width: 764px">
            <tr>
                <td style="width: 113px; height: 47px; text-align: center">
                    <asp:Label ID="labLoginName" runat="server" Font-Size="9pt" Text="会员登录名" Width="100px"></asp:Label></td>
                <td style="width: 909px; height: 47px; text-align: left">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                    <asp:Button ID="btnTest" runat="server" CausesValidation="False" Font-Size="8pt"
                        Height="27px" OnClick="btnTest_Click" Text="检测会员名" />
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName"
                        Display="Dynamic" Font-Size="9pt" Height="1px" Width="193px">会员登录名不能为空</asp:RequiredFieldValidator>必须填写</td>
            </tr>
            <tr>
                <td style="width: 113px; text-align: center">
                    <asp:Label ID="labSex" runat="server" Font-Size="9pt" Text="性别" Width="67px"></asp:Label></td>
                <td style="width: 909px; text-align: left">
                    <asp:DropDownList ID="ddlSex" runat="server" Font-Size="9pt" Width="127px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 113px; height: 48px; text-align: center">
                    <asp:Label ID="labPwd" runat="server" Font-Size="9pt" Text="密码" Width="74px"></asp:Label></td>
                <td style="width: 909px; height: 48px; text-align: left">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="174px"></asp:TextBox>&nbsp;
                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="密码必须是6到14位" ValidationExpression="\w{6,14}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" Font-Size="9pt" Width="167px">会员密码不能为空</asp:RequiredFieldValidator>必须是6－14位且属于(a-z),(A-Z),(0-9)中的任意字符【必须填写】</td>
            </tr>
            <tr>
                <td style="width: 113px; text-align: center">
                    <asp:Label ID="labTName" runat="server" Font-Size="9pt" Text="真实姓名" Width="83px"></asp:Label></td>
                <td style="width: 909px; text-align: left">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
            </tr>
                <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 31px" align="center">
                                            <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="安全问题" Width="54px"></asp:Label></td>
                                        <td align="left" style="width: 349px; height: 31px">
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="113px">
                                                <asp:ListItem>您的生日</asp:ListItem>
                                                <asp:ListItem>你的出生地</asp:ListItem>
                                                <asp:ListItem>您爱人的生日</asp:ListItem>
                                                <asp:ListItem>你最喜欢的电影</asp:ListItem>
                                                <asp:ListItem>你的父亲名字</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 31px" align="center">
                                            <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="答案" Width="54px"></asp:Label></td>
                                        <td align="left" style="width: 349px; height: 31px">
                                            <asp:TextBox ID="txtdanan" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdanan"
                                                ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                                    </tr>
            <tr>
                <td style="width: 113px; height: 23px; text-align: center">
                    <asp:Label ID="labTel" runat="server" Font-Size="9pt" Text="电话" Width="70px"></asp:Label></td>
                <td style="width: 909px; height: 23px; text-align: left">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 113px; text-align: center">
                    <asp:Label ID="labEmail" runat="server" Font-Size="9pt" Text="E-mail地址" Width="88px"></asp:Label></td>
                <td style="width: 909px; text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        Display="Dynamic" Font-Size="9pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="351px">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator>必须填写</td>
            </tr>
            <tr>
                <td style="width: 113px; height: 24px; text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="所在区/县：" Width="71px"></asp:Label></td>
                <td style="width: 909px; height: 24px; text-align: left">
                    <asp:DropDownList ID="ddlCity" runat="server" Font-Size="9pt" Width="127px">
                        <asp:ListItem>蓬江区</asp:ListItem>
                        <asp:ListItem>新会区</asp:ListItem>
                        <asp:ListItem>江海区</asp:ListItem>
                        <asp:ListItem>开平</asp:ListItem>
                        <asp:ListItem>恩平</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 113px; text-align: center">
                    <asp:Label ID="labAddress" runat="server" Font-Size="9pt" Text="住址" Width="67px"></asp:Label></td>
                <td style="width: 909px; text-align: left">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnRegister" runat="server" Font-Size="9pt" OnClick="btnRegister_Click"
                        Text="注册" />
                    &nbsp; &nbsp;&nbsp;</td>
            </tr>
        </table>
    </td>
      </tr>
    </table>
    <cc2:foot ID="foot" runat="server" />
    </form>
</body>
</html>
