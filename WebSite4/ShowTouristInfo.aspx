<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTouristInfo.aspx.cs" Inherits="ShowTouristInfo" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>景点信息</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.white1 {color: #FFFFFF;
}
body {
	background-image: url(images/bg.gif);
}

</style>
    <link href="common/common.css" rel="stylesheet" type="text/css" />
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
    <td width="752" valign="top" style="height: 471px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="8"></td>
      </tr>
      <tr>
        <td style="height: 39px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">
                景点信息</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>
          </tr>
        </table></td>
      </tr>
        <tr>
            <td align="left" style="height: 39px">
                <table style="width: 100%">
                    <tr>
                        <td height="40" style="border-bottom: #339933 double; text-align: center">
                            &nbsp;<asp:Label ID="ArticleTitleLabel" runat="server"></asp:Label><br />
                            <asp:Label ID="ArticleAuthorLabel" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="color: #999999; border-bottom: #cccccc 1px dashed; text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="264px" Width="348px" /><br />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #999999; border-bottom: #cccccc 1px dashed; text-align: left">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="ArticleContentLabel" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
      
              
        </table>
    </td>
      </tr>
    </table>
    <cc2:foot ID="foot" runat="server" />
    </form>
</body>
</html>
