using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FUDWeb.FUD
{
    public partial class FormatoUnicoDeclaracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Fecha = DateTime.Now.ToString().Substring(0, 10);
                string Hora = DateTime.Now.ToString().Substring(11);

                TxtFechaSolicitud.Text = DateTime.Now.ToString();
            }
        }

        protected void RblTipoSolicitante_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (RblTipoSolicitante.SelectedItem.Value)
            {
                case "1"://Continuar en II.
                    
                    //Desactivamos los campos de I.
                    TxtINombres.Enabled = false;
                    TxtIPaterno.Enabled = false;
                    TxtIMaterno.Enabled = false;
                    TxtIParentesco.Enabled = false; 
                    TxtICargo.Enabled = false;
                    TxtIDependencia.Enabled = false;
                    TxtIFijo.Enabled = false;
                    TxtIMovil.Enabled = false;
                    TxtIEmail.Enabled = false;
                    TxtIOtroContacto.Enabled = false;

                    //Borramos los campos de I.
                    TxtINombres.Text = "";
                    TxtIPaterno.Text = "";
                    TxtIMaterno.Text = "";
                    TxtIParentesco.Text = "";
                    TxtICargo.Text = "";
                    TxtIDependencia.Text = "";
                    TxtIFijo.Text = "";
                    TxtIMovil.Text = "";
                    TxtIEmail.Text = "";
                    TxtIOtroContacto.Text = "";

                    //Desactivamos los campos de III.
                    TxtIIIParentesco1.Enabled = false;
                    TxtIIIParentesco2.Enabled = false;
                    TxtIIIParentesco3.Enabled = false;
                    TxtIIIVictima1.Enabled = false;
                    TxtIIIVictima2.Enabled = false;
                    TxtIIIVictima3.Enabled = false;


                    PnlI.Visible = true;
                    PnlII.Visible = true;
                    PnlIII.Visible = true;
                    PnlIV.Visible = true;
                    PnlV.Visible = true;
                    PnlVI.Visible = true;
                    PnlVII.Visible = true;
                break;

                case "2":
                    //Desactivamos los campos de I.
                    TxtINombres.Enabled = true;
                    TxtIPaterno.Enabled = true;
                    TxtIMaterno.Enabled = true;
                    TxtIParentesco.Enabled = true;
                    TxtICargo.Enabled = false;
                    TxtIDependencia.Enabled = false;
                    TxtIFijo.Enabled = true;
                    TxtIMovil.Enabled = true;
                    TxtIEmail.Enabled = true;
                    TxtIOtroContacto.Enabled = true;

                    //Desactivamos los campos de III.
                    //TxtIIIParentesco1.Enabled = false;
                    //TxtIIIParentesco2.Enabled = false;
                    //TxtIIIParentesco3.Enabled = false;
                    //TxtIIIVictima1.Enabled = false;
                    //TxtIIIVictima2.Enabled = false;
                    //TxtIIIVictima3.Enabled = false;


                    PnlI.Visible = true;
                    PnlII.Visible = true;
                    PnlIII.Visible = true;
                    PnlIV.Visible = true;
                    PnlV.Visible = true;
                    PnlVI.Visible = true;
                    PnlVII.Visible = true;
                break;

                case "3":
                    TxtINombres.Enabled = true;
                    TxtIPaterno.Enabled = true;
                    TxtIMaterno.Enabled = true;
                    TxtIParentesco.Enabled = false;
                    TxtICargo.Enabled = true;
                    TxtIDependencia.Enabled = true;
                    TxtIFijo.Enabled = true;
                    TxtIMovil.Enabled = true;
                    TxtIEmail.Enabled = true;
                    TxtIOtroContacto.Enabled = true;
                    break;
                case "4":
                    //Continuar en II.

                    //Desactivamos los campos de I.
                    TxtINombres.Enabled = false;
                    TxtIPaterno.Enabled = false;
                    TxtIMaterno.Enabled = false;
                    TxtIParentesco.Enabled = false;
                    TxtICargo.Enabled = false;
                    TxtIDependencia.Enabled = false;
                    TxtIFijo.Enabled = false;
                    TxtIMovil.Enabled = false;
                    TxtIEmail.Enabled = false;
                    TxtIOtroContacto.Enabled = false;
                break;

                default:
                    PnlI.Visible = true;
                    PnlII.Visible = false;
                    PnlIII.Visible = false;
                    PnlIV.Visible = false;
                    PnlV.Visible = false;
                    PnlVI.Visible = false;
                    PnlVII.Visible = false;

                    TxtINombres.Enabled = true;
                    TxtIPaterno.Enabled = true;
                    TxtIMaterno.Enabled = true;
                    TxtIParentesco.Enabled = true;
                    TxtICargo.Enabled = true;
                    TxtIDependencia.Enabled = true;
                    TxtIFijo.Enabled = true;
                    TxtIMovil.Enabled = true;
                    TxtIEmail.Enabled = true;
                    TxtIOtroContacto.Enabled = true;
                    break;
            }


        }
    }
}