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
            btnRegresar.Location = new Point(30, 212);
            btnRegresar.Margin = new Padding(3, 4, 3, 4);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(115, 39);
            btnRegresar.TabIndex = 42;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // btnEditar
            // 
            btnEditar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnEditar.Location = new Point(200, 212);
            btnEditar.Margin = new Padding(3, 4, 3, 4);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(115, 39);
            btnEditar.TabIndex = 41;
            btnEditar.Text = "Editar";
            btnEditar.UseVisualStyleBackColor = true;
            btnEditar.Click += btnEditar_Click;
            // 
            // dtpFecha
            // 
            dtpFecha.Location = new Point(180, 164);
            dtpFecha.Margin = new Padding(3, 4, 3, 4);
            dtpFecha.Name = "dtpFecha";
            dtpFecha.Size = new Size(136, 23);
            dtpFecha.TabIndex = 40;
            // 
            // DtpFechanac
            // 
            DtpFechanac.AutoSize = true;
            DtpFechanac.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            DtpFechanac.ForeColor = SystemColors.ButtonShadow;
            DtpFechanac.Location = new Point(89, 164);
            DtpFechanac.Name = "DtpFechanac";
            DtpFechanac.Size = new Size(50, 16);
            DtpFechanac.TabIndex = 39;
            DtpFechanac.Text = "Fecha";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(33, 118);
            label4.Name = "label4";
            label4.Size = new Size(105, 16);
            label4.TabIndex = 36;
            label4.Text = "Tipo de Venta";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(23, 73);
            label3.Name = "label3";
            label3.Size = new Size(113, 16);
            label3.TabIndex = 35;
            label3.Text = "Medio de Pago";
            // 
            // txttipoVent
            // 
            txttipoVent.Location = new Point(180, 119);
            txttipoVent.Margin = new Padding(3, 4, 3, 4);
            txttipoVent.Name = "txttipoVent";
            txttipoVent.Size = new Size(136, 23);
            txttipoVent.TabIndex = 32;
            // 
            // cboMedioPago
            // 
            cboMedioPago.FormattingEnabled = true;
            cboMedioPago.Location = new Point(180, 74);
            cboMedioPago.Margin = new Padding(2, 2, 2, 2);
            cboMedioPago.Name = "cboMedioPago";
            cboMedioPago.Size = new Size(136, 23);
            cboMedioPago.TabIndex = 43;
            // 
            // txtUsuario
            // 
            txtUsuario.Location = new Point(180, 32);
            txtUsuario.Margin = new Padding(3, 4, 3, 4);
            txtUsuario.Name = "txtUsuario";
            txtUsuario.Size = new Size(136, 23);
            txtUsuario.TabIndex = 30;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(78, 33);
            label1.Name = "label1";
            label1.Size = new Size(61, 16);
            label1.TabIndex = 34;
            label1.Text = "Usuario";
            // 
            // FrmEditarFactura
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(358, 338);
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
            Margin = new Padding(2, 2, 2, 2);
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