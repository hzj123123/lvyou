using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;
public partial class AdminManger_ModifyLine : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from LineInfotype");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
         string   sql = "select * from LineInfo where LineID=" + Request.QueryString["id"].ToString();
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            title.Text = dr["LineName"].ToString();
            TextBox2.Text = dr["LinePrice"].ToString();
            //TextBox3.Text = dr["LineNum"].ToString();
       
            FCKeditor1.Value = dr["LineIntroduce"].ToString();
            pic.Text = dr["LinePhoto"].ToString();
            Image1.ImageUrl = "../" + dr["LinePhoto"].ToString();
            DropDownList1.Items.FindByValue(dr["LineTypeID"].ToString()).Selected = true;
            DropDownList1.Items.FindByText(dr["LineTypeName"].ToString()).Selected = true;
       /*
            if (Convert.ToString(dr["LineMMD"]).Trim() == "否")
            {
                DropDownList2.SelectedIndex = 0;
            }
            if (Convert.ToString(dr["LineMMD"]).Trim() == "是")
            {
                DropDownList2.SelectedIndex = 1;
            }*/

         
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../" + pic.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "update LineInfo set LineName='" + title.Text.ToString().Trim() + "',LinePrice='" + TextBox2.Text  + "',LineIntroduce='" + FCKeditor1.Value + "' ,LinePhoto='" + pic.Text + "',LineTypeID='" + DropDownList1.SelectedValue + "',LineTypeName='" + DropDownList1.SelectedItem.Text +  "'  where LineID=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "LineInfoManger.aspx");
    }

  
}
