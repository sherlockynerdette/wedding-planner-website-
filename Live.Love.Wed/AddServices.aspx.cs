using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;

namespace Live.Love.Wed
{
    public partial class AddServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //when page first time run then this code will execute
                BindCategory();
                ddlSubCategory.Enabled = false;

            }
        }
        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertService", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SName", txtServiceName.Text);
                cmd.Parameters.AddWithValue("@SPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@SCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@SSubCatID", ddlSubCategory.SelectedItem.Value);

                con.Open();
                Int64 SID = Convert.ToInt64(cmd.ExecuteScalar());
                if (fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/ServiceImages/") + SID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);

                    //Insert and upload images
                    fuImg01.SaveAs(SavePath + "\\" + txtServiceName.Text.ToString().Trim() + "01" + Extention);

                    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                    SqlCommand cmd3 = new SqlCommand("insert into tblServiceImages(SID,Name,Extention) values(@SID,@Name,@Extention)", con);
                    cmd3.Parameters.AddWithValue("@SID", Convert.ToInt32(SID));
                    cmd3.Parameters.AddWithValue("@Name", txtServiceName.Text.ToString().Trim() + "01");
                    cmd3.Parameters.AddWithValue("@Extention", Extention);
                    cmd3.ExecuteNonQuery();
                }

                Response.Write("<script> alert('Product Added Succesfully'); </script>");
                con.Close();
            }
        }


        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCategory.Enabled = true;
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));

                }
            }
        }
    }
}