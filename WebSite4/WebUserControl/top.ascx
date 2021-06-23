<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="WebUserControl_WebUserControl" %>
<link type="text/css" rel="stylesheet" href="common/common.css" />
<div class="top">
	
    <div class="topsr">
     
        <div class="text">|<a href="reg.aspx">用户注册</a>|<a href="Login.aspx">用户登录</a></div>
       
    </div>
 
</div>
<!-- head -->
<div class="head">
	<h1><a href="#" title="">江门市旅游网站</a></h1>
    <div class="search">
    	<input name="searchInput" type="text" id="searchInput" maxlength="20" runat="server" />
        <button type="submit" id="BUTTON1" onserverclick="BUTTON1_ServerClick" runat="server">搜索</button>
	</div>
   
</div>
<!-- nav -->
<div class="nav">
	<span class="icon"></span>
	<span class="navl"></span>
    <span class="navr"></span>
	<ul>
    	<li><a href="Default.aspx">首页</a></li>
      
        <li><a href="NewsList.aspx">新闻资讯</a></li>

        <li><a href="HotLineInfoList.aspx">热门旅游线路</a></li>

        <li><a href="TouristList.aspx">旅游景点</a></li>
    </ul>
</div>