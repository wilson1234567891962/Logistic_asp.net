using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-3EOJTAA;Initial Catalog=Logistics;User ID=lizeth;Password=123456789";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM EMPLOYEE", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                data.DataSource = dtbl;
                data.DataBind();
            }
        }

        protected void updateRegister(object sender, EventArgs e)
        {
            int idClient = Int32.Parse(String.Format("{0}", Request.Form["ID_EMPLOYMENT"]));
            string nameClient = String.Format("{0}", Request.Form["NAME_EMPLOYMENT"]);
            string surNameClient = String.Format("{0}", Request.Form["SURNAME_EMPLOYMENT"]);
            int ageClient = Int32.Parse(String.Format("{0}", Request.Form["AGE_EMPLOYMENT"]));
            string occupationClient = String.Format("{0}", Request.Form["OCCUPATION_EMPLOYMENT"]);

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();

                SqlCommand update = new SqlCommand("UPDATE EMPLOYEE SET name = @name, surname = @surname , age = @age , occupation = @occupation  Where indicate = @ID", sqlCon);
                update.Parameters.AddWithValue("@name", nameClient);
                update.Parameters.AddWithValue("@surname", surNameClient);
                update.Parameters.AddWithValue("@age", ageClient);
                update.Parameters.AddWithValue("@occupation", occupationClient);
                update.Parameters.AddWithValue("@ID", idClient);
                update.ExecuteNonQuery();

                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM EMPLOYEE", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                data.DataSource = dtbl;
                data.DataBind();
            }
        }

        protected void deleteRegister(object sender, EventArgs e)
        {
            int idClient = Int32.Parse(String.Format("{0}", Request.Form["ID_EMPLOYMENT"]));
         
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();

                SqlCommand update = new SqlCommand("DELETE EMPLOYEE  Where indicate = @ID", sqlCon);
                update.Parameters.AddWithValue("@ID", idClient);
                update.ExecuteNonQuery();

                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM EMPLOYEE", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                data.DataSource = dtbl;
                data.DataBind();
            }
        }

        protected void insertRegister(object sender, EventArgs e)
        { 
            string nameClient = String.Format("{0}", Request.Form["NAME_EMPLOYMENT"]);
            string surNameClient = String.Format("{0}", Request.Form["SURNAME_EMPLOYMENT"]);
            int ageClient = Int32.Parse(String.Format("{0}", Request.Form["AGE_EMPLOYMENT"]));
            string occupationClient = String.Format("{0}", Request.Form["OCCUPATION_EMPLOYMENT"]);

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();

                SqlCommand update = new SqlCommand("INSERT INTO EMPLOYEE  (name, surname, age, occupation) values(@name, @surname, @age, @occupation) ", sqlCon);
                update.Parameters.AddWithValue("@name", nameClient);
                update.Parameters.AddWithValue("@surname", surNameClient);
                update.Parameters.AddWithValue("@age", ageClient);
                update.Parameters.AddWithValue("@occupation", occupationClient);
                update.ExecuteNonQuery();

                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM EMPLOYEE", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                data.DataSource = dtbl;
                data.DataBind();
            }
        }
    }
}