namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    partial class FormTransaccionFactura
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
            btnRegresar = new Button();
            pictureBox1 = new PictureBox();
            label1 = new Label();
            label2 = new Label();
            txtapellido = new TextBox();
            txtnombre = new TextBox();
            btnBuscar = new Button();
            DGVClientes = new DataGridView();
            colID = new DataGridViewTextBoxColumn();
            ColNombre = new DataGridViewTextBoxColumn();
            ColApellido = new DataGridViewTextBoxColumn();
            Colidfactura = new DataGridViewTextBoxColumn();
            Colmediopago = new DataGridViewTextBoxColumn();
            Coltipoventa = new DataGridViewTextBoxColumn();
            Fecha = new DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)DGVClientes).BeginInit();
            SuspendLayout();
            // 
            // btnRegresar
            // 
            btnRegresar.BackColor = Color.White;
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(19, 392);
            btnRegresar.Margin = new Padding(3, 4, 3, 4);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(153, 39);
            btnRegresar.TabIndex = 29;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = false;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Location = new Point(114, 10);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(212, 199);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 28;
            pictureBox1.TabStop = false;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(108, 260);
            label1.Name = "label1";
            label1.Size = new Size(65, 16);
            label1.TabIndex = 25;
            label1.Text = "Apellido";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ButtonShadow;
            label2.Location = new Point(108, 230);
            label2.Name = "label2";
            label2.Size = new Size(62, 16);
            label2.TabIndex = 24;
            label2.Text = "Nombre";
            // 
            // txtapellido
            // 
            txtapellido.Location = new Point(191, 256);
            txtapellido.Margin = new Padding(3, 4, 3, 4);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(136, 23);
            txtapellido.TabIndex = 21;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(191, 226);
            txtnombre.Margin = new Padding(3, 4, 3, 4);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(136, 23);
            txtnombre.TabIndex = 20;
            // 
            // btnBuscar
            // 
            btnBuscar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnBuscar.Location = new Point(181, 392);
            btnBuscar.Margin = new Padding(3, 4, 3, 4);
            btnBuscar.Name = "btnBuscar";
            btnBuscar.Size = new Size(154, 39);
            btnBuscar.TabIndex = 19;
            btnBuscar.Text = "Buscar";
            btnBuscar.UseVisualStyleBackColor = true;
            btnBuscar.Click += btnBuscar_Click;
            // 
            // DGVClientes
            // 
            DGVClientes.AllowUserToAddRows = false;
            DGVClientes.AllowUserToDeleteRows = false;
            DGVClientes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVClientes.Columns.AddRange(new DataGridViewColumn[] { colID, ColNombre, ColApellido, Colidfactura, Colmediopago, Coltipoventa, Fecha });
            DGVClientes.Location = new Point(341, 10);
            DGVClientes.Margin = new Padding(3, 4, 3, 4);
            DGVClientes.Name = "DGVClientes";
            DGVClientes.ReadOnly = true;
            DGVClientes.RowHeadersWidth = 62;
            DGVClientes.Size = new Size(647, 431);
            DGVClientes.TabIndex = 18;
            DGVClientes.CellContentClick += DGVClientes_CellContentClick;
            // 
            // colID
            // 
            colID.HeaderText = "Column1";
            colID.MinimumWidth = 8;
            colID.Name = "colID";
            colID.ReadOnly = true;
            colID.Visible = false;
            colID.Width = 150;
            // 
            // ColNombre
            // 
            ColNombre.HeaderText = "Nombre";
            ColNombre.MinimumWidth = 8;
            ColNombre.Name = "ColNombre";
            ColNombre.ReadOnly = true;
            ColNombre.Width = 70;
            // 
            // ColApellido
            // 
            ColApellido.HeaderText = "Apellido";
            ColApellido.MinimumWidth = 8;
            ColApellido.Name = "ColApellido";
            ColApellido.ReadOnly = true;
            ColApellido.Width = 70;
            // 
            // Colidfactura
            // 
            Colidfactura.HeaderText = "Id Factura";
            Colidfactura.MinimumWidth = 8;
            Colidfactura.Name = "Colidfactura";
            Colidfactura.ReadOnly = true;
            Colidfactura.Width = 70;
            // 
            // Colmediopago
            // 
            Colmediopago.HeaderText = "Medio Pago";
            Colmediopago.MinimumWidth = 8;
            Colmediopago.Name = "Colmediopago";
            Colmediopago.ReadOnly = true;
            Colmediopago.Width = 70;
            // 
            // Coltipoventa
            // 
            Coltipoventa.HeaderText = "Tipo de Venta";
            Coltipoventa.MinimumWidth = 8;
            Coltipoventa.Name = "Coltipoventa";
            Coltipoventa.ReadOnly = true;
            Coltipoventa.Width = 70;
            // 
            // Fecha
            // 
            Fecha.HeaderText = "Fecha";
            Fecha.MinimumWidth = 8;
            Fecha.Name = "Fecha";
            Fecha.ReadOnly = true;
            Fecha.Width = 150;
            // 
            // FormTransaccionFactura
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(1003, 519);
            Controls.Add(btnRegresar);
            Controls.Add(pictureBox1);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txtapellido);
            Controls.Add(txtnombre);
            Controls.Add(btnBuscar);
            Controls.Add(DGVClientes);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(3, 4, 3, 4);
            Name = "FormTransaccionFactura";
            Text = "FormTransaccionFactura";
            Load += FormTransaccionFactura_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)DGVClientes).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnRegresar;
        private PictureBox pictureBox1;
        private Label label1;
        private Label label2;
        private TextBox txtapellido;
        private TextBox txtnombre;
        private Button btnBuscar;
        private DataGridView DGVClientes;
        private DataGridViewTextBoxColumn colID;
        private DataGridViewTextBoxColumn ColNombre;
        private DataGridViewTextBoxColumn ColApellido;
        private DataGridViewTextBoxColumn Colidfactura;
        private DataGridViewTextBoxColumn Colmediopago;
        private DataGridViewTextBoxColumn Coltipoventa;
        private DataGridViewTextBoxColumn Fecha;
    }
}