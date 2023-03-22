using AssetManagement.DAL;
using AssetManagement.DTO.DTO;
using AssetManagement.Provider;
using SolutionSepet.Extentions;
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
    public partial class FrmNewRecord : Form
    {
        BrandModelDTO brandModelDTO = null;
        BrandComboBoxDal brandComboBoxDal = new BrandComboBoxDal();
        private string userName;

        public FrmNewRecord()
        {
            InitializeComponent();
            rjToggleButton1.Checked = true;
        }

        public FrmNewRecord(string userName) : this()
        {
            this.userName = userName;
        }

        private void FrmNewRecord_Load(object sender, EventArgs e)
        {
            brandModelDTO = new BrandModelDTO();
            brandComboBoxDal = new BrandComboBoxDal(cmbBrand, cmbModel, cmbOrderType, cmbCurrency, cmbCurrentCurrency);
            brandComboBoxDal.Select(brandModelDTO);

        }

        private void rjToggleButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (rjToggleButton1.Checked == false)
            {
                txtBarcode.Enabled = true;
                txtAmount.Enabled = false;
                txtCurrency.Enabled = false;
            }
            else
            {
                txtBarcode.Enabled = false;
                txtAmount.Enabled = true;
                txtCurrency.Enabled = true;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (ComboboxValidation() && DTPValidation() && TxtCheck())
            {
                AssetDAL assetDAL = new AssetDAL();
                AssetInsertDTO insertDTO = null;

                assetDAL.Insert(insertDTO = new AssetInsertDTO
                {
                    Asset = new AssetDTO
                    {
                        hasBarcode = rjToggleButton1.Checked,
                        Cost = Convert.ToDecimal(txtCost.Text),
                        Guarantee = Convert.ToBoolean(cmbGuarantee.SelectedIndex),
                        CompanyID = 2,
                        Description = cmbBrand.Text,

                    },
                    AssetType = new AssetTypeDTO
                    {
                        Description = cmbOrderType.Text,

                    },
                    AssetOwner = new AssetOwnerDTO
                    {
                        StartDate = dtEntry.Value,
                        EndDate = dtRetire.Value
                    },
                    Brand = new BrandModelDTO
                    {
                        Description = cmbBrand.Text,
                        Model = cmbModel.Text,
                    },
                    Currency = new CurrencyDTO
                    {
                        Description = cmbCurrency.Text,
                    },
                    Login = new LoginDTO
                    {
                        UserName = userName
                    }

                });
                DialogResult res = new DialogResult();
                res = MessageBox.Show("Kayıt başarılı. Yeni kayıt almak ister misiniz.", "Kayıt", MessageBoxButtons.YesNo);
                if (res == DialogResult.Yes)
                {
                    Clear();
                }
                else if (res == DialogResult.No)
                {
                    btnAdd.Enabled = false;
                }
            }
            else
            {
                MessageBox.Show("Lütfen boş alanları doldurunuz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        #region Combobox
        public bool ComboboxValidation()
        {


            return cmbBrand.IsNotEmptyComboBox() && cmbOrderType.IsNotEmptyComboBox() && cmbModel.IsNotEmptyComboBox() && cmbGuarantee.IsNotEmptyComboBox() && cmbBrand.IsNotEmptyComboBox() && cmbCurrency.IsNotEmptyComboBox() && cmbCurrentCurrency.IsNotEmptyComboBox();





        }

        #endregion
        #region DateTimePicker
        public bool DTPValidation()
        {
            return InputValidations.ValidateDateRange(dtEntry.Value.Date, dtRetire.Value.Date);
        }
        #endregion
        #region TextBox Check
        public bool TxtCheck()
        {
            return txtCost.Text.IsValidEmptyNumeric() && txtCosts.Text.IsValidEmptyNumeric() && txtDesc.Text.IsValidEmptyNumeric();
        }
        #endregion
        private void cmbBrand_SelectedIndexChanged(object sender, EventArgs e)
        {

            brandModelDTO = new BrandModelDTO();
            brandModelDTO.Description = cmbBrand.SelectedItem.ToString();
            ComboboxListDAL comboboxListDAL = new ComboboxListDAL();
            cmbModel.Items.Clear();
            cmbModel.Text = string.Empty;
            comboboxListDAL.Select(brandModelDTO);
            comboboxListDAL.SetCombo(cmbModel);
            MessageBox.Show(ComboboxIDDTO.AssetTypeID[cmbOrderType.SelectedIndex].ToString());


        }

        private void Clear()
        {
            cmbBrand.Text = cmbCurrency.Text = cmbCurrentCurrency.Text = cmbGuarantee.Text = cmbModel.Text = cmbOrderType.Text = string.Empty;
            txtAmount.Text = txtBarcode.Text = txtCost.Text = txtCurrency.Text = txtCosts.Text = txtDesc.Text = string.Empty;
            dtEntry.Value = DateTime.Now;
            dtRetire.Value = DateTime.Now;
        }

        private void txtCosts_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }

        private void cmbCurrentCurrency_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }
    }

}
