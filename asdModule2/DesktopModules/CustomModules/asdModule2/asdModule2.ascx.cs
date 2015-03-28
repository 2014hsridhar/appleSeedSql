using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Appleseed Dependencies 
using Appleseed.Framework;
using Appleseed.Framework.Security;
using Appleseed.Framework.Settings;
using Appleseed.Framework.Site.Configuration;
using Appleseed.Framework.Web.UI.WebControls;
using History = Appleseed.Framework.History;
using Page = Appleseed.Framework.Web.UI.Page;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Text;

namespace asdModule2.DesktopModules.CustomModules.module2
{
    //public partial class asdModule2 : System.Web.UI.UserControl
    public partial class asdModule2 : PortalModuleControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LabelLinkButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["firstName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtFirstName")).Text;
            SqlDataSource1.InsertParameters["lastName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtLastName")).Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
            SqlDataSource1.InsertParameters["Company"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtCompany")).Text;

            SqlDataSource1.Insert();

        }
    }
}