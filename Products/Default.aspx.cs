using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Products
{
    public partial class Default : System.Web.UI.Page
    {
        Products_VTEntities connection = new Products_VTEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Products addProduct = new Products();

            addProduct.ProductCode = Convert.ToInt32(txtCode.Text);
            addProduct.ProductName = txtName.Text;
            addProduct.Description = txtDesc.Text;
            addProduct.StockAmount = Convert.ToInt32(txtStock.Text);
            addProduct.Price = Convert.ToInt32(txtPrice.Text);

            try
            {
                connection.Products.Add(addProduct);
                connection.SaveChanges();
                lblResult.Text = "Saving process is done!";


            }
            catch (Exception)
            {
                lblResult.Text = "Saving process is failed!";


            }

        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            connection.Products.Load();
            GridView1.DataSource = connection.Products.Local;
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int pCode = Convert.ToInt32(txtCode.Text);
            var query = (from record in connection.Products
                         where record.ProductCode == pCode
                         select record).ToList();
            if(query.Count  == 1)
            {
                connection.Products.Remove(query[0]);
                connection.SaveChanges();
                lblResult.Text = "Record is removed successfuly!";

            }
            else
            {
                lblResult.Text = "Record is not found in database!";

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int pCode =Convert.ToInt32(txtCode.Text);
            var query = (from record in connection.Products
                         where record.ProductCode == pCode
                         select record).ToList();

            if (query.Count == 1)
            {
                
                query[0].ProductName = txtName.Text;
                query[0].StockAmount = int.Parse(txtStock.Text);
                query[0].Price = int.Parse(txtPrice.Text);
                query[0].Description = txtDesc.Text;
                connection.SaveChanges();
                lblResult.Text = "Stocks are succesfully updated";


            }
            else
            {
                lblResult.Text = "Stocks update process is failed!";

            }
        }
    }
}