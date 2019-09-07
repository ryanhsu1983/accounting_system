using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        }
        else
        {
            Response.Write("程式已執行此區 Page_Load" + DateTime.Now.ToLongTimeString());
        }
    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Write("程式已執行此區 Page_Load" + /*Username.Text + */ DateTime.Now.ToLongTimeString());
    }
}