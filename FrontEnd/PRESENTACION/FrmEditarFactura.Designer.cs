namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    partial class FrmEditarFactura
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
            btnRegresar = new Button();
            btnEditar = new Button();
            dtpFecha = new DateTimePicker();
            DtpFechanac = new Label();
            label4 = new Label();
            label3 = new Label();
            txttipoVent = new TextBox();
            cboMedioPago = new ComboBox();
            txtUsuario = new TextBox();
            label1 = new Label();
            SuspendLayout();
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(34, 283);
            btnRegresar.Margin = new Padding(3, 5, 3, 5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(131, 52);
            btnRegresar.TabIndex = 5;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // btnEditar
            // 
            btnEditar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnEditar.Location = new Point(229, 283);
            btnEditar.Margin = new Padding(3, 5, 3, 5);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(131, 52);
            btnEditar.TabIndex = 4;
            btnEditar.Text = "Editar";
            btnEditar.UseVisualStyleBackColor = true;
            btnEditar.Click += btnEditar_Click;
            // 
            // dtpFecha
            // 
            dtpFecha.Format = DateTimePickerFormat.Short;
            dtpFecha.Location = new Point(206, 219);
            dtpFecha.Margin = new Padding(3, 5, 3, 5);
            dtpFecha.Name = "dtpFecha";
            dtpFecha.Size = new Size(155, 27);
            dtpFecha.TabIndex = 3;
            // 
            // DtpFechanac
            // 
            DtpFechanac.AutoSize = true;
            DtpFechanac.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            DtpFechanac.ForeColor = SystemColors.ButtonShadow;
            DtpFechanac.Location = new Point(102, 219);
            DtpFechanac.Name = "DtpFechanac";
            DtpFechanac.Size = new Size(60, 20);
            DtpFechanac.TabIndex = 39;
            DtpFechanac.Text = "Fecha";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(38, 157);
            label4.Name = "label4";
            label4.Size = new Size(125, 20);
            label4.TabIndex = 36;
            label4.Text = "Tipo de Venta";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(26, 97);
            label3.Name = "label3";
            label3.Size = new Size(133, 20);
            label3.TabIndex = 35;
            label3.Text = "Medio de Pago";
            // 
            // txttipoVent
            // 
            txttipoVent.Location = new Point(206, 159);
            txttipoVent.Margin = new Padding(3, 5, 3, 5);
            txttipoVent.Name = "txttipoVent";
            txttipoVent.Size = new Size(155, 27);
            txttipoVent.TabIndex = 2;
            txttipoVent.KeyPress += txttipoVent_KeyPress;
            // 
            // cboMedioPago
            // 
            cboMedioPago.FormattingEnabled = true;
            cboMedioPago.Location = new Point(206, 99);
            cboMedioPago.Margin = new Padding(2, 3, 2, 3);
            cboMedioPago.Name = "cboMedioPago";
            cboMedioPago.Size = new Size(155, 28);
            cboMedioPago.TabIndex = 1;
            // 
            // txtUsuario
            // 
            txtUsuario.Location = new Point(206, 43);
            txtUsuario.Margin = new Padding(3, 5, 3, 5);
            txtUsuario.Name = "txtUsuario";
            txtUsuario.Size = new Size(155, 27);
            txtUsuario.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(89, 44);
            label1.Name = "label1";
            label1.Size = new Size(74, 20);
            label1.TabIndex = 34;
            label1.Text = "Usuario";
            // 
            // FrmEditarFactura
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(409, 451);
            Controls.Add(cboMedioPago);
            Controls.Add(btnRegresar);
            Controls.Add(btnEditar);
            Controls.Add(dtpFecha);
            Controls.Add(DtpFechanac);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Controls.Add(txttipoVent);
            Controls.Add(txtUsuario);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(2, 3, 2, 3);
            Name = "FrmEditarFactura";
            Text = "FrmEditarFactura";
            Load += FrmEditarFactura_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Button btnRegresar;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private System.Windows.Forms.Label DtpFechanac;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txttipoVent;
        private System.Windows.Forms.ComboBox cboMedioPago;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Label label1;
    }
}