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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormEditarCliente));
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
            pictureBox1 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(295, 295);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(81, 20);
            label4.TabIndex = 21;
            label4.Text = "Telefono";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(58, 295);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(56, 20);
            label3.TabIndex = 20;
            label3.Text = "Email";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(295, 191);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(76, 20);
            label1.TabIndex = 19;
            label1.Text = "Apellido";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ButtonShadow;
            label2.Location = new Point(58, 191);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(74, 20);
            label2.TabIndex = 18;
            label2.Text = "Nombre";
            // 
            // txttel
            // 
            txttel.Location = new Point(295, 324);
            txttel.Margin = new Padding(5, 5, 5, 5);
            txttel.Name = "txttel";
            txttel.Size = new Size(155, 27);
            txttel.TabIndex = 3;
            txttel.TextChanged += txttel_TextChanged;
            txttel.KeyPress += txttel_KeyPress;
            // 
            // txtemail
            // 
            txtemail.Location = new Point(58, 324);
            txtemail.Margin = new Padding(5, 5, 5, 5);
            txtemail.Name = "txtemail";
            txtemail.Size = new Size(155, 27);
            txtemail.TabIndex = 2;
            // 
            // txtapellido
            // 
            txtapellido.Location = new Point(295, 223);
            txtapellido.Margin = new Padding(5, 5, 5, 5);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(155, 27);
            txtapellido.TabIndex = 1;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(58, 223);
            txtnombre.Margin = new Padding(5, 5, 5, 5);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(155, 27);
            txtnombre.TabIndex = 0;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label5.ForeColor = SystemColors.ButtonShadow;
            label5.Location = new Point(58, 405);
            label5.Margin = new Padding(5, 0, 5, 0);
            label5.Name = "label5";
            label5.Size = new Size(105, 20);
            label5.TabIndex = 23;
            label5.Text = "Contraseña";
            // 
            // txtcontra
            // 
            txtcontra.Location = new Point(58, 432);
            txtcontra.Margin = new Padding(5, 5, 5, 5);
            txtcontra.Name = "txtcontra";
            txtcontra.Size = new Size(155, 27);
            txtcontra.TabIndex = 4;
            // 
            // DtpFechanac
            // 
            DtpFechanac.AutoSize = true;
            DtpFechanac.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            DtpFechanac.ForeColor = SystemColors.ButtonShadow;
            DtpFechanac.Location = new Point(295, 401);
            DtpFechanac.Margin = new Padding(5, 0, 5, 0);
            DtpFechanac.Name = "DtpFechanac";
            DtpFechanac.Size = new Size(93, 20);
            DtpFechanac.TabIndex = 25;
            DtpFechanac.Text = "FechaNac";
            // 
            // dateTimePicker1
            // 
            dateTimePicker1.Format = DateTimePickerFormat.Short;
            dateTimePicker1.Location = new Point(295, 428);
            dateTimePicker1.Margin = new Padding(5, 5, 5, 5);
            dateTimePicker1.Name = "dateTimePicker1";
            dateTimePicker1.Size = new Size(155, 27);
            dateTimePicker1.TabIndex = 5;
            // 
            // btnEditar
            // 
            btnEditar.BackColor = Color.FromArgb(224, 224, 224);
            btnEditar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnEditar.Location = new Point(295, 560);
            btnEditar.Margin = new Padding(5, 5, 5, 5);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(133, 52);
            btnEditar.TabIndex = 6;
            btnEditar.Text = "Editar";
            btnEditar.UseVisualStyleBackColor = false;
            btnEditar.Click += btnEditar_Click;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(81, 560);
            btnRegresar.Margin = new Padding(5, 5, 5, 5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(133, 52);
            btnRegresar.TabIndex = 7;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(190, 16);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(135, 116);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 29;
            pictureBox1.TabStop = false;
            // 
            // FormEditarCliente
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(518, 644);
            Controls.Add(pictureBox1);
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
            Margin = new Padding(5, 5, 5, 5);
            Name = "FormEditarCliente";
            Text = "FormEditarCliente";
            Load += FormEditarCliente_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
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
        private PictureBox pictureBox1;
    }
}