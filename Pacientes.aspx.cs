using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Tarea
{
    public partial class Pacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlHospital_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cantidadGenero() {
            String gnro = ""; 
            float contM = 0;
            float contF = 0;
            int x = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString2"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente", conexion);
            SqlDataReader Paciente = comando.ExecuteReader();
            while (Paciente.Read())
            {
                gnro = Paciente["genero"].ToString();
                if (gnro.Equals("M"))
                {
                    contM = contM + 1;
                }
                if (gnro.Equals("F"))
                {
                    contF = contF + 1;
                }
                x = x + 1;
            }
            LabelM.Text = (contM/x*100).ToString() + "%";
            LabelF.Text = (contF/x*100).ToString()+ "%";
            conexion.Close();
    }


        protected void Clasificaredades() 
        {
            float menores13 = 0; float menores30 = 0; float mayores30 = 0;
            int x = 0; //Un contador
            int edades;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString2"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente", conexion);
            SqlDataReader Paciente = comando.ExecuteReader();
            while (Paciente.Read())
            {
                edades = int.Parse(Paciente["edad"].ToString());
                if (edades <= 13)
                {
                    menores13 = menores13 + 1;
                }
                if (edades > 13 && edades <= 30)
                {
                    menores30 = menores30 + 1;
                }
                if (edades > 30)
                {
                    mayores30 = mayores30 + 1;
                }
                x = x + 1;
            }
            L13años.Text = ((menores13/x)*100).ToString() + "%";
            L13a30años.Text = ((menores30/x)*100).ToString() + "%";
            L30años.Text = ((mayores30 / x) * 100).ToString() + "%";
        }

        protected void cantidadSeguro()
        {
            String sgro = "";
            float contNO = 0;
            float contSI = 0;
            int x = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString2"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente", conexion);
            SqlDataReader Paciente = comando.ExecuteReader();
            while (Paciente.Read())
            {
                sgro = Paciente["seguro"].ToString();
                if (sgro.Equals("True"))
                {
                    contSI = contSI + 1;
                }
                if (sgro.Equals("False"))
                {
                    contNO = contNO + 1;
                }
                x = x + 1;
            }
            LSgroSI.Text = ((contSI / x) * 100).ToString() + "%";
            LSgroNO.Text = ((contNO / x) * 100).ToString() + "%";
            conexion.Close();
        }
        protected void BAgregar_Click(object sender, EventArgs e)
        {
            sqlHospital.Insert();
        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            sqlHospital.Delete();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cantidadGenero();
        }

        protected void BEdades_Click(object sender, EventArgs e)
        {
            Clasificaredades();
        }

        protected void BSeguros_Click(object sender, EventArgs e)
        {
            cantidadSeguro();
        }
    }
}