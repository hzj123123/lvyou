<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowLineInfo.aspx.cs" Inherits="ShowLineInfo" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>旅游线路详细信息</title>
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
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table align="center"  cellpadding="0"
            cellspacing="0" style="font-size: 9pt;;
            width: 745px; height: 355px">
            <tr>
                <td bgcolor="#f7f6f3" rowspan="5" style="width: 309px; text-align: center">
                <script type="text/javascript">
                                                                var focus_width = 300;
                                                                var focus_height = 210;
                                                                var focus_height = 188;
                                                                var text_height = 23;
                                                                var swf_height = focus_height + text_height;
                                                                var swf_height = focus_height;
                                                                var pics = "<%=tu1 %>";
                                                                var texts = "|||";
                                                                var links = "#|#|#|#";
                                                                var keyword = "||||";

                                                                document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + focus_width + '" height="' + swf_height + '">');
                                                                document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="flash/pix.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
                                                                document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                                                                document.write('<param name="FlashVars" value="pics=' + pics + '&links=' + links + '&texts=&keyword=' + keyword + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '">');
                                                                document.write('<embed src="flash/pix.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=&keyword=' + keyword + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#eeeeee" quality="high" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
                                                                document.write('</object>');


                        </script>
                
                
                
                    </td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    线路名称：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 438px; height: 30px" align="left">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    线路类别：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 438px; height: 30px" align="left">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <input id="Hidden1" runat="server" type="hidden" /></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    预估费用：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 438px;  height: 30px" align="left">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>
            
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    点击次数：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 438px;  height: 30px" align="left">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    线路介绍：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 438px;  height: 30px" align="left">
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: top; text-indent: 8pt; height: auto; text-align: left" align="left">
                    <div id="DIV1" runat="server" style="width: 738px; height: auto">
                    </div>
                </td>
            </tr>
            
            <tr>
            <td bgcolor="silver" colspan="3" style="height: 24px;" align="left">
                评论信息
            </td>
        </tr>
    <tr>
        <td align="left" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:DataList ID="DataList2" runat="server" Width="100%">
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 100%">
                                评论人：<%#Eval("UserName")%>
                                时间：<%#Eval("AddTime", "{0:d}")%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                内容：<%#Eval("Titles")%>
                            </td>
                        </tr>
                    </table>
                    <hr />
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
            当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
            <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
            &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" Width="544px"></asp:TextBox><br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="评论" /></td>
    </tr>
        </table>
    </td>
      </tr>
    </table>
    <cc2:foot ID="foot" runat="server" />
    </form>
</body>
</html>
