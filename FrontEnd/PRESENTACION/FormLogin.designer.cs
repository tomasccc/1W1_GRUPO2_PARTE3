namespace FrontEnd.PRESENTACION
{
    partial class FormLogin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormLogin));
            txtUsuario = new TextBox();
            button1 = new Button();
            labelCrearCuenta = new Label();
            label4 = new Label();
            btnCrearCuenta = new Button();
            panel1 = new Panel();
            pictureBox1 = new PictureBox();
            panel2 = new Panel();
            panel3 = new Panel();
            panel4 = new Panel();
            picVer = new PictureBox();
            picOcultar = new PictureBox();
            txtContraseña = new TextBox();
            pictureBox2 = new PictureBox();
            checkAdmin = new CheckBox();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)picVer).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picOcultar).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            SuspendLayout();
            // 
            // txtUsuario
            // 
            txtUsuario.BackColor = Color.FromArgb(64, 0, 0);
            txtUsuario.BorderStyle = BorderStyle.None;
            txtUsuario.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            txtUsuario.ForeColor = SystemColors.MenuBar;
            txtUsuario.Location = new Point(335, 102);
            txtUsuario.Margin = new Padding(4);
            txtUsuario.Name = "txtUsuario";
            txtUsuario.Size = new Size(557, 19);
            txtUsuario.TabIndex = 0;
            txtUsuario.Text = "USUARIO";
            txtUsuario.Enter += textBox2_Enter;
            txtUsuario.Leave += txtUsuario_Leave;
            // 
            // button1
            // 
            button1.BackColor = Color.FromArgb(64, 64, 64);
            button1.Cursor = Cursors.Hand;
            button1.FlatAppearance.BorderSize = 0;
            button1.FlatStyle = FlatStyle.Flat;
            button1.ForeColor = Color.White;
            button1.Location = new Point(335, 232);
            button1.Margin = new Padding(4);
            button1.Name = "button1";
            button1.Size = new Size(557, 41);
            button1.TabIndex = 3;
            button1.Text = "Ingresar";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // labelCrearCuenta
            // 
            labelCrearCuenta.AutoSize = true;
            labelCrearCuenta.ForeColor = SystemColors.Highlight;
            labelCrearCuenta.Location = new Point(459, 314);
            labelCrearCuenta.Margin = new Padding(4, 0, 4, 0);
            labelCrearCuenta.Name = "labelCrearCuenta";
            labelCrearCuenta.Size = new Size(175, 20);
            labelCrearCuenta.TabIndex = 6;
            labelCrearCuenta.Text = "¿No estás registrado?";
            labelCrearCuenta.Click += label3_Click;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 21.75F, FontStyle.Regular, GraphicsUnit.Point);
            label4.ForeColor = Color.White;
            label4.Location = new Point(520, 20);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(241, 42);
            label4.TabIndex = 7;
            label4.Text = "Iniciar Sesión";
            label4.Click += label4_Click;
            // 
            // btnCrearCuenta
            // 
            btnCrearCuenta.Cursor = Cursors.Hand;
            btnCrearCuenta.FlatStyle = FlatStyle.Flat;
            btnCrearCuenta.ForeColor = Color.Gainsboro;
            btnCrearCuenta.Location = new Point(632, 306);
            btnCrearCuenta.Margin = new Padding(4);
            btnCrearCuenta.Name = "btnCrearCuenta";
            btnCrearCuenta.Size = new Size(161, 30);
            btnCrearCuenta.TabIndex = 4;
            btnCrearCuenta.Text = "Crear Cuenta";
            btnCrearCuenta.UseVisualStyleBackColor = true;
            btnCrearCuenta.Click += btnCrearCuenta_Click;
            // 
            // panel1
            // 
            panel1.BackColor = Color.Black;
            panel1.Controls.Add(pictureBox1);
            panel1.Dock = DockStyle.Left;
            panel1.Location = new Point(0, 0);
            panel1.Margin = new Padding(4);
            panel1.Name = "panel1";
            panel1.Size = new Size(313, 358);
            panel1.TabIndex = 9;
            panel1.Paint += panel1_Paint;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(-22, 71);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(400, 361);
            pictureBox1.SizeMode = PictureBoxSizeMode.CenterImage;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            pictureBox1.Click += pictureBox1_Click;
            // 
            // panel2
            // 
            panel2.BackColor = Color.Black;
            panel2.Controls.Add(panel3);
            panel2.Location = new Point(335, 124);
            panel2.Name = "panel2";
            panel2.Size = new Size(557, 4);
            panel2.TabIndex = 10;
            // 
            // panel3
            // 
            panel3.BackColor = Color.Silver;
            panel3.Location = new Point(0, 0);
            panel3.Name = "panel3";
            panel3.Size = new Size(557, 3);
            panel3.TabIndex = 11;
            // 
            // panel4
            // 
            panel4.BackColor = Color.Silver;
            panel4.Location = new Point(335, 180);
            panel4.Name = "panel4";
            panel4.Size = new Size(557, 3);
            panel4.TabIndex = 11;
            // 
            // picVer
            // 
            picVer.Image = (Image)resources.GetObject("picVer.Image");
            picVer.Location = new Point(852, 155);
            picVer.Name = "picVer";
            picVer.Size = new Size(58, 25);
            picVer.SizeMode = PictureBoxSizeMode.StretchImage;
            picVer.TabIndex = 12;
            picVer.TabStop = false;
            picVer.Click += pictureBox2_Click;
            // 
            // picOcultar
            // 
            picOcultar.BackColor = Color.FromArgb(60, 0, 0);
            picOcultar.Image = (Image)resources.GetObject("picOcultar.Image");
            picOcultar.Location = new Point(852, 153);
            picOcultar.Name = "picOcultar";
            picOcultar.Size = new Size(58, 25);
            picOcultar.SizeMode = PictureBoxSizeMode.StretchImage;
            picOcultar.TabIndex = 13;
            picOcultar.TabStop = false;
            picOcultar.Click += picOcultar_Click;
            // 
            // txtContraseña
            // 
            txtContraseña.BackColor = Color.FromArgb(60, 0, 0);
            txtContraseña.BorderStyle = BorderStyle.None;
            txtContraseña.ForeColor = Color.White;
            txtContraseña.Location = new Point(335, 159);
            txtContraseña.Name = "txtContraseña";
            txtContraseña.Size = new Size(511, 19);
            txtContraseña.TabIndex = 1;
            txtContraseña.Text = "CONTRASEÑA";
            txtContraseña.Enter += txtContraseña_Enter;
            txtContraseña.Leave += txtContraseña_Leave;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(988, 12);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(19, 17);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 15;
            pictureBox2.TabStop = false;
            pictureBox2.Click += pictureBox2_Click_1;
            // 
            // checkAdmin
            // 
            checkAdmin.AutoSize = true;
            checkAdmin.ForeColor = SystemColors.ControlLightLight;
            checkAdmin.Location = new Point(335, 205);
            checkAdmin.Name = "checkAdmin";
            checkAdmin.Size = new Size(239, 24);
            checkAdmin.TabIndex = 2;
            checkAdmin.Text = "Ingreso como administrador";
            checkAdmin.UseVisualStyleBackColor = true;
            checkAdmin.CheckedChanged += checkAdmin_CheckedChanged;
            // 
            // FormLogin
            // 
            AutoScaleDimensions = new SizeF(9F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(1019, 358);
            Controls.Add(checkAdmin);
            Controls.Add(pictureBox2);
            Controls.Add(txtContraseña);
            Controls.Add(picOcultar);
            Controls.Add(picVer);
            Controls.Add(panel4);
            Controls.Add(panel2);
            Controls.Add(label4);
            Controls.Add(button1);
            Controls.Add(txtUsuario);
            Controls.Add(panel1);
            Controls.Add(btnCrearCuenta);
            Controls.Add(labelCrearCuenta);
            Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4);
            Name = "FormLogin";
            Opacity = 0.97D;
            StartPosition = FormStartPosition.CenterScreen;
            Text = "FormLogin";
            Load += FormLogin_Load;
            panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)picVer).EndInit();
            ((System.ComponentModel.ISupportInitialize)picOcultar).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label labelCrearCuenta;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnCrearCuenta;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.PictureBox picVer;
        private System.Windows.Forms.PictureBox picOcultar;
        private System.Windows.Forms.TextBox txtContraseña;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.CheckBox checkAdmin;
    }
}