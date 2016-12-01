using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype_0
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                if (TextBox1.Text == "sup")
                {
                    Server.Transfer("Sup_Dashboard.aspx", true);
                }
                else if (TextBox1.Text == "rsmith1" || TextBox1.Text == "sworki1" || TextBox1.Text == "hinjav2" || TextBox1.Text == "iupnam3")
                {
                    Session["LSUid"] = TextBox1.Text;
                    Server.Transfer("GA_Dashboard.aspx", true);
                }
                else 
                {
                    ErrorLabel.Text = "Invalid ID.";
                }
            }
            else
            {
                ErrorLabel.Text = "No input received.";
            }
        }
    }
}