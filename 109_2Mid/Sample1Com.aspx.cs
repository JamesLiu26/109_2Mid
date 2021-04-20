using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _109_2Mid {
    public partial class Sample1Com : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Form.Get("tb_Acc") != "")
                lb_Res.Text += Request.Form.Get("tb_Acc") + "<br/>";

            if (Request.Form.Get("tb_Pass") != "")
                lb_Res.Text += Request.Form.Get("tb_Pass") + "<br/>";

            lb_Res.Text += Request.Form.Get("rbg_Interest");
        }
    }
}