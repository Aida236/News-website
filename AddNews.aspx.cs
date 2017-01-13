using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                string titlu = TBTitlu.Text; 
                string categorie = TBCategorie.Text;
                string autor = TBAutor.Text;             
                string continut = TBContinut.Text;

     
                string query = "INSERT INTO News (Titlu, Autor, Categorie, Data_adaugarii, Continut)"
                    + " VALUES (@titlu, @autor,@categorie, @data_adaugarii, @continut)";

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aida\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\Database2.mdf;Integrated Security=True");

                con.Open();

                try
                {
                    SqlCommand com = new SqlCommand(query, con);
                    com.Parameters.AddWithValue("titlu", titlu);
                    com.Parameters.AddWithValue("categorie", categorie);
                    com.Parameters.AddWithValue("autor", autor);
                    com.Parameters.AddWithValue("data_adaugarii", DateTime.Now);
                    com.Parameters.AddWithValue("continut", continut);
                   
                    com.ExecuteNonQuery();

                    // Do this only if insert works:
                    LAnswer.Text = "Ai adaugat o stire noua!";

                   
                    TBTitlu.Text = "";
                    TBCategorie.Text = "";
                    TBAutor.Text = "";
                    TBContinut.Text = "";
                }
                catch (Exception ex)
                {
                    LAnswer.Text = "Database insert error : " + ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException se)
            {
                LAnswer.Text = "Database connexion error : " + se.Message;
            }
            catch (Exception ex)
            {
                LAnswer.Text = "Data conversion error : " + ex.Message;
            }
        }
    }

}