using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox t, a;

        t = LoginView3.FindControl("TextBox1") as TextBox;
        a = LoginView3.FindControl("TextBox2") as TextBox;
      
        if (t != null && a != null)
        {
            
                string continut = t.Text;
                string autor = a.Text;
              
                string query = "INSERT INTO Comments (Autor, Continut)"
                    + " VALUES (@autor, @continut)";

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aida\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\Database2.mdf;Integrated Security=True");

                con.Open();

                try
                {
                    SqlCommand com = new SqlCommand(query, con);
                 
                
                    com.Parameters.AddWithValue("autor", autor);               
                    com.Parameters.AddWithValue("continut", continut);

                    com.ExecuteNonQuery();

                  
                }
              
                finally
                {
                    con.Close();
                }
            }
           
        }





  
}
