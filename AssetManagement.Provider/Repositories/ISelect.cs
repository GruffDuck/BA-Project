using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.Provider.Repositories
{
    public interface ISelect< T> where T : class
    {
        void Select(T state);
    }
}
