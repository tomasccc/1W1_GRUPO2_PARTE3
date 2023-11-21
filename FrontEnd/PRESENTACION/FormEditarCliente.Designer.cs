namespace FrontEnd.PRESENTACION
{
    partial class FormEditarCliente
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
            label4 = new Label();
            label3 = new Label();
            label1 = new Label();
            label2 = new Label();
            txttel = new TextBox();
            txtemail = new TextBox();
            txtapellido = new TextBox();
            txtnombre = new TextBox();
            label5 = new Label();
            txtcontra = new TextBox();
            DtpFechanac = new Label();
            dateTimePicker1 = new DateTimePicker();
            btnEditar = new Button();
            btnRegresar = new Button();
            SuspendLayout();
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(45, 139);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(69, 16);
            label4.TabIndex = 21;
            label4.Text = "Telefono";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(67, 109);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(46, 16);
            label3.TabIndex = 20;
            label3.Text = "Email";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(46, 79);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(65, 16);
            label1.TabIndex = 19;
            label1.Text = "Apellido";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ButtonShadow;
            label2.Location = new Point(46, 49);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(62, 16);
            label2.TabIndex = 18;
            label2.Text = "Nombre";
            // 
            // txttel
            // 
            txttel.Location = new Point(129, 139);
            txttel.Margin = new Padding(4);
            txttel.Name = "txttel";
            txttel.Size = new Size(136, 23);
            txttel.TabIndex = 17;
            txttel.TextChanged += txttel_TextChanged;
            txttel.KeyPress += txttel_KeyPress;
            // 
            // txtemail
            // 
            txtemail.Location = new Point(129, 109);
            txtemail.Margin = new Padding(4);
            txtemail.Name = "txtemail";
            txtemail.Size = new Size(136, 23);
            txtemail.TabIndex = 16;
            // 
            // txtapellido
            // 
            txtapellido.Location = new Point(129, 76);
            txtapellido.Margin = new Padding(4);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(136, 23);
            txtapellido.TabIndex = 15;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(129, 46);
            txtnombre.Margin = new Padding(4);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(136, 23);
            txtnombre.TabIndex = 14;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label5.ForeColor = SystemColors.ButtonShadow;
            label5.Location = new Point(24, 169);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(86, 16);
            label5.TabIndex = 23;
            label5.Text = "Contraseña";
            // 
            // txtcontra
            // 
            txtcontra.Location = new Point(129, 169);
            txtcontra.Margin = new Padding(4);
            txtcontra.Name = "txtcontra";
            txtcontra.Size = new Size(136, 23);
            txtcontra.TabIndex = 22;
            // 
            // DtpFechanac
            // 
            DtpFechanac.AutoSize = true;
            DtpFechanac.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            DtpFechanac.ForeColor = SystemColors.ButtonShadow;
            DtpFechanac.Location = new Point(31, 199);
            DtpFechanac.Margin = new Padding(4, 0, 4, 0);
            DtpFechanac.Name = "DtpFechanac";
            DtpFechanac.Size = new Size(78, 16);
            DtpFechanac.TabIndex = 25;
            DtpFechanac.Text = "FechaNac";
            // 
            // dateTimePicker1
            // 
            dateTimePicker1.Format = DateTimePickerFormat.Short;
            dateTimePicker1.Location = new Point(129, 199);
            dateTimePicker1.Margin = new Padding(4);
            dateTimePicker1.Name = "dateTimePicker1";
            dateTimePicker1.Size = new Size(136, 23);
            dateTimePicker1.TabIndex = 26;
            // 
            // btnEditar
            // 
            btnEditar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnEditar.Location = new Point(150, 255);
            btnEditar.Margin = new Padding(4);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(116, 39);
            btnEditar.TabIndex = 27;
            btnEditar.Text = "Editar";
            btnEditar.UseVisualStyleBackColor = true;
            btnEditar.Click += btnEditar_Click;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(27, 255);
            btnRegresar.Margin = new Padding(4);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(116, 39);
            btnRegresar.TabIndex = 28;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // FormEditarCliente
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(297, 344);
            Controls.Add(btnRegresar);
            Controls.Add(btnEditar);
            Controls.Add(dateTimePicker1);
            Controls.Add(DtpFechanac);
            Controls.Add(label5);
            Controls.Add(txtcontra);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txttel);
            Controls.Add(txtemail);
            Controls.Add(txtapellido);
            Controls.Add(txtnombre);
            Margin = new Padding(4);
            Name = "FormEditarCliente";
            Text = "FormEditarCliente";
            Load += FormEditarCliente_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txttel;
        private System.Windows.Forms.TextBox txtemail;
        private System.Windows.Forms.TextBox txtapellido;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtcontra;
        private System.Windows.Forms.Label DtpFechanac;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button btnRegresar;
    }
}