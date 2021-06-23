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
public partial class AdminManger_XGJingdian : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


         
             
                // 当为编辑的时候取值
                string strID = Request["id"];
                SqlConnection SqlConn = new SqlConnection(SqlHelper.connstring);
                SqlConn.Open();
                SqlCommand comm = new SqlCommand("select * from JingDian WHERE id=" + strID, SqlConn);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                    // 获取值
                    ArticleTitle.Text = (string)dr["Name"];
                ArticleAuthor.Text = (string)dr["Price"];
                TextBox1.Text = (string)dr["Address"];
                ArticleContent.Value = (string)dr["Ds"];
                TextBox2.Text = (string)dr["xianlu"];
                Image1.ImageUrl = "../" + dr["Photo"].ToString();
                pic.Text = dr["Photo"].ToString();

                SqlConn.Close();
                dr.Close();
            
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
       
            string strID = Request["id"];
            SqlConnection SqlConn = new SqlConnection(SqlHelper.connstring);
            SqlConn.Open();
            string sql = "UPDATE JingDian SET   Photo='" + pic.Text + "',xianlu='" + TextBox2.Text + "',Name='" + ArticleTitle.Text + "',Price='" + ArticleAuthor.Text + "',Address='" + TextBox1.Text + "',Ds='" + ArticleContent.Value + "' WHERE id=" + strID;

            SqlDataAdapter da = new SqlDataAdapter(sql, SqlConn);
            DataSet ds = new DataSet();


            try
            {
                da.Fill(ds, "temp");  // 断开更新法

                Alert.AlertAndRedirect("编辑成功", "JingdianManger.aspx");

            }
            catch (System.Exception ee)
            {
                Response.Write("<script language=javascript>alert('" + ee.Message.ToString() + "')</script>");
            }
            finally
            {
                SqlConn.Close();
            }

        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../" + pic.Text;
    }
}
