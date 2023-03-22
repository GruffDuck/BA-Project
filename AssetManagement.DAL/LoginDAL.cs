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
    public class LoginDAL : ISelect<LoginDTO>
    {

        public MSSQLProvider provider = null;

        public void Select(LoginDTO login)
        {

            provider = new MSSQLProvider("Select * from Login where UserName='" + login.UserName + "'And Password='" + login.Password + "'");


        }
    }
}
