using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cauta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(Server.UrlDecode(Request.Params["q"])))
        {
            string url1 = "Home.aspx";
            Response.Redirect(url1, true);
        }
        else
        {
            string cautat = Server.UrlDecode(Request.Params["q"]);
            SqlDataSource2.SelectCommand = "SELECT * FROM NEWS WHERE TITLU LIKE @titlu";
            SqlDataSource2.SelectParameters.Add("titlu", '%' + cautat + '%');
            SqlDataSource2.DataBind();
        }
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Repeater1.Items.Count < 1)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                Label lblFooter = (Label)e.Item.FindControl("Label1");
               // lblFooter.Visible = true;
            }
        }
    }
}
