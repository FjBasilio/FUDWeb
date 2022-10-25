using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace FUDWeb
{
    public class Swal
    {
        public static void swSuccess(System.Web.UI.Page Pagina, System.Type Typo, string Msj)
        {
            ScriptManager.RegisterStartupScript(Pagina, Typo, "Popup", "successalert('" + Msj + "','" + "" + "');", true);
        }
        public static void swSuccessOk(System.Web.UI.Page Pagina, System.Type Typo, string Msj)
        {
            ScriptManager.RegisterStartupScript(Pagina, Typo, "Popup", "successalertOk('" + Msj + "','" + "" + "');", true);
        }

        public static void swError(System.Web.UI.Page Pagina, System.Type Typo, string Msj)
        {
            ScriptManager.RegisterStartupScript(Pagina, Typo, "Popup", "erroralert('" + Msj + "','" + "" + "');", true);
        }

        public static void swWarning(System.Web.UI.Page Pagina, System.Type Typo, string Msj)
        {
            ScriptManager.RegisterStartupScript(Pagina, Typo, "Popup", "warningalert('" + Msj + "','" + "" + "');", true);
        }
    }
}