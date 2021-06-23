<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left.ascx.cs" Inherits="WebUserControl_left" %>
<table width="218" border="0" cellspacing="0" cellpadding="0" style="height: 161px">
      <tr>
        <td class="leftmenutop">信息类别</td>
      </tr>
        <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
        <tr>
        <td class="leftmenuli"><a href='NewsTypeList.aspx?id=<%#Eval("id")%>'><span class="red">&nbsp;<%#Eval("Name")%></span></a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
      <tr>
      <td style="height: 15px"></td>
      </tr>
    
    </table>