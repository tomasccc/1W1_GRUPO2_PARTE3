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
            PicVer = new PictureBox();
            picConfVer = new PictureBox();
            picConOcultar = new PictureBox();
            pictureBox1 = new PictureBox();
            SalirClickk = new PictureBox();
            pictureBox2 = new PictureBox();
            pictureBox3 = new PictureBox();
            txtArea = new TextBox();
            lblSeguridad = new Label();
            lblNivel = new Label();
            PicOcultar = new PictureBox();
            label1 = new Label();
            ((System.ComponentModel.ISupportInitialize)PicVer).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picConfVer).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picConOcultar).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)SalirClickk).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PicOcultar).BeginInit();
            SuspendLayout();
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            label7.ForeColor = Color.Black;
            label7.Location = new Point(35, 457);
            label7.Margin = new Padding(5, 0, 5, 0);
            label7.Name = "label7";
            label7.Size = new Size(164, 20);
            label7.TabIndex = 23;
            label7.Text = "Fecha de nacimiento";
            // 
            // dtpFechanac
            // 
            dtpFechanac.Format = DateTimePickerFormat.Short;
            dtpFechanac.Location = new Point(40, 487);
            dtpFechanac.Margin = new Padding(5, 4, 5, 4);
            dtpFechanac.Name = "dtpFechanac";
            dtpFechanac.Size = new Size(198, 27);
            dtpFechanac.TabIndex = 7;
            dtpFechanac.ValueChanged += dateTimePicker1_ValueChanged;
            // 
            // txtValidacion
            // 
            txtValidacion.AutoSize = true;
            txtValidacion.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            txtValidacion.ForeColor = Color.IndianRed;
            txtValidacion.Location = new Point(40, 553);
            txtValidacion.Margin = new Padding(5, 0, 5, 0);
            txtValidacion.Name = "txtValidacion";
            txtValidacion.Size = new Size(0, 20);
            txtValidacion.TabIndex = 27;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.ForeColor = SystemColors.GradientActiveCaption;
            label9.Location = new Point(318, 308);
            label9.Margin = new Padding(5, 0, 5, 0);
            label9.Name = "label9";
            label9.Size = new Size(0, 20);
            label9.TabIndex = 28;
            // 
            // txtnombreval
            // 
            txtnombreval.AutoSize = true;
            txtnombreval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtnombreval.ForeColor = Color.Maroon;
            txtnombreval.Location = new Point(35, 149);
            txtnombreval.Margin = new Padding(5, 0, 5, 0);
            txtnombreval.Name = "txtnombreval";
            txtnombreval.Size = new Size(100, 17);
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
            txtapellidoval.Location = new Point(310, 149);
            txtapellidoval.Margin = new Padding(5, 0, 5, 0);
            txtapellidoval.Name = "txtapellidoval";
            txtapellidoval.Size = new Size(100, 17);
            txtapellidoval.TabIndex = 30;
            txtapellidoval.Text = "(Obligatorio)";
            txtapellidoval.Visible = false;
            // 
            // txtmailval
            // 
            txtmailval.AutoSize = true;
            txtmailval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtmailval.ForeColor = Color.Maroon;
            txtmailval.Location = new Point(35, 263);
            txtmailval.Margin = new Padding(5, 0, 5, 0);
            txtmailval.Name = "txtmailval";
            txtmailval.Size = new Size(100, 17);
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
            txtcontraval.Location = new Point(35, 383);
            txtcontraval.Margin = new Padding(5, 0, 5, 0);
            txtcontraval.Name = "txtcontraval";
            txtcontraval.Size = new Size(100, 17);
            txtcontraval.TabIndex = 32;
            txtcontraval.Text = "(Obligatorio)";
            txtcontraval.Visible = false;
            // 
            // txtconfirmarcontraval
            // 
            txtconfirmarcontraval.AutoSize = true;
            txtconfirmarcontraval.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            txtconfirmarcontraval.ForeColor = Color.Maroon;
            txtconfirmarcontraval.Location = new Point(310, 383);
            txtconfirmarcontraval.Margin = new Padding(5, 0, 5, 0);
            txtconfirmarcontraval.Name = "txtconfirmarcontraval";
            txtconfirmarcontraval.Size = new Size(100, 17);
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
            dtpfechanacval.Location = new Point(35, 521);
            dtpfechanacval.Margin = new Padding(5, 0, 5, 0);
            dtpfechanacval.Name = "dtpfechanacval";
            dtpfechanacval.Size = new Size(100, 17);
            dtpfechanacval.TabIndex = 34;
            dtpfechanacval.Text = "(Obligatorio)";
            dtpfechanacval.Visible = false;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Font = new Font("Microsoft YaHei", 16.2F, FontStyle.Bold, GraphicsUnit.Point);
            label10.ForeColor = Color.Black;
            label10.Location = new Point(25, 31);
            label10.Margin = new Padding(5, 0, 5, 0);
            label10.Name = "label10";
            label10.Size = new Size(208, 37);
            label10.TabIndex = 15;
            label10.Text = "Crear Usuario";
            label10.Click += label10_Click;
            // 
            // panel4
            // 
            panel4.BackColor = Color.Black;
            panel4.Location = new Point(40, 140);
            panel4.Margin = new Padding(5, 4, 5, 4);
            panel4.Name = "panel4";
            panel4.Size = new Size(240, 4);
            panel4.TabIndex = 42;
            // 
            // panel1
            // 
            panel1.BackColor = Color.Black;
            panel1.Location = new Point(313, 527);
            panel1.Margin = new Padding(5, 4, 5, 4);
            panel1.Name = "panel1";
            panel1.Size = new Size(240, 4);
            panel1.TabIndex = 43;
            // 
            // panel2
            // 
            panel2.BackColor = Color.Black;
            panel2.Location = new Point(313, 373);
            panel2.Margin = new Padding(5, 4, 5, 4);
            panel2.Name = "panel2";
            panel2.Size = new Size(240, 4);
            panel2.TabIndex = 42;
            // 
            // panel3
            // 
            panel3.BackColor = Color.Black;
            panel3.Location = new Point(40, 373);
            panel3.Margin = new Padding(5, 4, 5, 4);
            panel3.Name = "panel3";
            panel3.Size = new Size(240, 4);
            panel3.TabIndex = 42;
            // 
            // panel5
            // 
            panel5.BackColor = Color.Black;
            panel5.Location = new Point(40, 253);
            panel5.Margin = new Padding(5, 4, 5, 4);
            panel5.Name = "panel5";
            panel5.Size = new Size(497, 4);
            panel5.TabIndex = 42;
            // 
            // panel6
            // 
            panel6.BackColor = Color.Black;
            panel6.Location = new Point(313, 140);
            panel6.Margin = new Padding(5, 4, 5, 4);
            panel6.Name = "panel6";
            panel6.Size = new Size(240, 4);
            panel6.TabIndex = 42;
            // 
            // txtnombre
            // 
            txtnombre.BackColor = Color.Silver;
            txtnombre.BorderStyle = BorderStyle.None;
            txtnombre.ForeColor = Color.Gray;
            txtnombre.Location = new Point(40, 109);
            txtnombre.Margin = new Padding(5, 4, 5, 4);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(200, 20);
            txtnombre.TabIndex = 0;
            txtnombre.Text = "Nombre";
            txtnombre.KeyPress += txtnombre_KeyPress;
            // 
            // txtapellido
            // 
            txtapellido.BackColor = Color.Silver;
            txtapellido.BorderStyle = BorderStyle.None;
            txtapellido.ForeColor = SystemColors.GrayText;
            txtapellido.Location = new Point(313, 111);
            txtapellido.Margin = new Padding(5, 4, 5, 4);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(230, 20);
            txtapellido.TabIndex = 1;
            txtapellido.Text = "Apellido";
            txtapellido.Enter += txtapellido_Enter_1;
            txtapellido.KeyPress += txtapellido_KeyPress;
            txtapellido.Leave += txtapellido_Leave_1;
            // 
            // txtmail
            // 
            txtmail.BackColor = Color.Silver;
            txtmail.BorderStyle = BorderStyle.None;
            txtmail.ForeColor = Color.Gray;
            txtmail.Location = new Point(40, 224);
            txtmail.Margin = new Padding(5, 4, 5, 4);
            txtmail.Name = "txtmail";
            txtmail.Size = new Size(486, 20);
            txtmail.TabIndex = 2;
            txtmail.Text = "Usuario (e-mail)";
            // 
            // txtcontra
            // 
            txtcontra.BackColor = Color.Silver;
            txtcontra.BorderStyle = BorderStyle.None;
            txtcontra.ForeColor = Color.Gray;
            txtcontra.Location = new Point(40, 344);
            txtcontra.Margin = new Padding(5, 4, 5, 4);
            txtcontra.Name = "txtcontra";
            txtcontra.Size = new Size(200, 20);
            txtcontra.TabIndex = 3;
            txtcontra.Text = "Contraseña";
            txtcontra.KeyPress += txtcontra_KeyPress;
            // 
            // txtconfirmarcontra
            // 
            txtconfirmarcontra.BackColor = Color.Silver;
            txtconfirmarcontra.BorderStyle = BorderStyle.None;
            txtconfirmarcontra.ForeColor = Color.Gray;
            txtconfirmarcontra.Location = new Point(312, 344);
            txtconfirmarcontra.Margin = new Padding(5, 4, 5, 4);
            txtconfirmarcontra.Name = "txtconfirmarcontra";
            txtconfirmarcontra.Size = new Size(200, 20);
            txtconfirmarcontra.TabIndex = 4;
            txtconfirmarcontra.Text = "Confirmar contraseña";
            txtconfirmarcontra.KeyPress += txtconfirmarcontra_KeyPress_1;
            // 
            // txtcelular
            // 
            txtcelular.BackColor = Color.Silver;
            txtcelular.BorderStyle = BorderStyle.None;
            txtcelular.ForeColor = Color.Gray;
            txtcelular.Location = new Point(390, 497);
            txtcelular.Margin = new Padding(5, 4, 5, 4);
            txtcelular.Name = "txtcelular";
            txtcelular.Size = new Size(163, 20);
            txtcelular.TabIndex = 6;
            txtcelular.Text = "Celular";
            txtcelular.TextChanged += txtcelular_TextChanged;
            txtcelular.Enter += txtcelular_Enter;
            txtcelular.KeyPress += txtcelular_KeyPress;
            txtcelular.Leave += txtcelular_Leave;
            // 
            // btnRegistrarse
            // 
            btnRegistrarse.BackColor = Color.Transparent;
            btnRegistrarse.FlatAppearance.BorderSize = 0;
            btnRegistrarse.FlatStyle = FlatStyle.Popup;
            btnRegistrarse.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Bold, GraphicsUnit.Point);
            btnRegistrarse.ForeColor = SystemColors.Highlight;
            btnRegistrarse.Location = new Point(416, 579);
            btnRegistrarse.Margin = new Padding(5, 4, 5, 4);
            btnRegistrarse.Name = "btnRegistrarse";
            btnRegistrarse.Size = new Size(137, 47);
            btnRegistrarse.TabIndex = 8;
            btnRegistrarse.Text = "Registrar";
            btnRegistrarse.TextAlign = ContentAlignment.MiddleLeft;
            btnRegistrarse.UseVisualStyleBackColor = false;
            btnRegistrarse.Click += btnRegistrarse_Click;
            // 
            // PicVer
            // 
            PicVer.ErrorImage = (Image)resources.GetObject("PicVer.ErrorImage");
            PicVer.Image = (Image)resources.GetObject("PicVer.Image");
            PicVer.Location = new Point(248, 343);
            PicVer.Margin = new Padding(5, 4, 5, 4);
            PicVer.Name = "PicVer";
            PicVer.Size = new Size(24, 21);
            PicVer.SizeMode = PictureBoxSizeMode.StretchImage;
            PicVer.TabIndex = 54;
            PicVer.TabStop = false;
            PicVer.Click += PicVer_Click;
            // 
            // picConfVer
            // 
            picConfVer.Image = (Image)resources.GetObject("picConfVer.Image");
            picConfVer.Location = new Point(523, 343);
            picConfVer.Margin = new Padding(5, 4, 5, 4);
            picConfVer.Name = "picConfVer";
            picConfVer.Size = new Size(24, 21);
            picConfVer.SizeMode = PictureBoxSizeMode.StretchImage;
            picConfVer.TabIndex = 55;
            picConfVer.TabStop = false;
            picConfVer.Click += picConfVer_Click;
            // 
            // picConOcultar
            // 
            picConOcultar.ErrorImage = (Image)resources.GetObject("picConOcultar.ErrorImage");
            picConOcultar.Image = (Image)resources.GetObject("picConOcultar.Image");
            picConOcultar.Location = new Point(523, 343);
            picConOcultar.Margin = new Padding(5, 4, 5, 4);
            picConOcultar.Name = "picConOcultar";
            picConOcultar.Size = new Size(24, 21);
            picConOcultar.SizeMode = PictureBoxSizeMode.StretchImage;
            picConOcultar.TabIndex = 57;
            picConOcultar.TabStop = false;
            picConOcultar.Click += picConOcultar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(272, 31);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(54, 53);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 58;
            pictureBox1.TabStop = false;
            // 
            // SalirClickk
            // 
            SalirClickk.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            SalirClickk.Location = new Point(527, 33);
            SalirClickk.Margin = new Padding(3, 4, 3, 4);
            SalirClickk.Name = "SalirClickk";
            SalirClickk.Size = new Size(29, 33);
            SalirClickk.SizeMode = PictureBoxSizeMode.Zoom;
            SalirClickk.TabIndex = 59;
            SalirClickk.TabStop = false;
            SalirClickk.Click += SalirClickk_Click;
            // 
            // pictureBox2
            // 
            pictureBox2.BorderStyle = BorderStyle.Fixed3D;
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(510, 579);
            pictureBox2.Margin = new Padding(3, 4, 3, 4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(43, 45);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 60;
            pictureBox2.TabStop = false;
            pictureBox2.Click += pictureBox2_Click;
            // 
            // pictureBox3
            // 
            pictureBox3.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox3.Image = (Image)resources.GetObject("pictureBox3.Image");
            pictureBox3.Location = new Point(527, 33);
            pictureBox3.Margin = new Padding(3, 4, 3, 4);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(29, 33);
            pictureBox3.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox3.TabIndex = 61;
            pictureBox3.TabStop = false;
            pictureBox3.Click += pictureBox3_Click;
            // 
            // txtArea
            // 
            txtArea.BackColor = Color.Silver;
            txtArea.BorderStyle = BorderStyle.None;
            txtArea.ForeColor = Color.Gray;
            txtArea.Location = new Point(321, 497);
            txtArea.Margin = new Padding(5, 4, 5, 4);
            txtArea.Name = "txtArea";
            txtArea.Size = new Size(59, 20);
            txtArea.TabIndex = 5;
            txtArea.Text = "Area";
            txtArea.Enter += txtArea_Enter;
            txtArea.KeyPress += txtArea_KeyPress;
            txtArea.Leave += txtArea_Leave_1;
            // 
            // lblSeguridad
            // 
            lblSeguridad.AutoSize = true;
            lblSeguridad.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            lblSeguridad.Location = new Point(36, 417);
            lblSeguridad.Name = "lblSeguridad";
            lblSeguridad.Size = new Size(144, 20);
            lblSeguridad.TabIndex = 63;
            lblSeguridad.Text = "Nivel de Seguridad:";
            lblSeguridad.Visible = false;
            // 
            // lblNivel
            // 
            lblNivel.AutoSize = true;
            lblNivel.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            lblNivel.Location = new Point(174, 417);
            lblNivel.Name = "lblNivel";
            lblNivel.Size = new Size(0, 20);
            lblNivel.TabIndex = 64;
            lblNivel.Visible = false;
            // 
            // PicOcultar
            // 
            PicOcultar.BackColor = Color.Transparent;
            PicOcultar.ErrorImage = (Image)resources.GetObject("PicOcultar.ErrorImage");
            PicOcultar.Image = (Image)resources.GetObject("PicOcultar.Image");
            PicOcultar.Location = new Point(248, 343);
            PicOcultar.Margin = new Padding(5, 4, 5, 4);
            PicOcultar.Name = "PicOcultar";
            PicOcultar.Size = new Size(24, 22);
            PicOcultar.SizeMode = PictureBoxSizeMode.StretchImage;
            PicOcultar.TabIndex = 56;
            PicOcultar.TabStop = false;
            PicOcultar.Click += PicOcultar_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(272, 497);
            label1.Name = "label1";
            label1.Size = new Size(35, 20);
            label1.TabIndex = 65;
            label1.Text = "+54";
            // 
            // FormCrearUsuario
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Silver;
            ClientSize = new Size(594, 660);
            Controls.Add(label1);
            Controls.Add(lblNivel);
            Controls.Add(lblSeguridad);
            Controls.Add(txtArea);
            Controls.Add(pictureBox3);
            Controls.Add(pictureBox2);
            Controls.Add(SalirClickk);
            Controls.Add(pictureBox1);
            Controls.Add(picConOcultar);
            Controls.Add(PicOcultar);
            Controls.Add(picConfVer);
            Controls.Add(PicVer);
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
            Margin = new Padding(5, 4, 5, 4);
            Name = "FormCrearUsuario";
            Text = "FormCrearUsuario";
            Load += FormCrearUsuario_Load;
            ((System.ComponentModel.ISupportInitialize)PicVer).EndInit();
            ((System.ComponentModel.ISupportInitialize)picConfVer).EndInit();
            ((System.ComponentModel.ISupportInitialize)picConOcultar).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)SalirClickk).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            ((System.ComponentModel.ISupportInitialize)PicOcultar).EndInit();
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
        private System.Windows.Forms.PictureBox PicVer;
        private System.Windows.Forms.PictureBox picConfVer;
        private System.Windows.Forms.PictureBox picConOcultar;
        private PictureBox pictureBox1;
        private PictureBox SalirClickk;
        private PictureBox pictureBox2;
        private PictureBox pictureBox3;
        private TextBox txtArea;
        private Label lblSeguridad;
        private Label lblNivel;
        private PictureBox PicOcultar;
        private Label label1;
    }
}