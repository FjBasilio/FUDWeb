using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FUDWeb.FUD
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LkbNuevoForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FUD/FormatoUnicoDeclaracion.aspx");
        }
    }
}