using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _109_2Mid {
    public partial class Sample2 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btn_Sub_Click(object sender, EventArgs e)
        {
            lb_Msg.Text = "";
            lb_Msg.Text += dbl_Area.Text + "<br/>" + dbl_Place.Text + "<br/>";

            if (tb_Name.Text != "")
                lb_Msg.Text += tb_Name.Text+"<br/>";

            if (tb_Des.Visible == true)
                lb_Msg.Text += tb_Des.Text;
        }


        protected void dbl_Area_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dbl_Area.SelectedIndex == 0)
            {
                dbl_Place.Items[0].Enabled = true;
                dbl_Place.Items[1].Enabled = true;
                dbl_Place.Items[2].Enabled = true;
                dbl_Place.Items[3].Enabled = false;
                dbl_Place.Items[4].Enabled = false;
                dbl_Place.Items[5].Enabled = false;
            }
            else
            {
                dbl_Place.Items[0].Enabled = false;
                dbl_Place.Items[1].Enabled = false;
                dbl_Place.Items[2].Enabled = false;
                dbl_Place.Items[3].Enabled = true;
                dbl_Place.Items[4].Enabled = true;
                dbl_Place.Items[5].Enabled = true;
            }
            
        }

        protected void rbl_Res_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbl_Res.SelectedIndex == 0) { 
                tb_Des.Visible = false;
                tb_Des.Height = 0;
            }
            else
            {
                tb_Des.Visible = true;
                lb_Msg.Text += tb_Des.Text;
            }
        }
    }
}