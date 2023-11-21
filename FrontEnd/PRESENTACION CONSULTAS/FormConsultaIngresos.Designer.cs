namespace FrontEnd.PRESENTACION_CONSULTAS
{
    partial class FormConsultaIngresos
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormConsultaIngresos));
            dtpFecDesde = new DateTimePicker();
            label1 = new Label();
            btnGenerar = new Button();
            DGVIngresos = new DataGridView();
            Id = new DataGridViewTextBoxColumn();
            Día = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn1 = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn2 = new DataGridViewTextBoxColumn();
            txtTotal = new TextBox();
            label2 = new Label();
            dtpFecHasta = new DateTimePicker();
            label3 = new Label();
            pictureBox1 = new PictureBox();
            btnRegresar = new Button();
            Coldía = new DataGridViewTextBoxColumn();
            ColIngresos = new DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)DGVIngresos).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // dtpFecDesde
            // 
            dtpFecDesde.Format = DateTimePickerFormat.Short;
            dtpFecDesde.Location = new Point(121, 288);
            dtpFecDesde.Margin = new Padding(3, 4, 3, 4);
            dtpFecDesde.Name = "dtpFecDesde";
            dtpFecDesde.Size = new Size(133, 27);
            dtpFecDesde.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft YaHei", 13.8F, FontStyle.Bold, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ActiveCaption;
            label1.Location = new Point(460, 481);
            label1.Name = "label1";
            label1.Size = new Size(73, 31);
            label1.TabIndex = 1;
            label1.Text = "Total";
            // 
            // btnGenerar
            // 
            btnGenerar.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            btnGenerar.Location = new Point(40, 389);
            btnGenerar.Margin = new Padding(3, 4, 3, 4);
            btnGenerar.Name = "btnGenerar";
            btnGenerar.Size = new Size(173, 55);
            btnGenerar.TabIndex = 2;
            btnGenerar.Text = "Generar";
            btnGenerar.UseVisualStyleBackColor = true;
            btnGenerar.Click += btnGenerar_Click;
            // 
            // DGVIngresos
            // 
            DGVIngresos.AllowUserToAddRows = false;
            DGVIngresos.AllowUserToDeleteRows = false;
            DGVIngresos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVIngresos.Columns.AddRange(new DataGridViewColumn[] { Coldía, ColIngresos });
            DGVIngresos.Location = new Point(345, 16);
            DGVIngresos.Margin = new Padding(3, 4, 3, 4);
            DGVIngresos.Name = "DGVIngresos";
            DGVIngresos.ReadOnly = true;
            DGVIngresos.RowHeadersWidth = 51;
            DGVIngresos.RowTemplate.Height = 25;
            DGVIngresos.Size = new Size(456, 428);
            DGVIngresos.TabIndex = 3;
            DGVIngresos.CellContentClick += dataGridView1_CellContentClick;
            // 
            // Id
            // 
            Id.HeaderText = "ID";
            Id.MinimumWidth = 6;
            Id.Name = "Id";
            Id.ReadOnly = true;
            Id.Visible = false;
            Id.Width = 125;
            // 
            // Día
            // 
            Día.HeaderText = "Día";
            Día.MinimumWidth = 6;
            Día.Name = "Día";
            Día.ReadOnly = true;
            Día.Width = 125;
            // 
            // dataGridViewTextBoxColumn1
            // 
            dataGridViewTextBoxColumn1.HeaderText = "ID";
            dataGridViewTextBoxColumn1.MinimumWidth = 6;
            dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            dataGridViewTextBoxColumn1.ReadOnly = true;
            dataGridViewTextBoxColumn1.Visible = false;
            dataGridViewTextBoxColumn1.Width = 125;
            // 
            // dataGridViewTextBoxColumn2
            // 
            dataGridViewTextBoxColumn2.HeaderText = "Día";
            dataGridViewTextBoxColumn2.MinimumWidth = 6;
            dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            dataGridViewTextBoxColumn2.ReadOnly = true;
            dataGridViewTextBoxColumn2.Width = 125;
            // 
            // txtTotal
            // 
            txtTotal.Location = new Point(539, 485);
            txtTotal.Margin = new Padding(3, 4, 3, 4);
            txtTotal.Name = "txtTotal";
            txtTotal.Size = new Size(151, 27);
            txtTotal.TabIndex = 4;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ActiveCaption;
            label2.Location = new Point(40, 334);
            label2.Name = "label2";
            label2.Size = new Size(59, 20);
            label2.TabIndex = 6;
            label2.Text = "Hasta";
            // 
            // dtpFecHasta
            // 
            dtpFecHasta.Format = DateTimePickerFormat.Short;
            dtpFecHasta.Location = new Point(121, 334);
            dtpFecHasta.Margin = new Padding(3, 4, 3, 4);
            dtpFecHasta.Name = "dtpFecHasta";
            dtpFecHasta.Size = new Size(133, 27);
            dtpFecHasta.TabIndex = 5;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ActiveCaption;
            label3.Location = new Point(40, 295);
            label3.Name = "label3";
            label3.Size = new Size(63, 20);
            label3.TabIndex = 7;
            label3.Text = "Desde";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(40, 14);
            pictureBox1.Margin = new Padding(5);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(214, 247);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 10;
            pictureBox1.TabStop = false;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(40, 481);
            btnRegresar.Margin = new Padding(5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(130, 38);
            btnRegresar.TabIndex = 17;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // Coldía
            // 
            Coldía.HeaderText = "Día";
            Coldía.MinimumWidth = 6;
            Coldía.Name = "Coldía";
            Coldía.ReadOnly = true;
            Coldía.Width = 200;
            // 
            // ColIngresos
            // 
            ColIngresos.HeaderText = "Ingresos Totales";
            ColIngresos.MinimumWidth = 6;
            ColIngresos.Name = "ColIngresos";
            ColIngresos.ReadOnly = true;
            ColIngresos.Width = 200;
            // 
            // FormConsultaIngresos
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(949, 548);
            Controls.Add(btnRegresar);
            Controls.Add(pictureBox1);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(dtpFecHasta);
            Controls.Add(txtTotal);
            Controls.Add(DGVIngresos);
            Controls.Add(btnGenerar);
            Controls.Add(label1);
            Controls.Add(dtpFecDesde);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(3, 4, 3, 4);
            Name = "FormConsultaIngresos";
            Text = "FormConsultaIngresos";
            Load += FormConsultaIngresos_Load;
            ((System.ComponentModel.ISupportInitialize)DGVIngresos).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DateTimePicker dtpFecDesde;
        private Label label1;
        private Button btnGenerar;
        private DataGridView DGVIngresos;
        private DataGridViewTextBoxColumn Id;
        private DataGridViewTextBoxColumn Día;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private TextBox txtTotal;
        private Label label2;
        private DateTimePicker dtpFecHasta;
        private Label label3;
        private PictureBox pictureBox1;
        private Button btnRegresar;
        private DataGridViewTextBoxColumn Coldía;
        private DataGridViewTextBoxColumn ColIngresos;
    }
}