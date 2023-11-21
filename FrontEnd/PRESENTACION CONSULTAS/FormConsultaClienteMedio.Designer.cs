namespace FrontEnd.PRESENTACION_CONSULTAS
{
    partial class FormConsultaClienteMedio
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormConsultaClienteMedio));
            DGVClientes = new DataGridView();
            ColNombre = new DataGridViewTextBoxColumn();
            ColApellido = new DataGridViewTextBoxColumn();
            ColMedioPago = new DataGridViewTextBoxColumn();
            ColPelicula = new DataGridViewTextBoxColumn();
            ColDuracion = new DataGridViewTextBoxColumn();
            label1 = new Label();
            label2 = new Label();
            txtapellido = new TextBox();
            txtnombre = new TextBox();
            button1 = new Button();
            label3 = new Label();
            cboMedioPago = new ComboBox();
            label4 = new Label();
            txtDuracion = new TextBox();
            pictureBox1 = new PictureBox();
            btnRegresar = new Button();
            ((System.ComponentModel.ISupportInitialize)DGVClientes).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // DGVClientes
            // 
            DGVClientes.AllowUserToAddRows = false;
            DGVClientes.AllowUserToDeleteRows = false;
            DGVClientes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVClientes.Columns.AddRange(new DataGridViewColumn[] { ColNombre, ColApellido, ColMedioPago, ColPelicula, ColDuracion });
            DGVClientes.Location = new Point(60, 314);
            DGVClientes.Margin = new Padding(3, 4, 3, 4);
            DGVClientes.Name = "DGVClientes";
            DGVClientes.ReadOnly = true;
            DGVClientes.RowHeadersWidth = 51;
            DGVClientes.RowTemplate.Height = 25;
            DGVClientes.Size = new Size(858, 327);
            DGVClientes.TabIndex = 11;
            // 
            // ColNombre
            // 
            ColNombre.FillWeight = 150F;
            ColNombre.HeaderText = "Nombre";
            ColNombre.MinimumWidth = 6;
            ColNombre.Name = "ColNombre";
            ColNombre.ReadOnly = true;
            ColNombre.Width = 140;
            // 
            // ColApellido
            // 
            ColApellido.HeaderText = "Apellido";
            ColApellido.MinimumWidth = 6;
            ColApellido.Name = "ColApellido";
            ColApellido.ReadOnly = true;
            ColApellido.Width = 140;
            // 
            // ColMedioPago
            // 
            ColMedioPago.HeaderText = "Medio de Pago";
            ColMedioPago.MinimumWidth = 6;
            ColMedioPago.Name = "ColMedioPago";
            ColMedioPago.ReadOnly = true;
            ColMedioPago.Width = 150;
            // 
            // ColPelicula
            // 
            ColPelicula.HeaderText = "Pelicula";
            ColPelicula.MinimumWidth = 6;
            ColPelicula.Name = "ColPelicula";
            ColPelicula.ReadOnly = true;
            ColPelicula.Width = 175;
            // 
            // ColDuracion
            // 
            ColDuracion.HeaderText = "Duracion";
            ColDuracion.MinimumWidth = 6;
            ColDuracion.Name = "ColDuracion";
            ColDuracion.ReadOnly = true;
            ColDuracion.Width = 125;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(253, 189);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(88, 20);
            label1.TabIndex = 15;
            label1.Text = "Apellido :";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ButtonShadow;
            label2.Location = new Point(253, 97);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(86, 20);
            label2.TabIndex = 14;
            label2.Text = "Nombre :";
            // 
            // txtapellido
            // 
            txtapellido.Location = new Point(253, 216);
            txtapellido.Margin = new Padding(5);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(150, 27);
            txtapellido.TabIndex = 13;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(253, 124);
            txtnombre.Margin = new Padding(5);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(150, 27);
            txtnombre.TabIndex = 12;
            // 
            // button1
            // 
            button1.Font = new Font("Microsoft Sans Serif", 13.8F, FontStyle.Bold, GraphicsUnit.Point);
            button1.Location = new Point(740, 163);
            button1.Margin = new Padding(5);
            button1.Name = "button1";
            button1.Size = new Size(154, 46);
            button1.TabIndex = 18;
            button1.Text = "Generar";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(413, 97);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(232, 20);
            label3.TabIndex = 19;
            label3.Text = "Medio de Pago del cliente:";
            // 
            // cboMedioPago
            // 
            cboMedioPago.FormattingEnabled = true;
            cboMedioPago.Location = new Point(413, 124);
            cboMedioPago.Margin = new Padding(3, 4, 3, 4);
            cboMedioPago.Name = "cboMedioPago";
            cboMedioPago.Size = new Size(244, 28);
            cboMedioPago.TabIndex = 20;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(413, 168);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(204, 40);
            label4.TabIndex = 22;
            label4.Text = "Duración mínima de la \r\npelicula:";
            label4.Click += label4_Click;
            // 
            // txtDuracion
            // 
            txtDuracion.Location = new Point(413, 216);
            txtDuracion.Margin = new Padding(5);
            txtDuracion.Name = "txtDuracion";
            txtDuracion.Size = new Size(244, 27);
            txtDuracion.TabIndex = 21;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(15, 47);
            pictureBox1.Margin = new Padding(5);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(207, 248);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 23;
            pictureBox1.TabStop = false;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(35, 666);
            btnRegresar.Margin = new Padding(5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(98, 31);
            btnRegresar.TabIndex = 24;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // FormConsultaClienteMedio
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(992, 721);
            Controls.Add(btnRegresar);
            Controls.Add(pictureBox1);
            Controls.Add(label4);
            Controls.Add(txtDuracion);
            Controls.Add(cboMedioPago);
            Controls.Add(label3);
            Controls.Add(button1);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txtapellido);
            Controls.Add(txtnombre);
            Controls.Add(DGVClientes);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(3, 4, 3, 4);
            Name = "FormConsultaClienteMedio";
            Text = "FormConsultaClienteMedio";
            Load += FormConsultaClienteMedio_Load;
            ((System.ComponentModel.ISupportInitialize)DGVClientes).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private DataGridView DGVClientes;
        private Label label1;
        private Label label2;
        private TextBox txtapellido;
        private TextBox txtnombre;
        private Button button1;
        private Label label3;
        private ComboBox cboMedioPago;
        private Label label4;
        private TextBox txtDuracion;
        private PictureBox pictureBox1;
        private Button btnRegresar;
        private DataGridViewTextBoxColumn ColNombre;
        private DataGridViewTextBoxColumn ColApellido;
        private DataGridViewTextBoxColumn ColMedioPago;
        private DataGridViewTextBoxColumn ColPelicula;
        private DataGridViewTextBoxColumn ColDuracion;
    }
}