using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype_0
{
    public partial class GA_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServerDateTime.Text = DateTime.Now.ToString("D");
            string name = Session["LSUid"].ToString();
            welcomeText(name);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ClockIOButton.Text != "Clock Out")
            {
                breakPopUp.Hide();
                ClockIODialog.Text = "Successful clock in at " + DateTime.Now.ToString("hh:mm tt");
                ClockIOButton.Text = "Clock Out";
            }
            else if (ClockIOButton.Text != "Clock In")
            {
                breakPopUp.Show();
            }
        }

        protected void welcomeText(string name)
        {
            if (name == "rsmith1")
            {
                WelcomeLabel.Text = "Hello Roger A. Smith";
                schedName.Text = "Roger A. Smith";
                /*schedMon.Text = "8:00 - 11:00";
                schedTue.Text = "8:00 - 11:00 | 13:00 - 16:00";
                schedWed.Text = "15:00 - 18:00";
                schedThu.Text = "8:00 - 12:00";
                schedFri.Text = "8:00 - 11:00 | 13:00 - 16:30";*/
            }
            if (name == "sworki1")
            {
                WelcomeLabel.Text = "Hello Sumone B. Workinghere";
                schedName.Text = "Sumone B. Workinghere";
                /*schedMon.Text = "9:00 - 15:00";
                schedTue.Text = "Off";
                schedWed.Text = "9:00 - 15:00";
                schedThu.Text = "Off";
                schedFri.Text = "9:00 - 11:00 | 15:00 - 16:30";*/
            }
            if (name == "hinjav2")
            {
                WelcomeLabel.Text = "Hello Helloworld C. Injava";
                schedName.Text = "Helloworld C. Injava";
                /*schedMon.Text = "Off";
                schedTue.Text = "Off";
                schedWed.Text = "Off";
                schedThu.Text = "Off";
                schedFri.Text = "8:00 - 15:00";*/
            }
            if (name == "iupnam3")
            {
                WelcomeLabel.Text = "Hello Ilikemaking D. Upnames";
                schedName.Text = "Ilikemaking D. Upnames";
               /* schedMon.Text = "8:00 - 15:00";
                schedTue.Text = "8:00 - 11:00 | 13:00 - 16:00";
                schedWed.Text = "9:00 - 15:00";
                schedThu.Text = "Off";
                schedFri.Text = "Off";*/
            }
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            breakPopUp.Hide();
            ClockIODialog.Text = "Successful clock out at " + DateTime.Now.ToString("hh:mm tt");
            ClockIOButton.Text = "Clock In";
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            breakPopUp.Hide();
            ClockIODialog.Text = "Successful clock out at " + DateTime.Now.ToString("hh:mm tt");
            ClockIOButton.Text = "Clock In";
        }
    }
}