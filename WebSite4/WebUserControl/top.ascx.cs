using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BUTTON1_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("AMCChaXun.aspx?LineName=" + searchInput.Value);
    }
}