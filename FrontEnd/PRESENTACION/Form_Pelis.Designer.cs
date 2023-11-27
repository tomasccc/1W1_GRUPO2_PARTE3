namespace FrontEnd.PRESENTACION
{
    partial class Form_Pelis
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Pelis));
            DGVPeliculas = new DataGridView();
            colID = new DataGridViewTextBoxColumn();
            ColNombre = new DataGridViewTextBoxColumn();
            ColCategoria = new DataGridViewTextBoxColumn();
            ColDuracion = new DataGridViewTextBoxColumn();
            ColDirector = new DataGridViewTextBoxColumn();
            ColFechaEstreno = new DataGridViewTextBoxColumn();
            ColIdioma = new DataGridViewTextBoxColumn();
            ColAcciones = new DataGridViewButtonColumn();
            Acciones1 = new DataGridViewButtonColumn();
            label3 = new Label();
            label1 = new Label();
            label2 = new Label();
            txtDirector = new TextBox();
            txtCategoria = new TextBox();
            txtnombre = new TextBox();
            dtpFecDes = new DateTimePicker();
            label4 = new Label();
            btnBuscar = new Button();
            pictureBox1 = new PictureBox();
            pictureBox2 = new PictureBox();
            pictureBox3 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)DGVPeliculas).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            SuspendLayout();
            // 
            // DGVPeliculas
            // 
            DGVPeliculas.AllowUserToAddRows = false;
            DGVPeliculas.AllowUserToDeleteRows = false;
            DGVPeliculas.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right;
            DGVPeliculas.BackgroundColor = Color.Maroon;
            DGVPeliculas.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVPeliculas.Columns.AddRange(new DataGridViewColumn[] { colID, ColNombre, ColCategoria, ColDuracion, ColDirector, ColFechaEstreno, ColIdioma, ColAcciones, Acciones1 });
            DGVPeliculas.Location = new Point(393, 17);
            DGVPeliculas.Margin = new Padding(5);
            DGVPeliculas.Name = "DGVPeliculas";
            DGVPeliculas.ReadOnly = true;
            DGVPeliculas.RowHeadersWidth = 51;
            DGVPeliculas.Size = new Size(988, 621);
            DGVPeliculas.TabIndex = 5;
            DGVPeliculas.CellContentClick += DGVPeliculas_CellContentClick;
            // 
            // colID
            // 
            colID.HeaderText = "Column1";
            colID.MinimumWidth = 6;
            colID.Name = "colID";
            colID.ReadOnly = true;
            colID.Visible = false;
            colID.Width = 125;
            // 
            // ColNombre
            // 
            ColNombre.FillWeight = 68.4491959F;
            ColNombre.HeaderText = "Nombre";
            ColNombre.MinimumWidth = 6;
            ColNombre.Name = "ColNombre";
            ColNombre.ReadOnly = true;
            ColNombre.Width = 250;
            // 
            // ColCategoria
            // 
            ColCategoria.FillWeight = 68.4491959F;
            ColCategoria.HeaderText = "Categoria";
            ColCategoria.MinimumWidth = 6;
            ColCategoria.Name = "ColCategoria";
            ColCategoria.ReadOnly = true;
            ColCategoria.Width = 125;
            // 
            // ColDuracion
            // 
            ColDuracion.FillWeight = 320.855621F;
            ColDuracion.HeaderText = "Duracion";
            ColDuracion.MinimumWidth = 6;
            ColDuracion.Name = "ColDuracion";
            ColDuracion.ReadOnly = true;
            ColDuracion.Width = 75;
            // 
            // ColDirector
            // 
            ColDirector.FillWeight = 68.4491959F;
            ColDirector.HeaderText = "Director";
            ColDirector.MinimumWidth = 6;
            ColDirector.Name = "ColDirector";
            ColDirector.ReadOnly = true;
            ColDirector.Width = 110;
            // 
            // ColFechaEstreno
            // 
            ColFechaEstreno.FillWeight = 68.4491959F;
            ColFechaEstreno.HeaderText = "Fecha de Estreno";
            ColFechaEstreno.MinimumWidth = 6;
            ColFechaEstreno.Name = "ColFechaEstreno";
            ColFechaEstreno.ReadOnly = true;
            ColFechaEstreno.Width = 90;
            // 
            // ColIdioma
            // 
            ColIdioma.FillWeight = 68.4491959F;
            ColIdioma.HeaderText = "Idioma";
            ColIdioma.MinimumWidth = 6;
            ColIdioma.Name = "ColIdioma";
            ColIdioma.ReadOnly = true;
            ColIdioma.Width = 90;
            // 
            // ColAcciones
            // 
            ColAcciones.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColAcciones.FillWeight = 68.4491959F;
            ColAcciones.HeaderText = "";
            ColAcciones.MinimumWidth = 6;
            ColAcciones.Name = "ColAcciones";
            ColAcciones.ReadOnly = true;
            // 
            // Acciones1
            // 
            Acciones1.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            Acciones1.FillWeight = 68.4491959F;
            Acciones1.HeaderText = "";
            Acciones1.MinimumWidth = 6;
            Acciones1.Name = "Acciones1";
            Acciones1.ReadOnly = true;
            Acciones1.Resizable = DataGridViewTriState.True;
            Acciones1.SortMode = DataGridViewColumnSortMode.Automatic;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BackColor = Color.Maroon;
            label3.Font = new Font("Microsoft Sans Serif", 14.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = Color.White;
            label3.Location = new Point(74, 340);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(106, 29);
            label3.TabIndex = 32;
            label3.Text = "Director";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = Color.Maroon;
            label1.Font = new Font("Microsoft Sans Serif", 14.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = Color.White;
            label1.Location = new Point(56, 284);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(127, 29);
            label1.TabIndex = 31;
            label1.Text = "Categoria";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BackColor = Color.Maroon;
            label2.Font = new Font("Microsoft Sans Serif", 14.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = Color.White;
            label2.Location = new Point(72, 229);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(107, 29);
            label2.TabIndex = 30;
            label2.Text = "Nombre";
            // 
            // txtDirector
            // 
            txtDirector.Location = new Point(199, 343);
            txtDirector.Margin = new Padding(5);
            txtDirector.Name = "txtDirector";
            txtDirector.Size = new Size(155, 27);
            txtDirector.TabIndex = 2;
            txtDirector.KeyPress += txtDirector_KeyPress;
            // 
            // txtCategoria
            // 
            txtCategoria.Location = new Point(199, 285);
            txtCategoria.Margin = new Padding(5);
            txtCategoria.Name = "txtCategoria";
            txtCategoria.Size = new Size(155, 27);
            txtCategoria.TabIndex = 1;
            txtCategoria.KeyPress += txtCategoria_KeyPress;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(199, 229);
            txtnombre.Margin = new Padding(5);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(155, 27);
            txtnombre.TabIndex = 0;
            txtnombre.KeyPress += txtnombre_KeyPress;
            // 
            // dtpFecDes
            // 
            dtpFecDes.Format = DateTimePickerFormat.Short;
            dtpFecDes.Location = new Point(199, 403);
            dtpFecDes.Margin = new Padding(2, 3, 2, 3);
            dtpFecDes.Name = "dtpFecDes";
            dtpFecDes.Size = new Size(155, 27);
            dtpFecDes.TabIndex = 3;
            dtpFecDes.ValueChanged += dtpFecDes_ValueChanged;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.BackColor = Color.Maroon;
            label4.Font = new Font("Microsoft Sans Serif", 14.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = Color.White;
            label4.Location = new Point(15, 399);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(168, 29);
            label4.TabIndex = 33;
            label4.Text = "Fecha Desde";
            // 
            // btnBuscar
            // 
            btnBuscar.BackColor = Color.FromArgb(64, 0, 0);
            btnBuscar.Font = new Font("Microsoft Sans Serif", 11.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnBuscar.ForeColor = Color.Snow;
            btnBuscar.Location = new Point(11, 495);
            btnBuscar.Margin = new Padding(5);
            btnBuscar.Name = "btnBuscar";
            btnBuscar.Size = new Size(285, 63);
            btnBuscar.TabIndex = 4;
            btnBuscar.Text = "Buscar";
            btnBuscar.UseVisualStyleBackColor = false;
            btnBuscar.Click += btnBuscar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(304, 495);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(58, 63);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 36;
            pictureBox1.TabStop = false;
            pictureBox1.Click += pictureBox1_Click;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(16, 17);
            pictureBox2.Margin = new Padding(3, 4, 3, 4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(58, 63);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 38;
            pictureBox2.TabStop = false;
            pictureBox2.Click += pictureBox2_Click;
            // 
            // pictureBox3
            // 
            pictureBox3.Image = (Image)resources.GetObject("pictureBox3.Image");
            pictureBox3.Location = new Point(175, 3);
            pictureBox3.Margin = new Padding(3, 4, 3, 4);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(187, 193);
            pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox3.TabIndex = 39;
            pictureBox3.TabStop = false;
            // 
            // Form_Pelis
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Maroon;
            ClientSize = new Size(1413, 600);
            Controls.Add(pictureBox3);
            Controls.Add(pictureBox2);
            Controls.Add(pictureBox1);
            Controls.Add(btnBuscar);
            Controls.Add(dtpFecDes);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txtDirector);
            Controls.Add(txtCategoria);
            Controls.Add(txtnombre);
            Controls.Add(DGVPeliculas);
            Margin = new Padding(3, 4, 3, 4);
            Name = "Form_Pelis";
            Text = "Form_Pelis";
            Load += Form_Pelis_Load;
            ((System.ComponentModel.ISupportInitialize)DGVPeliculas).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView DGVPeliculas;
        private Label label3;
        private Label label1;
        private Label label2;
        private TextBox txtDirector;
        private TextBox txtCategoria;
        private TextBox txtnombre;
        private DateTimePicker dtpFecDes;
        private Label label4;
        private Button btnBuscar;
        private PictureBox pictureBox1;
        private PictureBox pictureBox2;
        private PictureBox pictureBox3;
        private DataGridViewTextBoxColumn colID;
        private DataGridViewTextBoxColumn ColNombre;
        private DataGridViewTextBoxColumn ColCategoria;
        private DataGridViewTextBoxColumn ColDuracion;
        private DataGridViewTextBoxColumn ColDirector;
        private DataGridViewTextBoxColumn ColFechaEstreno;
        private DataGridViewTextBoxColumn ColIdioma;
        private DataGridViewButtonColumn ColAcciones;
        private DataGridViewButtonColumn Acciones1;
    }
}