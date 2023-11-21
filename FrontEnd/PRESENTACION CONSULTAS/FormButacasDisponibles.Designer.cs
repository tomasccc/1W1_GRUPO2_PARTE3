namespace FrontEnd.PRESENTACION_CONSULTAS
{
    partial class FormButacasDisponibles
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
            textBox3 = new TextBox();
            textBox1 = new TextBox();
            cboFechas = new ComboBox();
            cboPeliculas = new ComboBox();
            button5 = new Button();
            button4 = new Button();
            dgvReporte = new DataGridView();
            colNombre = new DataGridViewTextBoxColumn();
            colFecha = new DataGridViewTextBoxColumn();
            colHorario = new DataGridViewTextBoxColumn();
            colButDisponibles = new DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)dgvReporte).BeginInit();
            SuspendLayout();
            // 
            // textBox3
            // 
            textBox3.BackColor = Color.FromArgb(64, 0, 0);
            textBox3.Enabled = false;
            textBox3.ForeColor = SystemColors.Window;
            textBox3.Location = new Point(470, 29);
            textBox3.Margin = new Padding(2);
            textBox3.Name = "textBox3";
            textBox3.RightToLeft = RightToLeft.Yes;
            textBox3.Size = new Size(212, 23);
            textBox3.TabIndex = 21;
            textBox3.Text = "FECHAS";
            textBox3.TextAlign = HorizontalAlignment.Center;
            // 
            // textBox1
            // 
            textBox1.BackColor = Color.FromArgb(64, 0, 0);
            textBox1.Enabled = false;
            textBox1.ForeColor = SystemColors.Window;
            textBox1.Location = new Point(206, 29);
            textBox1.Margin = new Padding(2);
            textBox1.Name = "textBox1";
            textBox1.RightToLeft = RightToLeft.Yes;
            textBox1.Size = new Size(212, 23);
            textBox1.TabIndex = 20;
            textBox1.Text = "PELICULAS";
            textBox1.TextAlign = HorizontalAlignment.Center;
            // 
            // cboFechas
            // 
            cboFechas.FormattingEnabled = true;
            cboFechas.Location = new Point(470, 52);
            cboFechas.Margin = new Padding(2);
            cboFechas.Name = "cboFechas";
            cboFechas.Size = new Size(212, 23);
            cboFechas.TabIndex = 19;
            cboFechas.SelectedIndexChanged += cboFechas_SelectedIndexChanged;
            // 
            // cboPeliculas
            // 
            cboPeliculas.FormattingEnabled = true;
            cboPeliculas.Location = new Point(206, 52);
            cboPeliculas.Margin = new Padding(2);
            cboPeliculas.Name = "cboPeliculas";
            cboPeliculas.Size = new Size(212, 23);
            cboPeliculas.TabIndex = 18;
            cboPeliculas.SelectedIndexChanged += cboPeliculas_SelectedIndexChanged_1;
            // 
            // button5
            // 
            button5.BackColor = Color.FromArgb(64, 0, 0);
            button5.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            button5.ForeColor = SystemColors.ControlLightLight;
            button5.Location = new Point(471, 334);
            button5.Margin = new Padding(2);
            button5.Name = "button5";
            button5.Size = new Size(211, 40);
            button5.TabIndex = 17;
            button5.Text = "Consultar";
            button5.UseVisualStyleBackColor = false;
            button5.Click += button5_Click_1;
            // 
            // button4
            // 
            button4.BackColor = Color.FromArgb(64, 0, 0);
            button4.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            button4.ForeColor = SystemColors.ControlLightLight;
            button4.Location = new Point(207, 334);
            button4.Margin = new Padding(2);
            button4.Name = "button4";
            button4.Size = new Size(211, 40);
            button4.TabIndex = 16;
            button4.Text = "Volver";
            button4.UseVisualStyleBackColor = false;
            button4.Click += button4_Click_1;
            // 
            // dgvReporte
            // 
            dgvReporte.AllowUserToAddRows = false;
            dgvReporte.AllowUserToDeleteRows = false;
            dgvReporte.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvReporte.Columns.AddRange(new DataGridViewColumn[] { colNombre, colFecha, colHorario, colButDisponibles });
            dgvReporte.Location = new Point(141, 113);
            dgvReporte.Margin = new Padding(2);
            dgvReporte.Name = "dgvReporte";
            dgvReporte.ReadOnly = true;
            dgvReporte.RowHeadersWidth = 62;
            dgvReporte.RowTemplate.Height = 33;
            dgvReporte.Size = new Size(644, 151);
            dgvReporte.TabIndex = 15;
            // 
            // colNombre
            // 
            colNombre.HeaderText = "Nombre";
            colNombre.MinimumWidth = 8;
            colNombre.Name = "colNombre";
            colNombre.ReadOnly = true;
            colNombre.Width = 150;
            // 
            // colFecha
            // 
            colFecha.HeaderText = "Fecha";
            colFecha.MinimumWidth = 8;
            colFecha.Name = "colFecha";
            colFecha.ReadOnly = true;
            colFecha.Width = 150;
            // 
            // colHorario
            // 
            colHorario.HeaderText = "Horario";
            colHorario.MinimumWidth = 8;
            colHorario.Name = "colHorario";
            colHorario.ReadOnly = true;
            colHorario.Width = 150;
            // 
            // colButDisponibles
            // 
            colButDisponibles.HeaderText = "Butacas Disponibles";
            colButDisponibles.MinimumWidth = 8;
            colButDisponibles.Name = "colButDisponibles";
            colButDisponibles.ReadOnly = true;
            colButDisponibles.Width = 150;
            // 
            // FormButacasDisponibles
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(926, 402);
            Controls.Add(textBox3);
            Controls.Add(textBox1);
            Controls.Add(cboFechas);
            Controls.Add(cboPeliculas);
            Controls.Add(button5);
            Controls.Add(button4);
            Controls.Add(dgvReporte);
            Margin = new Padding(3, 2, 3, 2);
            Name = "FormButacasDisponibles";
            Text = "FormButacasDisponibles";
            Load += FormButacasDisponibles_Load;
            ((System.ComponentModel.ISupportInitialize)dgvReporte).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox textBox3;
        private TextBox textBox1;
        private ComboBox cboFechas;
        private ComboBox cboPeliculas;
        private Button button5;
        private Button button4;
        private DataGridView dgvReporte;
        private DataGridViewTextBoxColumn colNombre;
        private DataGridViewTextBoxColumn colFecha;
        private DataGridViewTextBoxColumn colHorario;
        private DataGridViewTextBoxColumn colButDisponibles;
    }
}