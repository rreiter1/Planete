using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;

namespace Planete
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection maConnexion = new MySqlConnection("server=127.0.0.1;user=root;database=Planete;port=3306;password=mdpSaisir");
            maConnexion.Open();
            string sql = "SELECT * FROM Planete";
            MySqlCommand maReq = new MySqlCommand(sql, maConnexion);
            DataSet DS = new DataSet();
            MySqlDataAdapter req = new MySqlDataAdapter(sql, maConnexion);
            req.Fill(DS);
            GridView1.DataSource = DS;
            DataBind();
            maConnexion.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}