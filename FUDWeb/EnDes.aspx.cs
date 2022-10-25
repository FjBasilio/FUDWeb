using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FUDWeb
{
    public partial class EnDes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TxtCifrado.Focus();
            }
        }

        protected void BtnCifrado_Click(object sender, EventArgs e)
        {
            string cifrado = "";

            try
            {
                cifrado = Cifrado.Encripta(TxtCifrado.Text);

                LblCifrado.Text = cifrado;

            }
            catch (Exception xD)
            {
                Response.Write(xD.Message);
            }
        }

        protected void BtnDescifrado_Click(object sender, EventArgs e)
        {
            string descifrado = "";

            try
            {
                descifrado = Cifrado.Desencripta(TxtDescifrado.Text);

                LblDescifrado.Text = descifrado;

            }
            catch (Exception xD)
            {
                Response.Write(xD.Message);
            }
        }
    }
}