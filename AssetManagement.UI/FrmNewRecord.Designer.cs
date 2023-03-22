namespace AssetManagement.UI
{
    partial class FrmNewRecord
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtBarcode = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cmbOrderType = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbBrand = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cmbModel = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cmbGuarantee = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDesc = new System.Windows.Forms.TextBox();
            this.dtEntry = new System.Windows.Forms.DateTimePicker();
            this.label7 = new System.Windows.Forms.Label();
            this.dtRetire = new System.Windows.Forms.DateTimePicker();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtCosts = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cmbCurrency = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtCost = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.cmbCurrentCurrency = new System.Windows.Forms.ComboBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.txtAmount = new System.Windows.Forms.TextBox();
            this.txtCurrency = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.rjToggleButton1 = new AssetManagement.UI.Buttons.RJToggleButton();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 101);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Barkod";
            // 
            // txtBarcode
            // 
            this.txtBarcode.Location = new System.Drawing.Point(45, 138);
            this.txtBarcode.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtBarcode.Name = "txtBarcode";
            this.txtBarcode.Size = new System.Drawing.Size(189, 22);
            this.txtBarcode.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(45, 178);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Ürün Tipi";
            // 
            // cmbOrderType
            // 
            this.cmbOrderType.FormattingEnabled = true;
            this.cmbOrderType.Location = new System.Drawing.Point(45, 217);
            this.cmbOrderType.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbOrderType.Name = "cmbOrderType";
            this.cmbOrderType.Size = new System.Drawing.Size(189, 24);
            this.cmbOrderType.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(45, 261);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Marka";
            // 
            // cmbBrand
            // 
            this.cmbBrand.FormattingEnabled = true;
            this.cmbBrand.Location = new System.Drawing.Point(45, 299);
            this.cmbBrand.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbBrand.Name = "cmbBrand";
            this.cmbBrand.Size = new System.Drawing.Size(189, 24);
            this.cmbBrand.TabIndex = 3;
            this.cmbBrand.SelectedIndexChanged += new System.EventHandler(this.cmbBrand_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(41, 346);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(48, 16);
            this.label4.TabIndex = 2;
            this.label4.Text = "Modeli";
            // 
            // cmbModel
            // 
            this.cmbModel.FormattingEnabled = true;
            this.cmbModel.Location = new System.Drawing.Point(41, 383);
            this.cmbModel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbModel.Name = "cmbModel";
            this.cmbModel.Size = new System.Drawing.Size(189, 24);
            this.cmbModel.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(41, 428);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(80, 16);
            this.label5.TabIndex = 2;
            this.label5.Text = "Garantili Mi?";
            // 
            // cmbGuarantee
            // 
            this.cmbGuarantee.FormattingEnabled = true;
            this.cmbGuarantee.Items.AddRange(new object[] {
            "No",
            "Yes"});
            this.cmbGuarantee.Location = new System.Drawing.Point(41, 466);
            this.cmbGuarantee.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbGuarantee.Name = "cmbGuarantee";
            this.cmbGuarantee.Size = new System.Drawing.Size(189, 24);
            this.cmbGuarantee.TabIndex = 3;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(39, 506);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 16);
            this.label6.TabIndex = 0;
            this.label6.Text = "Açıklama";
            // 
            // txtDesc
            // 
            this.txtDesc.Location = new System.Drawing.Point(41, 543);
            this.txtDesc.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtDesc.Multiline = true;
            this.txtDesc.Name = "txtDesc";
            this.txtDesc.Size = new System.Drawing.Size(189, 82);
            this.txtDesc.TabIndex = 1;
            // 
            // dtEntry
            // 
            this.dtEntry.Location = new System.Drawing.Point(427, 138);
            this.dtEntry.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dtEntry.Name = "dtEntry";
            this.dtEntry.Size = new System.Drawing.Size(200, 22);
            this.dtEntry.TabIndex = 4;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(427, 100);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(116, 16);
            this.label7.TabIndex = 5;
            this.label7.Text = "Ürünün Giriş Tarihi";
            // 
            // dtRetire
            // 
            this.dtRetire.Location = new System.Drawing.Point(427, 217);
            this.dtRetire.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dtRetire.Name = "dtRetire";
            this.dtRetire.Size = new System.Drawing.Size(200, 22);
            this.dtRetire.TabIndex = 4;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(427, 178);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(143, 16);
            this.label8.TabIndex = 5;
            this.label8.Text = "Ürünün Emeklilik Tarihi";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(424, 261);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(98, 16);
            this.label9.TabIndex = 0;
            this.label9.Text = "Ürünün Maliyeti";
            // 
            // txtCosts
            // 
            this.txtCosts.Location = new System.Drawing.Point(427, 298);
            this.txtCosts.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtCosts.Name = "txtCosts";
            this.txtCosts.Size = new System.Drawing.Size(200, 22);
            this.txtCosts.TabIndex = 1;
            this.txtCosts.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCosts_KeyPress);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(427, 346);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(117, 16);
            this.label10.TabIndex = 2;
            this.label10.Text = "Ürünün Para Birimi";
            // 
            // cmbCurrency
            // 
            this.cmbCurrency.FormattingEnabled = true;
            this.cmbCurrency.Location = new System.Drawing.Point(427, 383);
            this.cmbCurrency.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbCurrency.Name = "cmbCurrency";
            this.cmbCurrency.Size = new System.Drawing.Size(200, 24);
            this.cmbCurrency.TabIndex = 3;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(424, 428);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(129, 16);
            this.label11.TabIndex = 0;
            this.label11.Text = "Ürünün Güncel Fiyatı";
            // 
            // txtCost
            // 
            this.txtCost.Location = new System.Drawing.Point(427, 465);
            this.txtCost.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtCost.Name = "txtCost";
            this.txtCost.Size = new System.Drawing.Size(200, 22);
            this.txtCost.TabIndex = 1;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(424, 506);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(194, 16);
            this.label12.TabIndex = 2;
            this.label12.Text = "Ürünün Güncel Fiyat Para Birimi";
            // 
            // cmbCurrentCurrency
            // 
            this.cmbCurrentCurrency.FormattingEnabled = true;
            this.cmbCurrentCurrency.Location = new System.Drawing.Point(424, 543);
            this.cmbCurrentCurrency.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbCurrentCurrency.Name = "cmbCurrentCurrency";
            this.cmbCurrentCurrency.Size = new System.Drawing.Size(200, 24);
            this.cmbCurrentCurrency.TabIndex = 3;
            this.cmbCurrentCurrency.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.cmbCurrentCurrency_KeyPress);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(424, 601);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(200, 23);
            this.btnAdd.TabIndex = 6;
            this.btnAdd.Text = "Kaydet";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtAmount
            // 
            this.txtAmount.Enabled = false;
            this.txtAmount.Location = new System.Drawing.Point(173, 91);
            this.txtAmount.Margin = new System.Windows.Forms.Padding(4);
            this.txtAmount.Name = "txtAmount";
            this.txtAmount.Size = new System.Drawing.Size(47, 22);
            this.txtAmount.TabIndex = 8;
            // 
            // txtCurrency
            // 
            this.txtCurrency.Enabled = false;
            this.txtCurrency.Location = new System.Drawing.Point(229, 91);
            this.txtCurrency.Margin = new System.Windows.Forms.Padding(4);
            this.txtCurrency.Name = "txtCurrency";
            this.txtCurrency.Size = new System.Drawing.Size(47, 22);
            this.txtCurrency.TabIndex = 9;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(16, 31);
            this.label13.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(102, 16);
            this.label13.TabIndex = 10;
            this.label13.Text = "Barkodsuz Ürün";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(169, 71);
            this.label14.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(43, 16);
            this.label14.TabIndex = 11;
            this.label14.Text = "Miktar";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(229, 71);
            this.label15.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(37, 16);
            this.label15.TabIndex = 12;
            this.label15.Text = "Birim";
            // 
            // rjToggleButton1
            // 
            this.rjToggleButton1.AutoSize = true;
            this.rjToggleButton1.Location = new System.Drawing.Point(135, 26);
            this.rjToggleButton1.Margin = new System.Windows.Forms.Padding(4);
            this.rjToggleButton1.MinimumSize = new System.Drawing.Size(60, 27);
            this.rjToggleButton1.Name = "rjToggleButton1";
            this.rjToggleButton1.OffBackColor = System.Drawing.Color.Gray;
            this.rjToggleButton1.OffToggleColor = System.Drawing.Color.Gainsboro;
            this.rjToggleButton1.OnBackColor = System.Drawing.Color.Green;
            this.rjToggleButton1.OnToggleColor = System.Drawing.Color.WhiteSmoke;
            this.rjToggleButton1.Size = new System.Drawing.Size(60, 27);
            this.rjToggleButton1.TabIndex = 7;
            this.rjToggleButton1.UseVisualStyleBackColor = true;
            this.rjToggleButton1.CheckedChanged += new System.EventHandler(this.rjToggleButton1_CheckedChanged);
            // 
            // FrmNewRecord
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(900, 705);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.txtCurrency);
            this.Controls.Add(this.txtAmount);
            this.Controls.Add(this.rjToggleButton1);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.dtRetire);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.dtEntry);
            this.Controls.Add(this.cmbGuarantee);
            this.Controls.Add(this.cmbModel);
            this.Controls.Add(this.cmbBrand);
            this.Controls.Add(this.cmbCurrentCurrency);
            this.Controls.Add(this.cmbCurrency);
            this.Controls.Add(this.cmbOrderType);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtDesc);
            this.Controls.Add(this.txtCost);
            this.Controls.Add(this.txtCosts);
            this.Controls.Add(this.txtBarcode);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "FrmNewRecord";
            this.Text = "FrmNewRecord";
            this.Load += new System.EventHandler(this.FrmNewRecord_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtBarcode;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cmbOrderType;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbBrand;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cmbModel;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbGuarantee;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtDesc;
        private System.Windows.Forms.DateTimePicker dtEntry;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dtRetire;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtCosts;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbCurrency;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtCost;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cmbCurrentCurrency;
        private System.Windows.Forms.Button btnAdd;
        private Buttons.RJToggleButton rjToggleButton1;
        private System.Windows.Forms.TextBox txtAmount;
        private System.Windows.Forms.TextBox txtCurrency;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label15;
    }
}