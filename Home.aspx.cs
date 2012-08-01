using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindHomePage();
        }
    }

    private void BindHomePage()
    {
        using (var obj = new InfinitiClothDataContext())
        {
            GridView1.DataSource = from a in obj.Infiniti_SubCatarories select a;
            GridView1.DataBind();


            var source = InfinitiHelper.Context.sp_HomePage().Select(a => a);
            DataList1.DataSource = source;
            DataList1.DataBind();

            foreach (DataListItem item in DataList1.Items)
            {
                DataList dl = (DataList)item.FindControl("DataList2");
                int designid = Convert.ToInt32(DataList1.DataKeys[item.ItemIndex]);

                //Dictionary<int, string> colorImage = new Dictionary<int, string>();
                //var colorid = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == designid).Select(a => a.fkColor_id).ToList();
                var ggg = from c in InfinitiHelper.Context.Infiniti_ProductDetails
                          where c.fkDesign_id == designid
                          join o in InfinitiHelper.Context.Infiniti_ColorDetails on c.fkColor_id equals o.Color_id
                          select new
                          {
                              Color_id = o.Color_id,
                              Product_id = c.Product_id,
                              Color_image_url = o.Color_image_url
                          };
                //var aa = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => colorid.Contains(a.Color_id));
                //foreach (var items in colorid)
                //{
                //    var source = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => a.Color_id == items).Select(a => a);
                //    if (source.Count() == 1)
                //    {
                //        foreach (var item1 in source)
                //        {
                //            colorImage.Add(item1.Color_id, item1.Color_image_url);
                //        }
                //    }
                //}

                dl.DataSource = ggg;
                dl.DataBind();
            }
        }
    }
    private void BindData(int categoryId)
    {
        using (var obj = new InfinitiClothDataContext())
        {
            GridView1.DataSource = from a in obj.Infiniti_SubCatarories where a.fkCatagory_id == categoryId select a;
            GridView1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        BindData(1);
        BindForMen();
    }

    private void BindForMen()
    {
        using (var obj = new InfinitiClothDataContext())
        {
            var source = InfinitiHelper.Context.sp_MenHomePage().Select(a => a);
            DataList1.DataSource = source;
            DataList1.DataBind();

            foreach (DataListItem item in DataList1.Items)
            {
                DataList dl = (DataList)item.FindControl("DataList2");
                int designid = Convert.ToInt32(DataList1.DataKeys[item.ItemIndex]);

                //Dictionary<int, string> colorImage = new Dictionary<int, string>();
                //var colorid = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == designid).Select(a => a.fkColor_id).ToList();
                var ggg = from c in InfinitiHelper.Context.Infiniti_ProductDetails
                          where c.fkDesign_id == designid
                          join o in InfinitiHelper.Context.Infiniti_ColorDetails on c.fkColor_id equals o.Color_id
                          select new
                          {
                              Color_id = o.Color_id,
                              Product_id = c.Product_id,
                              Color_image_url = o.Color_image_url
                          };
                //var aa = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => colorid.Contains(a.Color_id));
                //foreach (var items in colorid)
                //{
                //    var source = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => a.Color_id == items).Select(a => a);
                //    if (source.Count() == 1)
                //    {
                //        foreach (var item1 in source)
                //        {
                //            colorImage.Add(item1.Color_id, item1.Color_image_url);
                //        }
                //    }
                //}

                dl.DataSource = ggg;
                dl.DataBind();
            }
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        BindData(2);
        BindWomen();
    }

    private void BindWomen()
    {
        using (var obj = new InfinitiClothDataContext())
        {
            var source = InfinitiHelper.Context.sp_WomenHomePage().Select(a => a);
            DataList1.DataSource = source;
            DataList1.DataBind();

            foreach (DataListItem item in DataList1.Items)
            {
                DataList dl = (DataList)item.FindControl("DataList2");
                int designid = Convert.ToInt32(DataList1.DataKeys[item.ItemIndex]);

                //Dictionary<int, string> colorImage = new Dictionary<int, string>();
                //var colorid = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == designid).Select(a => a.fkColor_id).ToList();
                var ggg = from c in InfinitiHelper.Context.Infiniti_ProductDetails
                          where c.fkDesign_id == designid
                          join o in InfinitiHelper.Context.Infiniti_ColorDetails on c.fkColor_id equals o.Color_id
                          select new
                          {
                              Color_id = o.Color_id,
                              Product_id = c.Product_id,
                              Color_image_url = o.Color_image_url
                          };
                //var aa = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => colorid.Contains(a.Color_id));
                //foreach (var items in colorid)
                //{
                //    var source = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => a.Color_id == items).Select(a => a);
                //    if (source.Count() == 1)
                //    {
                //        foreach (var item1 in source)
                //        {
                //            colorImage.Add(item1.Color_id, item1.Color_image_url);
                //        }
                //    }
                //}

                dl.DataSource = ggg;
                dl.DataBind();
            }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        BindDatalist(Convert.ToInt32(e.CommandArgument));
    }

    private void BindDatalist(int subCategoryId)
    {
        using (var obj = new InfinitiClothDataContext())
        {
            var source = InfinitiHelper.Context.sp_designhome(subCategoryId).Select(a => a);
            DataList1.DataSource = source;
            DataList1.DataBind();

            foreach (DataListItem item in DataList1.Items)
            {
                DataList dl = (DataList)item.FindControl("DataList2");
                int designid = Convert.ToInt32(DataList1.DataKeys[item.ItemIndex]);

                //Dictionary<int, string> colorImage = new Dictionary<int, string>();
                //var colorid = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == designid).Select(a => a.fkColor_id).ToList();
                var ggg = from c in InfinitiHelper.Context.Infiniti_ProductDetails
                          where c.fkDesign_id == designid
                          join o in InfinitiHelper.Context.Infiniti_ColorDetails on c.fkColor_id equals o.Color_id
                          select new
                          {
                              Color_id = o.Color_id,
                              Product_id = c.Product_id,
                              Color_image_url = o.Color_image_url
                          };
                //var aa = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => colorid.Contains(a.Color_id));
                //foreach (var items in colorid)
                //{
                //    var source = InfinitiHelper.Context.Infiniti_ColorDetails.Where(a => a.Color_id == items).Select(a => a);
                //    if (source.Count() == 1)
                //    {
                //        foreach (var item1 in source)
                //        {
                //            colorImage.Add(item1.Color_id, item1.Color_image_url);
                //        }
                //    }
                //}

                dl.DataSource = ggg;
                dl.DataBind();
            }
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["ProductId"] = e.CommandArgument;
        Response.Redirect("Description.aspx");
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "colorpatten")
        {
            //int product_id = Convert.ToInt32(e.CommandArgument);
            ImageButton imhh = (ImageButton)e.CommandSource;
            DataListItem dl = (DataListItem)imhh.Parent.Parent.Parent;
            int product_id = Convert.ToInt32(imhh.CommandArgument); ;
            ImageButton img = (ImageButton)dl.FindControl("ImageButton1");
            img.CommandArgument = product_id.ToString();
            LinkButton LinkButton7 = (LinkButton)dl.FindControl("LinkButton7");
            using (var obj = new InfinitiClothDataContext())
            {
                img.ImageUrl = obj.Infiniti_ProductDetails.Single(a => a.Product_id == product_id).Product_img_url_small;
                LinkButton7.CommandArgument = product_id.ToString();
            }

            //DataListItem img = (DataListItem)((DataList)DataList1.FindControl("DataList2")).FindControl("imgBtnColor");
            //int designid = Convert.ToInt32(DataList1.DataKeys[ItemIndex]);
            //ImageButton img = (ImageButton)DataList1.FindControl("ImageButton1");
            //img.ImageUrl = "~/Images/Product/Large/Adidas-Adidas-Cream-Polo-T-Shirt-3287-192101-1-catalog.png";
        }
    }

}