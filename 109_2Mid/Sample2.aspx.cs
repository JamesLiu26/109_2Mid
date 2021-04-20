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
                for (int i = 0; i < dbl_Place.Items.Count; i++)
                {
                    if (i <= 2)
                        dbl_Place.Items[i].Enabled = true;
                    else
                        dbl_Place.Items[i].Enabled = false;
                }
            }
            else
            {
                for (int i = 0; i < dbl_Place.Items.Count; i++)
                {
                    if (i > 2)
                        dbl_Place.Items[i].Enabled = true;
                    else
                        dbl_Place.Items[i].Enabled = false;
                }
            }



            


        }

        protected void rbl_Res_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbl_Res.SelectedIndex == 0)
                tb_Des.Visible = false;
            else
                tb_Des.Visible = true;
        }
    }
}