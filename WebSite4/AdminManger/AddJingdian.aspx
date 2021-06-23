<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddJingdian.aspx.cs"  ValidateRequest="false" EnableEventValidation="false"   Inherits="AdminManger_AddJingdian" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" type="text/css" href="skin/css/base.css"/>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      添加景点信息</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" style="height: 35px">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="left" nowrap="nowrap">
                                景点名称：</td>
                            <td align="left" style="width: 543px">
                                <asp:TextBox ID="ArticleTitle" runat="server" CssClass="textbox" MaxLength="25"></asp:TextBox>(**)
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ArticleTitle"
                                    ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 72px; height: 27px" width="72">
                                门票价格：</td>
                            <td align="left" style="width: 543px; height: 27px">
                                <asp:TextBox ID="ArticleAuthor" runat="server" CssClass="textbox"></asp:TextBox>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ArticleAuthor"
                                    ErrorMessage="此项不能为空"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="ArticleAuthor"
                                        ErrorMessage="只能输入数字" ValidationExpression="^\d+(\.{0,1}\d+){0,1}$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 72px; height: 27px" width="72">
                                具体地址：</td>
                            <td align="left" style="width: 543px; height: 27px">
                                <asp:TextBox ID="TextBox1" runat="server" Width="464px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 72px; height: 27px" width="72">
                                旅游线路：</td>
                            <td align="left" style="width: 543px; height: 27px">
                                <asp:TextBox ID="TextBox2" runat="server" Width="505px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 111px; height: 27px">
                                添加图片：</td>
                            <td align="left" style="width: 543px; height: 27px">
                                <asp:Image ID="Image1" runat="server" Width="126px" /><br />
                                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                    id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                        ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                        OnClick="Button1_Click" Text="上传图片" Width="88px" />&nbsp;
                                <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                                &nbsp; &nbsp; &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 72px" width="72">
                                景点描述：</td>
                            <td align="left" style="width: 543px">
                                <div align="left" style="width: 600px">
                                    <fckeditorv2:fckeditor id="ArticleContent" runat="server" basepath="~/FCKeditor/"
                                        toolbarset="Basic"></fckeditorv2:fckeditor>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="height: 19px">
                                <asp:Button ID="btn_value" runat="server" OnClick="btnSubmit_Click" Text="添加" Width="59px" />
                                &nbsp;&nbsp; &nbsp; &nbsp;</td>
                        </tr>
                    </table>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
