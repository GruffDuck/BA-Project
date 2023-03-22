using AssetManagement.DTO.DTO;
using AssetManagement.Provider;
using AssetManagement.Provider.Repositories;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace AssetManagement.DAL
{
    public class ReportListDal : ISelect<AssetDTO>
    {
        public ListView list;
        public TextBox txt;
        public DateTimePicker dtp;

        public ReportListDal(ListView list, TextBox txt, DateTimePicker dtp)
        {
            this.list = list;
            this.txt = txt;
            this.dtp = dtp;
        }

        public void Select(AssetDTO state)
        {
            if (txt.Visible == false && dtp.Visible == true)
            {

                MSSQLProvider sqlProvider = new MSSQLProvider("\r\nselect a.ID ,a.IsBarcode as [Barkod] ,at.Description, a.Cost,bm.Description as [Brand],bm.Model as [Model],a.EntryDate,a.RetireDate,a.CreatedBy from  Asset a  join  BrandModel bm on a.BrandModelID=bm.ID join AssetType at on at.ID=a.AssetTypeID where a.EntryDate<@Date");
                List<SqlParameter> sqlParameters = new List<SqlParameter>();
                sqlParameters.Add(new SqlParameter("@Date", dtp.Value));
                sqlProvider.AddParameter(sqlParameters.ToArray());
                SqlDataReader rdr = sqlProvider.ExecuteReader();
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
                        item.SubItems.Add(rdr["EntryDate"].ToString());
                        item.SubItems.Add(rdr["RetireDate"].ToString());
                        item.SubItems.Add(rdr["CreatedBy"].ToString());


                        list.Items.Add(item);

                    }
                }
            }
            else if (txt.Visible == true && dtp.Visible == false)
            {

                MSSQLProvider sqlProvider = new MSSQLProvider("\r\nselect a.ID ,a.IsBarcode as [Barkod] ,at.Description, a.Cost,bm.Description as [Brand],bm.Model as [Model],a.EntryDate,a.RetireDate,a.CreatedBy from  Asset a  join  BrandModel bm on a.BrandModelID=bm.ID join AssetType at on at.ID=a.AssetTypeID where a.CreatedBy=@createdBy");
                List<SqlParameter> sqlParameters = new List<SqlParameter>();
                sqlParameters.Add(new SqlParameter("@createdBy", txt.Text));
                sqlProvider.AddParameter(sqlParameters.ToArray());
                SqlDataReader rdr = sqlProvider.ExecuteReader();
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
                        item.SubItems.Add(rdr["EntryDate"].ToString());
                        item.SubItems.Add(rdr["RetireDate"].ToString());
                        item.SubItems.Add(rdr["CreatedBy"].ToString());


                        list.Items.Add(item);

                    }
                }
            }
        }
    }
}
