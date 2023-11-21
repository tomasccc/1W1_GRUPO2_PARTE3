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
            label9 = new Label();
            label8 = new Label();
            label7 = new Label();
            label6 = new Label();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            cboHorario = new ComboBox();
            label1 = new Label();
            cboFunciones = new ComboBox();
            btnSiguiente = new Button();
            btnPantalla = new Button();
            btnBuscar = new Button();
            btnVolver = new Button();
            SuspendLayout();
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label9.ForeColor = Color.Black;
            label9.Location = new Point(273, 261);
            label9.Margin = new Padding(4, 0, 4, 0);
            label9.Name = "label9";
            label9.Size = new Size(19, 20);
            label9.TabIndex = 118;
            label9.Text = "F";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label8.ForeColor = Color.Black;
            label8.Location = new Point(272, 143);
            label8.Margin = new Padding(4, 0, 4, 0);
            label8.Name = "label8";
            label8.Size = new Size(20, 20);
            label8.TabIndex = 117;
            label8.Text = "C";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label7.ForeColor = Color.Black;
            label7.Location = new Point(272, 222);
            label7.Margin = new Padding(4, 0, 4, 0);
            label7.Name = "label7";
            label7.Size = new Size(20, 20);
            label7.TabIndex = 116;
            label7.Text = "E";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label6.ForeColor = Color.Black;
            label6.Location = new Point(271, 182);
            label6.Margin = new Padding(4, 0, 4, 0);
            label6.Name = "label6";
            label6.Size = new Size(21, 20);
            label6.TabIndex = 115;
            label6.Text = "D";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label5.ForeColor = Color.Black;
            label5.Location = new Point(272, 104);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(20, 20);
            label5.TabIndex = 114;
            label5.Text = "B";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label4.ForeColor = Color.Black;
            label4.Location = new Point(272, 65);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(20, 20);
            label4.TabIndex = 113;
            label4.Text = "A";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BorderStyle = BorderStyle.Fixed3D;
            label3.Font = new Font("Microsoft Sans Serif", 18F, FontStyle.Bold, GraphicsUnit.Point);
            label3.ForeColor = Color.Black;
            label3.Location = new Point(16, 10);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(111, 31);
            label3.TabIndex = 146;
            label3.Text = "Reserva";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            label2.ForeColor = Color.Black;
            label2.Location = new Point(8, 103);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(64, 13);
            label2.TabIndex = 145;
            label2.Text = "HORARIO";
            // 
            // cboHorario
            // 
            cboHorario.Enabled = false;
            cboHorario.FormattingEnabled = true;
            cboHorario.Location = new Point(90, 98);
            cboHorario.Margin = new Padding(4, 3, 4, 3);
            cboHorario.Name = "cboHorario";
            cboHorario.Size = new Size(156, 23);
            cboHorario.TabIndex = 144;
            cboHorario.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            label1.ForeColor = Color.Black;
            label1.Location = new Point(28, 62);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(47, 13);
            label1.TabIndex = 143;
            label1.Text = "FECHA";
            label1.Click += label1_Click;
            // 
            // cboFunciones
            // 
            cboFunciones.FormattingEnabled = true;
            cboFunciones.Location = new Point(90, 59);
            cboFunciones.Margin = new Padding(4, 3, 4, 3);
            cboFunciones.Name = "cboFunciones";
            cboFunciones.Size = new Size(156, 23);
            cboFunciones.TabIndex = 142;
            cboFunciones.SelectedIndexChanged += cboFunciones_SelectedIndexChanged_1;
            // 
            // btnSiguiente
            // 
            btnSiguiente.BackColor = Color.FromArgb(64, 0, 0);
            btnSiguiente.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnSiguiente.ForeColor = Color.White;
            btnSiguiente.Location = new Point(582, 399);
            btnSiguiente.Margin = new Padding(4, 3, 4, 3);
            btnSiguiente.Name = "btnSiguiente";
            btnSiguiente.Size = new Size(167, 37);
            btnSiguiente.TabIndex = 150;
            btnSiguiente.Text = "SIGUIENTE";
            btnSiguiente.UseVisualStyleBackColor = false;
            btnSiguiente.Click += btnSiguiente_Click;
            // 
            // btnPantalla
            // 
            btnPantalla.BackColor = Color.Black;
            btnPantalla.Enabled = false;
            btnPantalla.Font = new Font("Gadugi", 14.25F, FontStyle.Regular, GraphicsUnit.Point);
            btnPantalla.ForeColor = Color.White;
            btnPantalla.Location = new Point(278, 337);
            btnPantalla.Margin = new Padding(4, 3, 4, 3);
            btnPantalla.Name = "btnPantalla";
            btnPantalla.Size = new Size(471, 45);
            btnPantalla.TabIndex = 149;
            btnPantalla.Text = "PANTALLA";
            btnPantalla.UseVisualStyleBackColor = false;
            btnPantalla.Click += btnPantalla_Click;
            // 
            // btnBuscar
            // 
            btnBuscar.BackColor = Color.Gray;
            btnBuscar.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnBuscar.ForeColor = Color.White;
            btnBuscar.Location = new Point(90, 143);
            btnBuscar.Margin = new Padding(4, 3, 4, 3);
            btnBuscar.Name = "btnBuscar";
            btnBuscar.Size = new Size(156, 47);
            btnBuscar.TabIndex = 151;
            btnBuscar.Text = "BUSCAR BUTACAS";
            btnBuscar.UseVisualStyleBackColor = false;
            btnBuscar.Click += button1_Click_1;
            // 
            // btnVolver
            // 
            btnVolver.BackColor = Color.Gray;
            btnVolver.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnVolver.ForeColor = Color.White;
            btnVolver.Location = new Point(16, 399);
            btnVolver.Margin = new Padding(4, 3, 4, 3);
            btnVolver.Name = "btnVolver";
            btnVolver.Size = new Size(146, 37);
            btnVolver.TabIndex = 152;
            btnVolver.Text = "VOLVER";
            btnVolver.UseVisualStyleBackColor = false;
            btnVolver.Click += button2_Click;
            // 
            // FormReservar
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Silver;
            ClientSize = new Size(772, 466);
            Controls.Add(btnVolver);
            Controls.Add(btnBuscar);
            Controls.Add(btnSiguiente);
            Controls.Add(btnPantalla);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(cboHorario);
            Controls.Add(label1);
            Controls.Add(cboFunciones);
            Controls.Add(label9);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4, 3, 4, 3);
            Name = "FormReservar";
            Text = "FormReservar";
            Load += FormReservar_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboHorario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboFunciones;
        private System.Windows.Forms.Button btnSiguiente;
        private System.Windows.Forms.Button btnPantalla;
        private System.Windows.Forms.Button btnBuscar;
        private Button btnVolver;
    }
}