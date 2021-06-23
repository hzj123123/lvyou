using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = data.GetDataReader("select top 3 * from  LineInfo order by  LineID  desc ");
        DataList1.DataBind();
        DataList2.DataSource = data.GetDataReader("select top 9 * from  LineInfo   order by  LineClick  desc ");
        DataList2.DataBind();
    }
}