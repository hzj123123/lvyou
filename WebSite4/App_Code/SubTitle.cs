using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
/// <summary>
/// SubTitle 的摘要说明
/// </summary>
public class SubTitle
{
	public SubTitle()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
     public string Sub(string name, int num)
       {
           string titile = null;
           if (name.Length > num)
           {
               titile = name.Substring(0, num)+"...";
              
           }
           else
           {
               titile = name;
           }
           return titile;
       }
    }

