using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string categorie = "Sport";
        SqlDataSource2.SelectCommand = "SELECT TITLU,CONTINUT,AUTOR,DATA_ADAUGARII FROM NEWS WHERE CATEGORIE LIKE @categorie";
        SqlDataSource2.SelectParameters.Add("categorie", '%' + categorie + '%');
        SqlDataSource2.DataBind();

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        ListView2.Visible = true;
        ListView1.Visible = false;
        ListView3.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        ListView3.Visible = true;
        ListView2.Visible = false;
        ListView1.Visible = false;

    }



}