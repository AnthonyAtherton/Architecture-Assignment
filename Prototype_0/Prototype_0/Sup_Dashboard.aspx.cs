using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype_0
{
    public partial class Sup_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Panel1.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == true)
            {
                Calendar1.Visible = false;
            }
            else if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
                Panel1.Visible = false;
            }
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".gat")
                {
                    UploadMessage.Text = "Only files with the .gat extension are allowed.";
                    UploadMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    if (fileSize > 1048576)
                    {
                        UploadMessage.Text = "Maximum allowed file size (1MB) exceeded.";
                        UploadMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        UploadMessage.Text = "File Uploaded";
                        UploadMessage.ForeColor = System.Drawing.Color.Green;
                    }
                }


            }
            else
            {
                UploadMessage.Text = "Please select a file to upload.";
                UploadMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            string day = Calendar1.SelectedDate.DayOfWeek.ToString();
            showSched(day);
            Panel1.Visible = true;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void showSched(string day)
        {
            user1.Text = "rsmith1";
            user2.Text = "sworki1";
            user3.Text = "hinjav2";
            user4.Text = "iupnam3";
            if (day == "Monday")
            {
                user1Time.Text = "8:00 - 11:00";
                user2Time.Text = "9:00 - 15:00";
                user3Time.Text = "Off";
                user4Time.Text = "8:00 - 15:00";
            }
            else if (day == "Tuesday")
            {
                user1Time.Text = "8:00 - 11:00 | 13:00 - 16:00";
                user2Time.Text = "Off";
                user3Time.Text = "Off";
                user4Time.Text = "8:00 - 11:00 | 13:00 - 16:00";
            }
            else if (day == "Wednesday")
            {
                user1Time.Text = "15:00 - 18:00";
                user2Time.Text = "9:00 - 15:00";
                user3Time.Text = "Off";
                user4Time.Text = "9:00 - 15:00";
            }
            else if (day == "Thursday")
            {
                user1Time.Text = "8:00 - 12:00";
                user2Time.Text = "Off";
                user3Time.Text = "Off";
                user4Time.Text = "Off";
            }
            else if (day == "Friday")
            {
                user1Time.Text = "8:00 - 11:00 | 13:00 - 16:30";
                user2Time.Text = "9:00 - 11:00 | 15:00 - 16:30";
                user3Time.Text = "8:00 - 15:00";
                user4Time.Text = "Off";
            }
        }
    }
}