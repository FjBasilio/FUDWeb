using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FUDWeb
{
    internal class Bd
    {
        String _cadenaConex = "";
        SqlConnection _conectarBD = new SqlConnection();
        string Conex = "CADENA_CONEXION_SQL";

        public Bd()
        {
            this._cadenaConex = System.Configuration.ConfigurationManager.AppSettings[Conex].ToString();
            this._conectarBD.ConnectionString = this._cadenaConex;
        }

        public Bd(String cadenaConex)
        {
            this._cadenaConex = cadenaConex;
            this._conectarBD.ConnectionString = this._cadenaConex;
        }

        public void Ejecutar(String StoredProcedure, params Object[] parametros)
        {
            SqlCommand sql = new SqlCommand(StoredProcedure + " " + cargaParametros(parametros), this._conectarBD);
            this._conectarBD.Open();
            sql.ExecuteNonQuery();

            if (this._conectarBD.State == ConnectionState.Open)
            {
                this._conectarBD.Close();
            }
        }

        public DataTable[] TraeDataTable(String StoredProcedure, params Object[] parametros)
        {

            SqlDataAdapter da = new SqlDataAdapter(StoredProcedure + cargaParametros(parametros), this._conectarBD);
            da.SelectCommand.CommandTimeout = 600;
            DataSet DS = new DataSet();
            da.Fill(DS);

            DataTable[] tblResultado = new DataTable[DS.Tables.Count];

            for (int xDs = 0; xDs < DS.Tables.Count; xDs++)
            {
                tblResultado[xDs] = DS.Tables[xDs];
            }


            if (this._conectarBD.State == ConnectionState.Open)
            {
                this._conectarBD.Close();
            }

            return tblResultado;
        }

        private String cargaParametros(params Object[] parametros)
        {
            String salida = " ";
            int x = 0;
            foreach (object parametro in parametros)
            {
                salida += "'" + parametro + "',";
                x++;
            }

            salida = salida.Substring(0, salida.Length - 1);
            return salida;
        }
    }
}