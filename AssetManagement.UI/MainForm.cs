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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace AssetManagement.UI
{
    public partial class MainForm : Form
    {
        private string userName;
        SelectDTO selectDTO = null;
        public MainForm()
        {
            InitializeComponent();

        }

        public MainForm(string userName) : this()
        {
            this.userName = userName;
        }

        private void MainForm_Load(object sender, EventArgs e)
        {

            ListDAL list = new ListDAL(listView2);
            list.Select(selectDTO);
            label1.Text = userName;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FrmNewRecord frmNewRecord = new FrmNewRecord(userName);
            frmNewRecord.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            FrmLogin frmLogin = new FrmLogin();
            frmLogin.Show();
            this.Hide();
        }

        private void btnAsset_Click(object sender, EventArgs e)
        {
            listView1.Visible = false;
            comboBox1.Visible = false;
            listView2.Visible = true;
            label2.Visible = false;
            txtR.Visible = false;
            dtR.Visible = false;
            btnR.Visible = false;
        }

        private void btnReport_Click(object sender, EventArgs e)
        {
            listView1.Visible = true;
            comboBox1.Visible = true;
            label2.Visible = true;
            txtR.Visible = false;
            dtR.Visible = false;
            listView2.Visible = false;
            btnR.Visible = true;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 0)
            {
                dtR.Visible = true;
                txtR.Visible = false;
                listView1.Items.Clear();
            }
            if (comboBox1.SelectedIndex == 1)
            {
                dtR.Visible = false;
                txtR.Visible = true;
                listView1.Items.Clear();
            }
        }

        private void btnR_Click(object sender, EventArgs e)
        {
            listView1.Items.Clear();
            ReportListDal reportListDal = new ReportListDal(listView1, txtR, dtR);
            AssetDTO assetDTO = new AssetDTO();
            reportListDal.Select(assetDTO);
        }
    }
}
