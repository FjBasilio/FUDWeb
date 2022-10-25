using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FUDWeb
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TxtUsr.Focus();
            }
        }

        protected void LkbLogin_Click(object sender, EventArgs e)
        {
            if (TxtUsr.Text != "" && TxtPswd.Text != "")
            {
                string xPs = Cifrado.Encripta(TxtPswd.Text);

                Bd sql = new Bd();
                DataTable tbl = sql.TraeDataTable("FUD_spAltaUsuario", TxtUsr.Text, xPs)[0];
                if (tbl.Rows[0]["Msj"].ToString() != "0")
                {
                    Session.Add("IdUsuario", tbl.Rows[0]["idUsuario"].ToString());
                    string xU = Cifrado.Encripta(tbl.Rows[0]["idUsuario"].ToString());

                   Response.Redirect("~/FUD/Inicio.aspx?" + "xYsi=" + xU);
                }
                else
                {
                    Swal.swError(this, GetType(), "Datos Incorrectos");
                    TxtUsr.Focus();
                }
            }
            else
            {
                Swal.swError(this, GetType(), "Llena todos los campos.");
                TxtUsr.Focus();
            }
        }
    }
}