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
public partial class ShowLineInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    public string tu1;

    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinderReplay();
            string sql = "select * from LineInfo where LineID=" + Request.QueryString["id"].ToString();
            getdata(sql);
            data.RunSql("update LineInfo set LineClick=LineClick+1 where LineID=" + Request.QueryString["id"].ToString());
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["LineName"].ToString();
            Label2.Text = dr["LineName"].ToString();
            Label4.Text = dr["LinePrice"].ToString();
            //Label5.Text = dr["LineNum"].ToString();
            DIV1.InnerHtml = dr["LineIntroduce"].ToString();
            Label6.Text = dr["LineClick"].ToString();

            Label3.Text = dr["LineTypeName"].ToString();

            Hidden1.Value = dr["LineTypeID"].ToString();
            tu1 = dr["LinePhoto"].ToString();

        }

    }
    /*
    protected void btnShop_Click(object sender, EventArgs e)
    {
        if (float.Parse(Label5.Text) > float.Parse(TextBox1.Text))
        {

            Label8.Text = "不能大于剩余名额";
        }
        if (float.Parse(TextBox1.Text) < 1)
        {
            Label8.Text = "请输入正数";

        }
        else
        {

            string Orderid;
            if (Session["UserName"] == null)
            {
                Alert.AlertAndRedirect("您还没有登录，请登录后再预订，谢谢合作！", "Login.aspx");

            }
            else
            {
                SqlDataReader dr = data.GetDataReader("select top 1 * from tb_Order where IsCheckout='否' and  Ordeuser='" + Session["UserName"].ToString() + "' order by id desc  ");
                if (dr.Read())
                {
                    Orderid = dr["Orderid"].ToString();
                }
                else
                {
                    Orderid = DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                    string sqlOrder = "insert into tb_Order(Orderid,Ordeuser,OrderStite)values('" + Orderid + "','" + Session["UserName"].ToString() + "','未确认')";
                    data.RunSql(sqlOrder);
                }
                sqlconn.Open();
                string strid = Page.Request.QueryString["LineID"];
                string sqlstr = "insert into tb_OrderInfo"
                    + "(OrderID,OrderMember,LineID,LineName,LineTypeID,LineTypeName,LinePrice,IsCheckout,shuliang)"
                    + " values('" + Orderid + "','" + Session["UserName"].ToString() + "','" + Request.QueryString["id"].ToString() + "','"
                    + Label1.Text + "','" + Hidden1.Value + "','" + Label3.Text
                    + "','" + Label4.Text + "','否','" + TextBox1.Text + "')";
                data.RunSql(sqlstr);
                Response.Redirect("Shopping.aspx");
            }
        }
    }*/
    private void BinderReplay()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        string sql = "select * from  Comment where LineId=" + id;
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 5;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1 + "&id=" + id;
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&id=" + id;
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount + "&id=" + id;

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&id=" + id;
        }

        this.DataList2.DataSource = objPds;
        this.DataList2.DataBind();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        if (Session["UserId"] == null)
        {
            Alert.AlertAndRedirect("您还没有登录不能评论", "Default.aspx");

        }
        else
        {

            data.RunSql("insert into  Comment(UserId,UserName,LineId,Titles)values('" + Session["UserId"].ToString() + "','" + Session["UserName"].ToString() + "','" + id + "','" + TextBox2.Text + "')");
            BinderReplay();
            Alert.AlertAndRedirect("评论成功", "ShowLineInfo.aspx?id=" + id);
        }
    }

}
