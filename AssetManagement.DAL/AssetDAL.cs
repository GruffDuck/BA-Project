using AssetManagement.DTO.DTO;
using AssetManagement.Provider;
using AssetManagement.Provider.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AssetManagement.DAL
{
    public class AssetDAL : IInsert<AssetInsertDTO>
    {
        SqlTransaction transaction = null;
       
        MSSQLProvider mSSQLProvider = new MSSQLProvider("select * from Asset");
        
        public void Insert(AssetInsertDTO state)
        {

            #region Old System
            //List<SqlParameter[]> parameter = new List<SqlParameter[]>();
            //List<SqlParameter> parameters = new List<SqlParameter>();
            //List<SqlParameter> parameter1 = new List<SqlParameter>();
            //List<string> cmdText = new List<string>();
            //#region AssetType
            //cmdText.Add("SELECT COUNT(*) FROM AssetType WHERE Description = @assetType");
            //parameters.Add(new SqlParameter("@assetType", state.AssetType.Description));
            //int count0 = Convert.ToInt32(mSSQLProvider.ExecuteScalar());
            //if (count0 > 0)
            //{
            //    cmdText.Add("INSERT INTO AssetType (Description) VALUES (@assetType)");
            //    parameters.Add(new SqlParameter("@assetType", state.AssetType.Description));
            //    parameter.Add(parameters.ToArray());
            //    cmdText.Add("cmdText.Add(\"INSERT INTO AssetType (Description) VALUES (@assetType)\");");
            //}
            //else
            //{
            //    MessageBox.Show("Var zaten");
            //}
            //#endregion

            //#region Currency
            //cmdText.Add("SELECT COUNT(*) FROM AssetType WHERE Description = @assetType");
            //parameters.Add(new SqlParameter("@assetType", state.AssetType.Description));
            //int count1 = Convert.ToInt32(mSSQLProvider.ExecuteScalar());
            //if (count0 > 0)
            //{
            //    cmdText.Add("INSERT INTO AssetType (Description) VALUES (@assetType)");
            //    parameters.Add(new SqlParameter("@assetType", state.AssetType.Description));
            //    parameter.Add(parameters.ToArray());
            //}
            //else
            //{
            //    MessageBox.Show("Var zaten");
            //}
            //#endregion

            //mSSQLProvider = new MSSQLProvider(cmdText.ToArray(), parameter, transaction);

            #endregion


            #region New System

            mSSQLProvider.OpenConnection();
            SqlTransaction tran = mSSQLProvider.conn.BeginTransaction();
            try
            {
                mSSQLProvider = new MSSQLProvider("sp_InsertAsset", CommandType.StoredProcedure, transaction);
                List<SqlParameter[]> sqlParameters = new List<SqlParameter[]>();
                List<SqlParameter> sqls = new List<SqlParameter>();
                sqls.Add(new SqlParameter("@barcode", state.Asset.hasBarcode));
                sqls.Add(new SqlParameter("@assetType", state.AssetType.Description));
                sqls.Add(new SqlParameter("@startDate", state.AssetOwner.StartDate));
                sqls.Add(new SqlParameter("@endDate", state.AssetOwner.EndDate));
                sqls.Add(new SqlParameter("@money", state.Asset.Cost));
                sqls.Add(new SqlParameter("@brand", state.Brand.Description));
                sqls.Add(new SqlParameter("@model", state.Brand.Model));
                sqls.Add(new SqlParameter("@cost", state.Currency.Description));
                sqls.Add(new SqlParameter("@guarantee", state.Asset.Guarantee));
                sqls.Add(new SqlParameter("@companyId", state.Asset.CompanyID));
                sqls.Add(new SqlParameter("@retireDate", state.AssetOwner.EndDate));
                sqls.Add(new SqlParameter("@createdBy", state.Login.UserName));
               

                sqlParameters.Add(sqls.ToArray());
                mSSQLProvider.AddParameter(sqlParameters[0]);
                int query = mSSQLProvider.ExecuteNonQuery();
                tran.Commit();
            }
            catch (Exception ex)
            {

                tran.Rollback();
            }
            finally { mSSQLProvider.CloseConnection(); }

            //Debug.WriteLine(mSSQLProvider.ExecuteNonQuery()); 
            #endregion


        }

    }
}
