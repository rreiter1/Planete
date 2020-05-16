using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using System.IO;

namespace Planete
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        MySqlConnection Connexion;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Connexion = new MySqlConnection("server=127.0.0.1;user=root;database=Planete;port=3306;password=mdpSaisir");
            Connexion.Open();
            String absoluteFilename = fileChooser.PostedFile.FileName;
            String filename = Path.GetFileName(absoluteFilename);
            string filePath = Server.MapPath("./");
            fileChooser.PostedFile.SaveAs(filePath+"img/"+filename);
            string sql = "INSERT INTO Planete (Nom,Description,NomImg) VALUE ('"+TextBox1.Text+ "','" + TextBox2.Text + "','img/" + filename + "')";
            MySqlCommand maReq = new MySqlCommand(sql, Connexion);
            maReq.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

    }
}