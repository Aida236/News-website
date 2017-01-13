using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void butonsearch_Click(object sender, EventArgs e)
    {
        string url2 = "Cauta.aspx?q=" + Server.UrlEncode(search.Text);

        Response.Redirect(url2, true);

    }
}
