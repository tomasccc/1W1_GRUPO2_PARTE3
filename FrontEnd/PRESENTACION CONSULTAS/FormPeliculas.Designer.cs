namespace FrontEnd.PRESENTACION_CONSULTAS
{
    partial class FormPeliculas
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPeliculas));
            domainAño = new DomainUpDown();
            btnGenerar = new Button();
            DGVPeliculas = new DataGridView();
            ColNombre = new DataGridViewTextBoxColumn();
            ColDuracion = new DataGridViewTextBoxColumn();
            ColEstreno = new DataGridViewTextBoxColumn();
            ColCategoria = new DataGridViewTextBoxColumn();
            label3 = new Label();
            cboIdioma = new ComboBox();
            label2 = new Label();
            cboTipo = new ComboBox();
            label1 = new Label();
            btnRegresar = new Button();
            pictureBox1 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)DGVPeliculas).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // domainAño
            // 
            domainAño.Location = new Point(419, 82);
            domainAño.Name = "domainAño";
            domainAño.Size = new Size(120, 23);
            domainAño.TabIndex = 50;
            // 
            // btnGenerar
            // 
            btnGenerar.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold, GraphicsUnit.Point);
            btnGenerar.Location = new Point(785, 301);
            btnGenerar.Name = "btnGenerar";
            btnGenerar.Size = new Size(155, 44);
            btnGenerar.TabIndex = 49;
            btnGenerar.Text = "Generar";
            btnGenerar.UseVisualStyleBackColor = true;
            btnGenerar.Click += btnGenerar_Click_1;
            // 
            // DGVPeliculas
            // 
            DGVPeliculas.AllowUserToAddRows = false;
            DGVPeliculas.AllowUserToDeleteRows = false;
            DGVPeliculas.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVPeliculas.Columns.AddRange(new DataGridViewColumn[] { ColNombre, ColDuracion, ColEstreno, ColCategoria });
            DGVPeliculas.Location = new Point(66, 208);
            DGVPeliculas.Name = "DGVPeliculas";
            DGVPeliculas.ReadOnly = true;
            DGVPeliculas.RowHeadersWidth = 51;
            DGVPeliculas.RowTemplate.Height = 25;
            DGVPeliculas.Size = new Size(662, 245);
            DGVPeliculas.TabIndex = 48;
            // 
            // ColNombre
            // 
            ColNombre.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColNombre.HeaderText = "Nombre";
            ColNombre.MinimumWidth = 6;
            ColNombre.Name = "ColNombre";
            ColNombre.ReadOnly = true;
            // 
            // ColDuracion
            // 
            ColDuracion.HeaderText = "Duración";
            ColDuracion.MinimumWidth = 6;
            ColDuracion.Name = "ColDuracion";
            ColDuracion.ReadOnly = true;
            // 
            // ColEstreno
            // 
            ColEstreno.HeaderText = "Estreno";
            ColEstreno.MinimumWidth = 6;
            ColEstreno.Name = "ColEstreno";
            ColEstreno.ReadOnly = true;
            ColEstreno.Width = 150;
            // 
            // ColCategoria
            // 
            ColCategoria.HeaderText = "Categoria";
            ColCategoria.MinimumWidth = 6;
            ColCategoria.Name = "ColCategoria";
            ColCategoria.ReadOnly = true;
            ColCategoria.Width = 150;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ControlLightLight;
            label3.Location = new Point(614, 122);
            label3.Name = "label3";
            label3.Size = new Size(64, 21);
            label3.TabIndex = 47;
            label3.Text = "Idioma";
            // 
            // cboIdioma
            // 
            cboIdioma.FormattingEnabled = true;
            cboIdioma.Location = new Point(714, 120);
            cboIdioma.Name = "cboIdioma";
            cboIdioma.Size = new Size(167, 23);
            cboIdioma.TabIndex = 46;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ControlLightLight;
            label2.Location = new Point(584, 79);
            label2.Name = "label2";
            label2.Size = new Size(101, 21);
            label2.TabIndex = 45;
            label2.Text = "Tipo de sala";
            // 
            // cboTipo
            // 
            cboTipo.FormattingEnabled = true;
            cboTipo.Location = new Point(714, 82);
            cboTipo.Name = "cboTipo";
            cboTipo.Size = new Size(167, 23);
            cboTipo.TabIndex = 44;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ControlLightLight;
            label1.Location = new Point(360, 78);
            label1.Name = "label1";
            label1.Size = new Size(41, 21);
            label1.TabIndex = 43;
            label1.Text = "Año";
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(121, 472);
            btnRegresar.Margin = new Padding(4);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(86, 23);
            btnRegresar.TabIndex = 42;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click_1;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(66, 33);
            pictureBox1.Margin = new Padding(4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(186, 157);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 41;
            pictureBox1.TabStop = false;
            // 
            // FormPeliculas
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(986, 532);
            Controls.Add(domainAño);
            Controls.Add(btnGenerar);
            Controls.Add(DGVPeliculas);
            Controls.Add(label3);
            Controls.Add(cboIdioma);
            Controls.Add(label2);
            Controls.Add(cboTipo);
            Controls.Add(label1);
            Controls.Add(btnRegresar);
            Controls.Add(pictureBox1);
            Margin = new Padding(3, 2, 3, 2);
            Name = "FormPeliculas";
            Text = "FormPeliculas";
            Load += FormPeliculas_Load;
            ((System.ComponentModel.ISupportInitialize)DGVPeliculas).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DomainUpDown domainAño;
        private Button btnGenerar;
        private DataGridView DGVPeliculas;
        private Label label3;
        private ComboBox cboIdioma;
        private Label label2;
        private ComboBox cboTipo;
        private Label label1;
        private Button btnRegresar;
        private PictureBox pictureBox1;
        private DataGridViewTextBoxColumn ColNombre;
        private DataGridViewTextBoxColumn ColDuracion;
        private DataGridViewTextBoxColumn ColEstreno;
        private DataGridViewTextBoxColumn ColCategoria;
    }
}