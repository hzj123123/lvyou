using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AMCChaXun : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }
    protected void bind()
    {
        string LineName = Request.QueryString["LineName"].ToString();

        string str = "";
        string sql = str;
        sql = "select   * from [LineInfo] where  1=1";

        if (LineName != "")
        {
            sql += " and   LineName   like   '%" + LineName + "%'   ";
        }

        //取得当前页的页码
        int curpage = Convert.ToInt32(this.labPage.Text);
        //使用PagedDataSource类实现DataList控件的分页功能
        PagedDataSource ps = new PagedDataSource();
        //获取数据集
        DataSet ds = data.GetDs(sql, "LineInfo");
        ps.DataSource = ds.Tables["LineInfo"].DefaultView;
        //是否可以分页
        ps.AllowPaging = true;
        //显示的人数
        ps.PageSize = 9;
        //取得当前页的页码
        ps.CurrentPageIndex = curpage - 1;
        this.lnkbtnUp.Enabled = true;
        this.lnkbtnNext.Enabled = true;
        this.lnkbtnBack.Enabled = true;
        this.lnkbtnOne.Enabled = true;
        if (curpage == 1)
        {
            //不显示第一页按钮
            this.lnkbtnOne.Enabled = false;
            //不显示上一页按钮
            this.lnkbtnUp.Enabled = false;
        }
        if (curpage == ps.PageCount)
        {
            //不显示下一页
            this.lnkbtnNext.Enabled = false;
            //不显示最后一页
            this.lnkbtnBack.Enabled = false;
        }
        //显示分页人数
        this.labBackPage.Text = Convert.ToString(ps.PageCount);
        //绑定DataList控件
        this.DataList2.DataSource = ps;
        this.DataList2.DataKeyField = "LineID";
        this.DataList2.DataBind();

    }

    //第一页
    protected void lnkbtnBack_Click(object sender, EventArgs e)
    {
        this.labPage.Text = this.labBackPage.Text;
        this.bind();
    }

    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) + 1);
        this.bind();
    }

    protected void lnkbtnUp_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) - 1);
        this.bind();
    }

    protected void lnkbtnOne_Click(object sender, EventArgs e)
    {
        this.labPage.Text = "1";
        this.bind();
    }
}