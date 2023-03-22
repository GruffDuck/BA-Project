using AssetManagement.DTO.DTO;
using AssetManagement.Provider;
using AssetManagement.Provider.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using ListView = System.Windows.Forms.ListView;

namespace AssetManagement.DAL
{
    public class ListDAL : ISelect<SelectDTO>
    {
        ListView listView;
        public ListDAL(ListView view)
        {
            this.listView = view;
        }
        /*CategoryID = int.TryParse(rdr["CategoryID"].ToString(), out catID) ? catID : 0,
                            ID = rdr.GetInt32(0),
                            Price = decimal.TryParse(rdr["UnitPrice"].ToString(), out price) ? price : 0,
                            ProductName = rdr["ProductName"].ToString(),
                            Stock = int.TryParse(rdr["UnitsInStock"].ToString(), out stock) ? stock : 0*/
        MSSQLProvider provider = null;
        public void Select(SelectDTO state)
        {
            provider = new MSSQLProvider("select a.ID ,a.IsBarcode as [Barkod] ,at.Description, a.Cost,bm.Description as [Brand],bm.Model as [Model]\r\nfrom Asset a\r\njoin  BrandModel bm on a.BrandModelID=bm.ID\r\njoin AssetType at on at.ID=a.AssetTypeID");

            SqlDataReader rdr = provider.ExecuteReader();
            if (rdr.HasRows)
            {

                while (rdr.Read())
                {
                    ListViewItem item = new ListViewItem(rdr["ID"].ToString());
                    item.SubItems.Add(rdr["Barkod"].ToString());
                    item.SubItems.Add(rdr["Description"].ToString());
                    item.SubItems.Add(rdr["Cost"].ToString());
                    item.SubItems.Add(rdr["Brand"].ToString());
                    item.SubItems.Add(rdr["Model"].ToString());

                    listView.Items.Add(item);

                }
            }
        }

    }
}
