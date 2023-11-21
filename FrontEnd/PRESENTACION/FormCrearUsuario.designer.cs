namespace FrontEnd.PRESENTACION
{
    partial class FormCrearUsuario
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormCrearUsuario));
            label7 = new Label();
            dtpFechanac = new DateTimePicker();
            txtValidacion = new Label();
            label9 = new Label();
            txtnombreval = new Label();
            txtapellidoval = new Label();
            txtmailval = new Label();
            txtcontraval = new Label();
            txtconfirmarcontraval = new Label();
            dtpfechanacval = new Label();
            label10 = new Label();
            panel4 = new Panel();
            panel1 = new Panel();
            panel2 = new Panel();
            panel3 = new Panel();
            panel5 = new Panel();
            panel6 = new Panel();
            txtnombre = new TextBox();
            txtapellido = new TextBox();
            txtmail = new TextBox();
            txtcontra = new TextBox();
            txtconfirmarcontra = new TextBox();
            txtcelular = new TextBox();
            btnRegistrarse = new Button();
            btnSalir = new Button();
            PicVer = new PictureBox();
            picConfVer = new PictureBox();
            PicOcultar = new PictureBox();
            picConOcultar = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)PicVer).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picConfVer).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PicOcultar).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picConOcultar).BeginInit();
            SuspendLayout();
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            label7.ForeColor = Color.Black;
            label7.Location = new Point(31, 343);
            label7.Margin = new Padding(4, 0, 4, 0);
            label7.Name = "label7";
            label7.Size = new Size(132, 16);
            label7.TabIndex = 23;
            label7.Text = "Fecha de nacimiento";
            // 
            // dtpFechanac
            // 
            dtpFechanac.Format = DateTimePickerFormat.Short;
            dtpFechanac.Location = new Point(35, 365);
            dtpFechanac.Margin = new Padding(4, 3, 4, 3);
            dtpFechanac.Name = "dtpFechanac";
            dtpFechanac.Size = new Size(174, 23);
            dtpFechanac.TabIndex = 24;
            dtpFechanac.ValueChanged += dateTimePicker1_ValueChanged;
            // 
            // txtValidacion
            // 
            txtValidacion.AutoSize = true;
            txtValidacion.ForeColor = Color.IndianRed;
            txtValidacion.Location = new Point(271, 339);
            txtValidacion.Margin = new Padding(4, 0, 4, 0);
            txtValidacion.Name = "txtValidacion";
            txtValidacion.Size = new Size(0, 15);
            txtValidacion.TabIndex = 27;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.ForeColor = SystemColors.GradientActiveCaption;
            label9.Location = new Point(278, 231);
            label9.Margin = new Padding(4, 0, 4, 0);
            label9.Name = "label9";
            label9.Size = new Size(0, 15);
            label9.TabIndex = 28;
            // 
            // txtnombreval
            // 
            txtnombreval.AutoSize = true;
            txtnombreval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtnombreval.ForeColor = Color.Maroon;
            txtnombreval.Location = new Point(31, 112);
            txtnombreval.Margin = new Padding(4, 0, 4, 0);
            txtnombreval.Name = "txtnombreval";
            txtnombreval.Size = new Size(76, 13);
            txtnombreval.TabIndex = 29;
            txtnombreval.Text = "(Obligatorio)";
            txtnombreval.Visible = false;
            txtnombreval.Click += txtnombreval_Click;
            // 
            // txtapellidoval
            // 
            txtapellidoval.AutoSize = true;
            txtapellidoval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtapellidoval.ForeColor = Color.Maroon;
            txtapellidoval.Location = new Point(271, 112);
            txtapellidoval.Margin = new Padding(4, 0, 4, 0);
            txtapellidoval.Name = "txtapellidoval";
            txtapellidoval.Size = new Size(76, 13);
            txtapellidoval.TabIndex = 30;
            txtapellidoval.Text = "(Obligatorio)";
            txtapellidoval.Visible = false;
            // 
            // txtmailval
            // 
            txtmailval.AutoSize = true;
            txtmailval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtmailval.ForeColor = Color.Maroon;
            txtmailval.Location = new Point(31, 197);
            txtmailval.Margin = new Padding(4, 0, 4, 0);
            txtmailval.Name = "txtmailval";
            txtmailval.Size = new Size(76, 13);
            txtmailval.TabIndex = 31;
            txtmailval.Text = "(Obligatorio)";
            txtmailval.Visible = false;
            // 
            // txtcontraval
            // 
            txtcontraval.AutoSize = true;
            txtcontraval.FlatStyle = FlatStyle.System;
            txtcontraval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtcontraval.ForeColor = Color.Maroon;
            txtcontraval.Location = new Point(31, 287);
            txtcontraval.Margin = new Padding(4, 0, 4, 0);
            txtcontraval.Name = "txtcontraval";
            txtcontraval.Size = new Size(76, 13);
            txtcontraval.TabIndex = 32;
            txtcontraval.Text = "(Obligatorio)";
            txtcontraval.Visible = false;
            // 
            // txtconfirmarcontraval
            // 
            txtconfirmarcontraval.AutoSize = true;
            txtconfirmarcontraval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtconfirmarcontraval.ForeColor = Color.Maroon;
            txtconfirmarcontraval.Location = new Point(271, 287);
            txtconfirmarcontraval.Margin = new Padding(4, 0, 4, 0);
            txtconfirmarcontraval.Name = "txtconfirmarcontraval";
            txtconfirmarcontraval.Size = new Size(76, 13);
            txtconfirmarcontraval.TabIndex = 33;
            txtconfirmarcontraval.Text = "(Obligatorio)";
            txtconfirmarcontraval.Visible = false;
            txtconfirmarcontraval.Click += txtconfirmarcontraval_Click;
            // 
            // dtpfechanacval
            // 
            dtpfechanacval.AutoSize = true;
            dtpfechanacval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            dtpfechanacval.ForeColor = Color.Maroon;
            dtpfechanacval.Location = new Point(31, 391);
            dtpfechanacval.Margin = new Padding(4, 0, 4, 0);
            dtpfechanacval.Name = "dtpfechanacval";
            dtpfechanacval.Size = new Size(76, 13);
            dtpfechanacval.TabIndex = 34;
            dtpfechanacval.Text = "(Obligatorio)";
            dtpfechanacval.Visible = false;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.BorderStyle = BorderStyle.Fixed3D;
            label10.Font = new Font("Microsoft Sans Serif", 15.75F, FontStyle.Bold, GraphicsUnit.Point);
            label10.ForeColor = Color.Black;
            label10.Location = new Point(175, 10);
            label10.Margin = new Padding(4, 0, 4, 0);
            label10.Name = "label10";
            label10.Size = new Size(160, 27);
            label10.TabIndex = 15;
            label10.Text = "Crear Usuario";
            // 
            // panel4
            // 
            panel4.BackColor = Color.Black;
            panel4.Location = new Point(35, 105);
            panel4.Margin = new Padding(4, 3, 4, 3);
            panel4.Name = "panel4";
            panel4.Size = new Size(210, 3);
            panel4.TabIndex = 42;
            // 
            // panel1
            // 
            panel1.BackColor = Color.Black;
            panel1.Location = new Point(274, 395);
            panel1.Margin = new Padding(4, 3, 4, 3);
            panel1.Name = "panel1";
            panel1.Size = new Size(210, 3);
            panel1.TabIndex = 43;
            // 
            // panel2
            // 
            panel2.BackColor = Color.Black;
            panel2.Location = new Point(274, 280);
            panel2.Margin = new Padding(4, 3, 4, 3);
            panel2.Name = "panel2";
            panel2.Size = new Size(210, 3);
            panel2.TabIndex = 42;
            // 
            // panel3
            // 
            panel3.BackColor = Color.Black;
            panel3.Location = new Point(35, 280);
            panel3.Margin = new Padding(4, 3, 4, 3);
            panel3.Name = "panel3";
            panel3.Size = new Size(210, 3);
            panel3.TabIndex = 42;
            // 
            // panel5
            // 
            panel5.BackColor = Color.Black;
            panel5.Location = new Point(35, 190);
            panel5.Margin = new Padding(4, 3, 4, 3);
            panel5.Name = "panel5";
            panel5.Size = new Size(435, 3);
            panel5.TabIndex = 42;
            // 
            // panel6
            // 
            panel6.BackColor = Color.Black;
            panel6.Location = new Point(274, 105);
            panel6.Margin = new Padding(4, 3, 4, 3);
            panel6.Name = "panel6";
            panel6.Size = new Size(210, 3);
            panel6.TabIndex = 42;
            // 
            // txtnombre
            // 
            txtnombre.BackColor = Color.FromArgb(224, 224, 224);
            txtnombre.BorderStyle = BorderStyle.None;
            txtnombre.ForeColor = Color.Gray;
            txtnombre.Location = new Point(35, 82);
            txtnombre.Margin = new Padding(4, 3, 4, 3);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(175, 16);
            txtnombre.TabIndex = 44;
            txtnombre.Text = "Nombre";
            // 
            // txtapellido
            // 
            txtapellido.BackColor = Color.FromArgb(224, 224, 224);
            txtapellido.BorderStyle = BorderStyle.None;
            txtapellido.ForeColor = SystemColors.GrayText;
            txtapellido.Location = new Point(274, 83);
            txtapellido.Margin = new Padding(4, 3, 4, 3);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(201, 16);
            txtapellido.TabIndex = 45;
            txtapellido.Text = "Apellido";
            // 
            // txtmail
            // 
            txtmail.BackColor = Color.FromArgb(224, 224, 224);
            txtmail.BorderStyle = BorderStyle.None;
            txtmail.ForeColor = Color.Gray;
            txtmail.Location = new Point(35, 168);
            txtmail.Margin = new Padding(4, 3, 4, 3);
            txtmail.Name = "txtmail";
            txtmail.Size = new Size(425, 16);
            txtmail.TabIndex = 46;
            txtmail.Text = "Usuario (e-mail)";
            // 
            // txtcontra
            // 
            txtcontra.BackColor = Color.FromArgb(224, 224, 224);
            txtcontra.BorderStyle = BorderStyle.None;
            txtcontra.ForeColor = Color.Gray;
            txtcontra.Location = new Point(35, 258);
            txtcontra.Margin = new Padding(4, 3, 4, 3);
            txtcontra.Name = "txtcontra";
            txtcontra.Size = new Size(175, 16);
            txtcontra.TabIndex = 49;
            txtcontra.Text = "Contraseña";
            // 
            // txtconfirmarcontra
            // 
            txtconfirmarcontra.BackColor = Color.FromArgb(224, 224, 224);
            txtconfirmarcontra.BorderStyle = BorderStyle.None;
            txtconfirmarcontra.ForeColor = Color.Gray;
            txtconfirmarcontra.Location = new Point(273, 258);
            txtconfirmarcontra.Margin = new Padding(4, 3, 4, 3);
            txtconfirmarcontra.Name = "txtconfirmarcontra";
            txtconfirmarcontra.Size = new Size(175, 16);
            txtconfirmarcontra.TabIndex = 50;
            txtconfirmarcontra.Text = "Confirmar contraseña";
            // 
            // txtcelular
            // 
            txtcelular.BackColor = Color.FromArgb(224, 224, 224);
            txtcelular.BorderStyle = BorderStyle.None;
            txtcelular.ForeColor = Color.Gray;
            txtcelular.Location = new Point(273, 373);
            txtcelular.Margin = new Padding(4, 3, 4, 3);
            txtcelular.Name = "txtcelular";
            txtcelular.Size = new Size(201, 16);
            txtcelular.TabIndex = 51;
            txtcelular.Text = "Celular";
            txtcelular.TextChanged += txtcelular_TextChanged;
            txtcelular.Enter += txtcelular_Enter;
            txtcelular.KeyPress += txtcelular_KeyPress;
            txtcelular.Leave += txtcelular_Leave;
            // 
            // btnRegistrarse
            // 
            btnRegistrarse.BackColor = Color.Black;
            btnRegistrarse.FlatAppearance.BorderSize = 0;
            btnRegistrarse.FlatStyle = FlatStyle.Popup;
            btnRegistrarse.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Bold, GraphicsUnit.Point);
            btnRegistrarse.ForeColor = SystemColors.Highlight;
            btnRegistrarse.Location = new Point(281, 445);
            btnRegistrarse.Margin = new Padding(4, 3, 4, 3);
            btnRegistrarse.Name = "btnRegistrarse";
            btnRegistrarse.Size = new Size(138, 35);
            btnRegistrarse.TabIndex = 52;
            btnRegistrarse.Text = "Registrar";
            btnRegistrarse.UseVisualStyleBackColor = false;
            btnRegistrarse.Click += btnRegistrarse_Click;
            // 
            // btnSalir
            // 
            btnSalir.BackColor = Color.Black;
            btnSalir.BackgroundImageLayout = ImageLayout.None;
            btnSalir.FlatAppearance.BorderSize = 0;
            btnSalir.FlatStyle = FlatStyle.Popup;
            btnSalir.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Bold, GraphicsUnit.Point);
            btnSalir.ForeColor = Color.Maroon;
            btnSalir.Location = new Point(111, 447);
            btnSalir.Margin = new Padding(4, 3, 4, 3);
            btnSalir.Name = "btnSalir";
            btnSalir.Size = new Size(134, 35);
            btnSalir.TabIndex = 53;
            btnSalir.Text = "Salir";
            btnSalir.UseVisualStyleBackColor = false;
            btnSalir.Click += btnSalir_Click;
            // 
            // PicVer
            // 
            PicVer.Image = (Image)resources.GetObject("PicVer.Image");
            PicVer.Location = new Point(217, 257);
            PicVer.Margin = new Padding(4, 3, 4, 3);
            PicVer.Name = "PicVer";
            PicVer.Size = new Size(21, 16);
            PicVer.SizeMode = PictureBoxSizeMode.StretchImage;
            PicVer.TabIndex = 54;
            PicVer.TabStop = false;
            PicVer.Click += PicVer_Click;
            // 
            // picConfVer
            // 
            picConfVer.Image = (Image)resources.GetObject("picConfVer.Image");
            picConfVer.Location = new Point(458, 257);
            picConfVer.Margin = new Padding(4, 3, 4, 3);
            picConfVer.Name = "picConfVer";
            picConfVer.Size = new Size(21, 16);
            picConfVer.SizeMode = PictureBoxSizeMode.StretchImage;
            picConfVer.TabIndex = 55;
            picConfVer.TabStop = false;
            picConfVer.Click += picConfVer_Click;
            // 
            // PicOcultar
            // 
            PicOcultar.Image = (Image)resources.GetObject("PicOcultar.Image");
            PicOcultar.Location = new Point(217, 257);
            PicOcultar.Margin = new Padding(4, 3, 4, 3);
            PicOcultar.Name = "PicOcultar";
            PicOcultar.Size = new Size(21, 16);
            PicOcultar.SizeMode = PictureBoxSizeMode.StretchImage;
            PicOcultar.TabIndex = 56;
            PicOcultar.TabStop = false;
            PicOcultar.Click += PicOcultar_Click;
            // 
            // picConOcultar
            // 
            picConOcultar.Image = (Image)resources.GetObject("picConOcultar.Image");
            picConOcultar.Location = new Point(458, 257);
            picConOcultar.Margin = new Padding(4, 3, 4, 3);
            picConOcultar.Name = "picConOcultar";
            picConOcultar.Size = new Size(21, 16);
            picConOcultar.SizeMode = PictureBoxSizeMode.StretchImage;
            picConOcultar.TabIndex = 57;
            picConOcultar.TabStop = false;
            picConOcultar.Click += picConOcultar_Click;
            // 
            // FormCrearUsuario
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(224, 224, 244);
            ClientSize = new Size(555, 495);
            Controls.Add(picConOcultar);
            Controls.Add(PicOcultar);
            Controls.Add(picConfVer);
            Controls.Add(PicVer);
            Controls.Add(btnSalir);
            Controls.Add(btnRegistrarse);
            Controls.Add(txtcelular);
            Controls.Add(txtconfirmarcontra);
            Controls.Add(txtcontra);
            Controls.Add(txtmail);
            Controls.Add(txtapellido);
            Controls.Add(txtnombre);
            Controls.Add(panel2);
            Controls.Add(panel3);
            Controls.Add(panel5);
            Controls.Add(panel6);
            Controls.Add(panel1);
            Controls.Add(panel4);
            Controls.Add(dtpfechanacval);
            Controls.Add(txtconfirmarcontraval);
            Controls.Add(txtcontraval);
            Controls.Add(txtmailval);
            Controls.Add(txtapellidoval);
            Controls.Add(txtnombreval);
            Controls.Add(label9);
            Controls.Add(txtValidacion);
            Controls.Add(dtpFechanac);
            Controls.Add(label7);
            Controls.Add(label10);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4, 3, 4, 3);
            Name = "FormCrearUsuario";
            Text = "FormCrearUsuario";
            Load += FormCrearUsuario_Load;
            ((System.ComponentModel.ISupportInitialize)PicVer).EndInit();
            ((System.ComponentModel.ISupportInitialize)picConfVer).EndInit();
            ((System.ComponentModel.ISupportInitialize)PicOcultar).EndInit();
            ((System.ComponentModel.ISupportInitialize)picConOcultar).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dtpFechanac;
        private System.Windows.Forms.Label txtValidacion;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label txtnombreval;
        private System.Windows.Forms.Label txtapellidoval;
        private System.Windows.Forms.Label txtmailval;
        private System.Windows.Forms.Label txtcontraval;
        private System.Windows.Forms.Label txtconfirmarcontraval;
        private System.Windows.Forms.Label dtpfechanacval;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.TextBox txtapellido;
        private System.Windows.Forms.TextBox txtmail;
        private System.Windows.Forms.TextBox txtcontra;
        private System.Windows.Forms.TextBox txtconfirmarcontra;
        private System.Windows.Forms.TextBox txtcelular;
        private System.Windows.Forms.Button btnRegistrarse;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.PictureBox PicVer;
        private System.Windows.Forms.PictureBox picConfVer;
        private System.Windows.Forms.PictureBox PicOcultar;
        private System.Windows.Forms.PictureBox picConOcultar;
    }
}