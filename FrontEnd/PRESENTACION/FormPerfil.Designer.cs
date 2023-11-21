namespace FrontEnd.PRESENTACION
{
    partial class FormPerfil
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPerfil));
            pictureBox1 = new PictureBox();
            panel1 = new Panel();
            lblNombre = new Label();
            panel2 = new Panel();
            panel3 = new Panel();
            panel4 = new Panel();
            lblmail = new Label();
            lblTelefono = new Label();
            lblApellido = new Label();
            panel5 = new Panel();
            lblContraseña = new Label();
            txtContra = new TextBox();
            pictureBox2 = new PictureBox();
            pictureBox3 = new PictureBox();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            SuspendLayout();
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(220, 12);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(99, 82);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // panel1
            // 
            panel1.BackColor = Color.Black;
            panel1.BorderStyle = BorderStyle.Fixed3D;
            panel1.Location = new Point(31, 179);
            panel1.Name = "panel1";
            panel1.Size = new Size(200, 3);
            panel1.TabIndex = 1;
            // 
            // lblNombre
            // 
            lblNombre.AutoSize = true;
            lblNombre.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblNombre.Location = new Point(111, 155);
            lblNombre.Name = "lblNombre";
            lblNombre.Size = new Size(65, 21);
            lblNombre.TabIndex = 2;
            lblNombre.Text = "nombre";
            // 
            // panel2
            // 
            panel2.BackColor = Color.Black;
            panel2.BorderStyle = BorderStyle.Fixed3D;
            panel2.Location = new Point(299, 179);
            panel2.Name = "panel2";
            panel2.Size = new Size(200, 3);
            panel2.TabIndex = 2;
            // 
            // panel3
            // 
            panel3.BackColor = Color.Black;
            panel3.BorderStyle = BorderStyle.Fixed3D;
            panel3.Location = new Point(299, 240);
            panel3.Name = "panel3";
            panel3.Size = new Size(200, 3);
            panel3.TabIndex = 2;
            // 
            // panel4
            // 
            panel4.BackColor = Color.Black;
            panel4.BorderStyle = BorderStyle.Fixed3D;
            panel4.Location = new Point(31, 240);
            panel4.Name = "panel4";
            panel4.Size = new Size(200, 3);
            panel4.TabIndex = 2;
            // 
            // lblmail
            // 
            lblmail.AutoSize = true;
            lblmail.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblmail.Location = new Point(348, 216);
            lblmail.Name = "lblmail";
            lblmail.Size = new Size(49, 21);
            lblmail.TabIndex = 3;
            lblmail.Text = "gmail";
            lblmail.Click += label1_Click;
            // 
            // lblTelefono
            // 
            lblTelefono.AutoSize = true;
            lblTelefono.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblTelefono.Location = new Point(111, 216);
            lblTelefono.Name = "lblTelefono";
            lblTelefono.Size = new Size(98, 21);
            lblTelefono.TabIndex = 4;
            lblTelefono.Text = "nro_telefono";
            // 
            // lblApellido
            // 
            lblApellido.AutoSize = true;
            lblApellido.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblApellido.Location = new Point(375, 155);
            lblApellido.Name = "lblApellido";
            lblApellido.Size = new Size(67, 21);
            lblApellido.TabIndex = 5;
            lblApellido.Text = "Apellido";
            // 
            // panel5
            // 
            panel5.BackColor = Color.Black;
            panel5.BorderStyle = BorderStyle.Fixed3D;
            panel5.Location = new Point(142, 329);
            panel5.Name = "panel5";
            panel5.Size = new Size(250, 3);
            panel5.TabIndex = 3;
            // 
            // lblContraseña
            // 
            lblContraseña.AutoSize = true;
            lblContraseña.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblContraseña.Location = new Point(142, 307);
            lblContraseña.Name = "lblContraseña";
            lblContraseña.Size = new Size(89, 21);
            lblContraseña.TabIndex = 6;
            lblContraseña.Text = "Contraseña";
            // 
            // txtContra
            // 
            txtContra.BackColor = Color.Silver;
            txtContra.BorderStyle = BorderStyle.None;
            txtContra.ForeColor = Color.White;
            txtContra.Location = new Point(237, 312);
            txtContra.Name = "txtContra";
            txtContra.Size = new Size(100, 16);
            txtContra.TabIndex = 9;
            txtContra.TextChanged += txtContra_TextChanged;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(200, 411);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(54, 50);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 10;
            pictureBox2.TabStop = false;
            pictureBox2.Click += pictureBox2_Click;
            // 
            // pictureBox3
            // 
            pictureBox3.Image = (Image)resources.GetObject("pictureBox3.Image");
            pictureBox3.Location = new Point(282, 409);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(55, 52);
            pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox3.TabIndex = 11;
            pictureBox3.TabStop = false;
            pictureBox3.Click += pictureBox3_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label1.Location = new Point(34, 155);
            label1.Name = "label1";
            label1.Size = new Size(71, 21);
            label1.TabIndex = 12;
            label1.Text = "Nombre:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label2.Location = new Point(299, 155);
            label2.Name = "label2";
            label2.Size = new Size(70, 21);
            label2.TabIndex = 13;
            label2.Text = "Apellido:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label3.Location = new Point(34, 216);
            label3.Name = "label3";
            label3.Size = new Size(71, 21);
            label3.TabIndex = 14;
            label3.Text = "Telefono:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label4.Location = new Point(299, 216);
            label4.Name = "label4";
            label4.Size = new Size(43, 21);
            label4.TabIndex = 15;
            label4.Text = "Mail:";
            // 
            // FormPerfil
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Silver;
            ClientSize = new Size(528, 473);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(pictureBox3);
            Controls.Add(pictureBox2);
            Controls.Add(txtContra);
            Controls.Add(lblContraseña);
            Controls.Add(panel5);
            Controls.Add(lblApellido);
            Controls.Add(lblTelefono);
            Controls.Add(lblmail);
            Controls.Add(panel4);
            Controls.Add(panel3);
            Controls.Add(panel2);
            Controls.Add(lblNombre);
            Controls.Add(panel1);
            Controls.Add(pictureBox1);
            Name = "FormPerfil";
            Text = "FormPerfil";
            Load += FormPerfil_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private PictureBox pictureBox1;
        private Panel panel1;
        private Label lblNombre;
        private Panel panel2;
        private Panel panel3;
        private Panel panel4;
        private Label lblmail;
        private Label lblTelefono;
        private Label lblApellido;
        private Panel panel5;
        private Label lblContraseña;
        private TextBox txtContra;
        private PictureBox pictureBox2;
        private PictureBox pictureBox3;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
    }
}