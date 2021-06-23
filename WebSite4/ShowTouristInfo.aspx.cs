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
using System.Data.SqlClient;
public partial class ShowTouristInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlConnection conn = new SqlConnection(SqlHelper.connstring);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            conn.Open();
            string sql = "SELECT * FROM [JingDian] Where id =" + id;

            //创建数据库命令

            SqlCommand mycmd = new SqlCommand(sql, conn);

            SqlDataReader dr = mycmd.ExecuteReader();

            if (dr.Read())
            {
                Image1.ImageUrl = dr["Photo"].ToString();
                Label1.Text = "线路：" + dr["xianlu"].ToString();
                ArticleContentLabel.Text = dr["Ds"].ToString();
                ArticleTitleLabel.Text = dr["Name"].ToString();
                ArticleAuthorLabel.Text = "地址：" + dr["Address"].ToString() + "         价格：" + dr["Price"].ToString();
            }

            conn.Close();  //关闭数据库
        }
    }

}
