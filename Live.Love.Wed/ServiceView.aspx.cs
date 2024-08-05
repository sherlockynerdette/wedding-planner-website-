using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using System.Configuration;
using System.Security.Cryptography;

namespace Live.Love.Wed
{
    public partial class ServiceView : System.Web.UI.Page
    {
        readonly Int32 myQty = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["SID"] != null)
            {
                if (!IsPostBack)
                {
                    divSuccess.Visible = false;
                    BindProductImage2();
                    BindProductDetails();
                    BindCartNumber();
                }
            }
            else
            {
                Response.Redirect("~/Services.aspx");
            }
        }

        private void BindProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["SID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_BindServiceDetails", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@SID", SID);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProductDetails.DataSource = dt;
                    rptrProductDetails.DataBind();
                    Session["CartSID"] = Convert.ToInt32(dt.Rows[0]["SID"].ToString());
                    Session["mySName"] = dt.Rows[0]["SName"].ToString();
                    Session["mySPrice"] = dt.Rows[0]["SPrice"].ToString();
                }

            }
        }

        private void BindServiceImage()
        {
            Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblServiceImages where SID='" + SID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrImage.DataSource = dt;
                        rptrImage.DataBind();
                    }
                }
            }
        }

        private void BindServiceImage2()
        {
            Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblServiceImages where SID='" + SID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrImage.DataSource = dt;
                        rptrImage.DataBind();
                    }
                }
            }
        }

        protected string GetActiveImgClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";

            }
        }

        protected void rptrServiceDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
                string SubCatID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;

                RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from tblSizes where CategoryID=" + CatID + " and SubCategoryID=" + SubCatID + "", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rblSize.DataSource = dt;
                            rblSize.DataBind();
                        }
                    }
                }

            }
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            AddToCartProduction();
            Response.Redirect("ProductView.aspx?SID=" + SID);
        }

        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "₹";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }

        public void BindCartNumber()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserIDD);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                            CartBadge.InnerText = CartQuantity;

                        }
                        else
                        {
                            CartBadge.InnerText = 0.ToString();
                        }
                    }
                }
            }
        }

        private void AddToCartProduction()
        {
            if (Session["Username"] != null)
            {
                Int32 UserID = Convert.ToInt32(Session["USERID"].ToString());
                Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LiveLoveWedDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SP_IsServiceExistInCart", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    cmd.Parameters.AddWithValue("@SID", SID);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            Int32 updateQty = Convert.ToInt32(dt.Rows[0]["Qty"].ToString());
                            SqlCommand myCmd = new SqlCommand("SP_UpdateCart", con)
                            {
                                CommandType = CommandType.StoredProcedure
                            };
                            myCmd.Parameters.AddWithValue("@Quantity", updateQty + 1);
                            myCmd.Parameters.AddWithValue("@CartSID", SID);
                            myCmd.Parameters.AddWithValue("@UserID", UserID);
                            Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                            BindCartNumber();
                            divSuccess.Visible = true;
                        }
                        else
                        {
                            SqlCommand myCmd = new SqlCommand("SP_InsertCart", con)
                            {
                                CommandType = CommandType.StoredProcedure
                            };
                            myCmd.Parameters.AddWithValue("@UID", UserID);
                            myCmd.Parameters.AddWithValue("@SID", Session["CartSID"].ToString());
                            myCmd.Parameters.AddWithValue("@SName", Session["mySName"].ToString());
                            myCmd.Parameters.AddWithValue("@SPrice", Session["mySPrice"].ToString());
                            myCmd.Parameters.AddWithValue("@Qty", myQty);
                            Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                            con.Close();
                            BindCartNumber();
                            divSuccess.Visible = true;
                        }
                    }
                }
            }
            else
            {
                Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
                Response.Redirect("Login.aspx?rurl=" + SID);
            }
        }
        protected void btnCart2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}