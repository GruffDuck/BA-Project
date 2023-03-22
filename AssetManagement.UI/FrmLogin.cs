using AssetManagement.DAL;
using AssetManagement.DTO;
using AssetManagement.DTO.DTO;
using AssetManagement.Provider;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace AssetManagement.UI
{

    public partial class FrmLogin : Form
    {
        string userName;
        LoginDTO login = new LoginDTO();
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            Login();
        }


        #region LoginFunc

        public void Login()
        {
            login.UserName = txtUserName.Text;
            login.Password = txtPassword.Text;
            userName = txtUserName.Text;
            LoginDAL loginDal = new LoginDAL();
            loginDal.Select(login);

            SqlDataReader rdr = loginDal.provider.ExecuteReader();
            if (rdr.Read())
            {
                MessageBox.Show("Hoşgeldiniz");

                MainForm frmMain = new MainForm(userName);
                frmMain.Show();

                //FrmListScreen frm = new FrmListScreen();
                //frm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Lütfen sistemde olan kullanıcı adı ve şifre ile giriş yapınız");
            }
        }
        #endregion



        private void FrmLogin_Load(object sender, EventArgs e)
        {

        }
        private void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }


    }
}

