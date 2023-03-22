using AssetManagement.DAL;
using AssetManagement.DTO.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AssetManagement.UI
{
    public partial class FrmListScreen : Form
    {
        SelectDTO select = null;
        public FrmListScreen()
        {
            InitializeComponent();
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void FrmListScreen_Load(object sender, EventArgs e)
        {
            ListDAL list = new ListDAL(listView1);
            list.Select(select);

        }
    }
}
