namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    partial class FormReservar
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormReservar));
            label3 = new Label();
            label2 = new Label();
            cboHorario = new ComboBox();
            label1 = new Label();
            cboFunciones = new ComboBox();
            btnBuscar = new Button();
            btnVolver = new Button();
            pictureBox1 = new PictureBox();
            pictureBox2 = new PictureBox();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            label8 = new Label();
            label9 = new Label();
            btnPantalla = new Button();
            btnSiguiente = new Button();
            label10 = new Label();
            panel1 = new Panel();
            label11 = new Label();
            cboTipoSala = new ComboBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BorderStyle = BorderStyle.FixedSingle;
            label3.Font = new Font("Microsoft Sans Serif", 18F, FontStyle.Bold, GraphicsUnit.Point);
            label3.ForeColor = Color.FromArgb(192, 192, 255);
            label3.Location = new Point(18, 41);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(134, 38);
            label3.TabIndex = 146;
            label3.Text = "Reserva";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            label2.ForeColor = Color.FromArgb(192, 192, 255);
            label2.Location = new Point(41, 207);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(79, 17);
            label2.TabIndex = 145;
            label2.Text = "HORARIO";
            // 
            // cboHorario
            // 
            cboHorario.Enabled = false;
            cboHorario.FormattingEnabled = true;
            cboHorario.Location = new Point(123, 193);
            cboHorario.Margin = new Padding(5, 4, 5, 4);
            cboHorario.Name = "cboHorario";
            cboHorario.Size = new Size(157, 28);
            cboHorario.TabIndex = 1;
            cboHorario.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            label1.ForeColor = Color.FromArgb(192, 192, 255);
            label1.Location = new Point(61, 153);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(58, 17);
            label1.TabIndex = 143;
            label1.Text = "FECHA";
            label1.Click += label1_Click;
            // 
            // cboFunciones
            // 
            cboFunciones.FormattingEnabled = true;
            cboFunciones.Location = new Point(123, 148);
            cboFunciones.Margin = new Padding(5, 4, 5, 4);
            cboFunciones.Name = "cboFunciones";
            cboFunciones.Size = new Size(157, 28);
            cboFunciones.TabIndex = 0;
            cboFunciones.SelectedIndexChanged += cboFunciones_SelectedIndexChanged_1;
            // 
            // btnBuscar
            // 
            btnBuscar.BackColor = Color.Gray;
            btnBuscar.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnBuscar.ForeColor = Color.Navy;
            btnBuscar.Location = new Point(123, 312);
            btnBuscar.Margin = new Padding(5, 4, 5, 4);
            btnBuscar.Name = "btnBuscar";
            btnBuscar.Size = new Size(158, 63);
            btnBuscar.TabIndex = 3;
            btnBuscar.Text = "BUSCAR BUTACAS";
            btnBuscar.UseVisualStyleBackColor = false;
            btnBuscar.Click += button1_Click_1;
            // 
            // btnVolver
            // 
            btnVolver.BackColor = Color.Gray;
            btnVolver.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnVolver.ForeColor = Color.White;
            btnVolver.Location = new Point(18, 532);
            btnVolver.Margin = new Padding(5, 4, 5, 4);
            btnVolver.Name = "btnVolver";
            btnVolver.Size = new Size(167, 49);
            btnVolver.TabIndex = 4;
            btnVolver.Text = "VOLVER";
            btnVolver.UseVisualStyleBackColor = false;
            btnVolver.Click += button2_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(58, 309);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(56, 65);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 153;
            pictureBox1.TabStop = false;
            pictureBox1.Click += pictureBox1_Click;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(190, 41);
            pictureBox2.Margin = new Padding(3, 4, 3, 4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(58, 68);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 154;
            pictureBox2.TabStop = false;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label4.ForeColor = Color.Red;
            label4.Location = new Point(17, 87);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(26, 25);
            label4.TabIndex = 113;
            label4.Text = "A";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label5.ForeColor = Color.Red;
            label5.Location = new Point(17, 139);
            label5.Margin = new Padding(5, 0, 5, 0);
            label5.Name = "label5";
            label5.Size = new Size(25, 25);
            label5.TabIndex = 114;
            label5.Text = "B";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label6.ForeColor = Color.Red;
            label6.Location = new Point(16, 243);
            label6.Margin = new Padding(5, 0, 5, 0);
            label6.Name = "label6";
            label6.Size = new Size(26, 25);
            label6.TabIndex = 115;
            label6.Text = "D";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label7.ForeColor = Color.Red;
            label7.Location = new Point(17, 296);
            label7.Margin = new Padding(5, 0, 5, 0);
            label7.Name = "label7";
            label7.Size = new Size(25, 25);
            label7.TabIndex = 116;
            label7.Text = "E";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label8.ForeColor = Color.Red;
            label8.Location = new Point(17, 191);
            label8.Margin = new Padding(5, 0, 5, 0);
            label8.Name = "label8";
            label8.Size = new Size(27, 25);
            label8.TabIndex = 117;
            label8.Text = "C";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label9.ForeColor = Color.Red;
            label9.Location = new Point(18, 348);
            label9.Margin = new Padding(5, 0, 5, 0);
            label9.Name = "label9";
            label9.Size = new Size(24, 25);
            label9.TabIndex = 118;
            label9.Text = "F";
            // 
            // btnPantalla
            // 
            btnPantalla.BackColor = Color.Black;
            btnPantalla.Enabled = false;
            btnPantalla.Font = new Font("Gadugi", 14.25F, FontStyle.Regular, GraphicsUnit.Point);
            btnPantalla.ForeColor = Color.White;
            btnPantalla.Location = new Point(24, 449);
            btnPantalla.Margin = new Padding(5, 4, 5, 4);
            btnPantalla.Name = "btnPantalla";
            btnPantalla.Size = new Size(538, 60);
            btnPantalla.TabIndex = 149;
            btnPantalla.UseVisualStyleBackColor = false;
            btnPantalla.Click += btnPantalla_Click;
            // 
            // btnSiguiente
            // 
            btnSiguiente.BackColor = Color.FromArgb(64, 0, 0);
            btnSiguiente.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnSiguiente.ForeColor = Color.White;
            btnSiguiente.Location = new Point(371, 532);
            btnSiguiente.Margin = new Padding(5, 4, 5, 4);
            btnSiguiente.Name = "btnSiguiente";
            btnSiguiente.Size = new Size(191, 49);
            btnSiguiente.TabIndex = 0;
            btnSiguiente.Text = "SIGUIENTE";
            btnSiguiente.UseVisualStyleBackColor = false;
            btnSiguiente.Click += btnSiguiente_Click;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.BackColor = Color.Black;
            label10.ForeColor = Color.FromArgb(64, 64, 64);
            label10.Location = new Point(261, 472);
            label10.Name = "label10";
            label10.Size = new Size(78, 20);
            label10.TabIndex = 155;
            label10.Text = "PANTALLA";
            // 
            // panel1
            // 
            panel1.BackColor = Color.FromArgb(64, 64, 64);
            panel1.Controls.Add(label10);
            panel1.Controls.Add(btnSiguiente);
            panel1.Controls.Add(btnPantalla);
            panel1.Controls.Add(label9);
            panel1.Controls.Add(label8);
            panel1.Controls.Add(label7);
            panel1.Controls.Add(label6);
            panel1.Controls.Add(label5);
            panel1.Controls.Add(label4);
            panel1.Location = new Point(294, 0);
            panel1.Margin = new Padding(3, 4, 3, 4);
            panel1.Name = "panel1";
            panel1.Size = new Size(599, 632);
            panel1.TabIndex = 156;
            panel1.Paint += panel1_Paint_1;
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            label11.ForeColor = Color.FromArgb(192, 192, 255);
            label11.Location = new Point(9, 252);
            label11.Margin = new Padding(5, 0, 5, 0);
            label11.Name = "label11";
            label11.Size = new Size(114, 17);
            label11.TabIndex = 158;
            label11.Text = "TIPO DE SALA";
            // 
            // cboTipoSala
            // 
            cboTipoSala.Enabled = false;
            cboTipoSala.FormattingEnabled = true;
            cboTipoSala.Location = new Point(123, 239);
            cboTipoSala.Margin = new Padding(5, 4, 5, 4);
            cboTipoSala.Name = "cboTipoSala";
            cboTipoSala.Size = new Size(157, 28);
            cboTipoSala.TabIndex = 2;
            cboTipoSala.SelectedIndexChanged += cboTipoSala_SelectedIndexChanged;
            // 
            // FormReservar
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(0, 0, 64);
            ClientSize = new Size(882, 621);
            Controls.Add(label11);
            Controls.Add(cboTipoSala);
            Controls.Add(panel1);
            Controls.Add(pictureBox2);
            Controls.Add(pictureBox1);
            Controls.Add(btnVolver);
            Controls.Add(btnBuscar);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(cboHorario);
            Controls.Add(label1);
            Controls.Add(cboFunciones);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(5, 4, 5, 4);
            Name = "FormReservar";
            Text = "FormReservar";
            Load += FormReservar_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Label label3;
        private Label label2;
        private ComboBox cboHorario;
        private Label label1;
        private ComboBox cboFunciones;
        private Button btnBuscar;
        private Button btnVolver;
        private PictureBox pictureBox1;
        private PictureBox pictureBox2;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private Label label8;
        private Label label9;
        private Button btnPantalla;
        private Button btnSiguiente;
        private Label label10;
        private Panel panel1;
        private Label label11;
        private ComboBox cboTipoSala;
        private Button button14;
        private Button button13;
        private Button button12;
        private Button button11;
        private Button button10;
        private Button button9;
        private Button button8;
        private Button button7;
        private Button button6;
        private Button button5;
        private Button button4;
        private Button button3;
        private Button button2;
        private Button button1;
    }
}