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

namespace AssetManagement.DAL
{
    public class BrandComboBoxDal : ISelect<BrandModelDTO>
    {
        private ComboBox cmbMarka;
        private ComboBox cmbModel;
        private ComboBox cmbUrunTip;
        private ComboBox cmbCurrency;
        private ComboBox cmbCurrentCurrency;
        List<string[]> column = new List<string[]>();


        public BrandComboBoxDal() { }
        public BrandComboBoxDal(ComboBox cmbMarka, ComboBox cmbModel, ComboBox cmbUrunTip, ComboBox cmbCurrency, ComboBox cmbCurrentCurrency)
        {
            this.cmbMarka = cmbMarka;
            this.cmbModel = cmbModel;
            this.cmbUrunTip = cmbUrunTip;
            this.cmbCurrency = cmbCurrency;
            this.cmbCurrentCurrency = cmbCurrentCurrency;

        }
        #region TODO
        //public MSSQLProvider GetMSSQLProvider(string query)
        //{
        //    return new MSSQLProvider(query);
        //} 
        #endregion

        public void Select(BrandModelDTO bModel)
        {
            MSSQLProvider myDatabase = new MSSQLProvider("select * from BrandModel");
            MSSQLProvider myDatabase2 = new MSSQLProvider("select  ID,Description from AssetType ");
            MSSQLProvider myDatabase3 = new MSSQLProvider("select  Description from Currency ");



            SqlDataReader dr;
            SqlDataReader dr2;
            SqlDataReader dr3;


            ComboBox[] box1 = { cmbMarka };
            ComboBox[] box2 = { cmbUrunTip };
            ComboBox[] box3 = { cmbCurrency, cmbCurrentCurrency };
            string[] columns1 = { "Description" };
            string[] columns2 = { "ID", "Description" };
            string[] columns3 = { "Description", "Description" };
            column.Add(columns2);
            dr = myDatabase.ExecuteReader();
            dr2 = myDatabase2.ExecuteReader();
            dr3 = myDatabase3.ExecuteReader();
            FillComboBoxes(dr, box1, columns1);
            FillComboBoxes(dr2, box2, columns2);
            FillComboBoxes(dr3, box3, columns3);



        }

        public void ReadeableData(SqlDataReader sqlDataReader, ComboBox cmbMarka, ComboBox cmbModel)
        {
            while (sqlDataReader.Read())
            {
                cmbModel.Items.Add(sqlDataReader["Model"]);
                cmbMarka.Items.Add(sqlDataReader["Description"]);


            }
        }
        public void FillComboBoxes(SqlDataReader sqlDataReader, ComboBox[] boxes, string[] columns)
        {
            List<string[]> strings = new List<string[]>();
            strings.Add(columns);


            while (sqlDataReader.Read())
            {

                if (column[0] == strings[0])
                {
                    int id = Convert.ToInt32(sqlDataReader[columns[0]]);
                    ComboboxIDDTO.AssetTypeID.Add(id);
                    boxes[0].Items.Add(sqlDataReader[columns[1]]);

                }

                if (boxes.Length == columns.Length)
                {

                    for (int i = 0; i < boxes.Length; i++)
                    {
                        boxes[i].Items.Add(sqlDataReader[columns[i]]);
                    }
                }

            }
        }

    }
}
