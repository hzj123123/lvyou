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
public partial class AdminManger_AddJingdian : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
            SqlDataReader dr;

            dr = data.GetDataReader("select * from  JingDian where Name='" + ArticleTitle.Text.Trim() + "'");
            if (dr.Read())
            {
                Alert js = new Alert();
                js.Alertjs("不能重复");

            }
            else
            {
                SqlConnection SqlConn = new SqlConnection(SqlHelper.connstring);
                SqlConn.Open();
                SqlCommand insertCmd = new SqlCommand("insert into JingDian(Photo,Name,Address,Price,Ds,xianlu) values(@Photo,@Name,@Address,@Price,@Ds,@xianlu)", SqlConn);//创建操作数据库对象
                insertCmd.Parameters.Add("@Name", SqlDbType.VarChar, 100);   //为Command对象添加参数
                insertCmd.Parameters.Add("@Address", SqlDbType.Text, 16);
                insertCmd.Parameters.Add("@Price", SqlDbType.VarChar, 50);
                insertCmd.Parameters.Add("@xianlu", SqlDbType.VarChar, 2000);
                insertCmd.Parameters.Add("@Ds", SqlDbType.VarChar, 8000);
                insertCmd.Parameters.Add("@Photo", SqlDbType.VarChar, 50);
                //给参数赋值
                insertCmd.Parameters["@Address"].Value = TextBox1.Text;
                insertCmd.Parameters["@Name"].Value = ArticleTitle.Text;
                insertCmd.Parameters["@Price"].Value = ArticleAuthor.Text;
                insertCmd.Parameters["@Ds"].Value = ArticleContent.Value;
                insertCmd.Parameters["@xianlu"].Value = TextBox2.Text;
                insertCmd.Parameters["@Photo"].Value = pic.Text;
                try
                {

                    int flag = insertCmd.ExecuteNonQuery();   //执行插入
                    if (flag > 0)
                    {
                        Alert.AlertAndRedirect("添加成功", "JingdianManger.aspx");

                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('添加失败，查看输入是否正确！')</script>");
                    }
                }
                catch (System.Exception ee)
                {
                    Response.Write("<script language=javascript>alert('" + ee.Message.ToString() + "')</script>");
                }
                finally
                {
                    SqlConn.Close();      //关闭连接     
                }
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
