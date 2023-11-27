namespace FrontEnd.PRESENTACION
{
    partial class FormSoporteClientes
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSoporteClientes));
            btnBuscar = new Button();
            txtnombre = new TextBox();
            txtapellido = new TextBox();
            txtemail = new TextBox();
            txttel = new TextBox();
            label2 = new Label();
            label1 = new Label();
            label3 = new Label();
            label4 = new Label();
            pictureBox1 = new PictureBox();
            btnRegresar = new Button();
            DGVClientes = new DataGridView();
            colID = new DataGridViewTextBoxColumn();
            ColNombre = new DataGridViewTextBoxColumn();
            ColApellido = new DataGridViewTextBoxColumn();
            ColEmail = new DataGridViewTextBoxColumn();
            ColTelefono = new DataGridViewTextBoxColumn();
            ColFechaNacimiento = new DataGridViewTextBoxColumn();
            ColAcciones = new DataGridViewButtonColumn();
            Acciones1 = new DataGridViewButtonColumn();
            button1 = new Button();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)DGVClientes).BeginInit();
            SuspendLayout();
            // 
            // btnBuscar
            // 
            btnBuscar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnBuscar.Location = new Point(205, 587);
            btnBuscar.Margin = new Padding(5);
            btnBuscar.Name = "btnBuscar";
            btnBuscar.Size = new Size(176, 52);
            btnBuscar.TabIndex = 4;
            btnBuscar.Text = "Buscar";
            btnBuscar.UseVisualStyleBackColor = true;
            btnBuscar.Click += btnBuscar_Click;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(225, 277);
            txtnombre.Margin = new Padding(5);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(155, 27);
            txtnombre.TabIndex = 0;
            txtnombre.KeyPress += txtnombre_KeyPress;
            // 
            // txtapellido
            // 
            txtapellido.Location = new Point(225, 321);
            txtapellido.Margin = new Padding(5);
            txtapellido.Name = "txtapellido";
            txtapellido.Size = new Size(155, 27);
            txtapellido.TabIndex = 1;
            txtapellido.KeyPress += txtapellido_KeyPress;
            // 
            // txtemail
            // 
            txtemail.Location = new Point(225, 363);
            txtemail.Margin = new Padding(5);
            txtemail.Name = "txtemail";
            txtemail.Size = new Size(155, 27);
            txtemail.TabIndex = 2;
            // 
            // txttel
            // 
            txttel.Location = new Point(225, 403);
            txttel.Margin = new Padding(5);
            txttel.Name = "txttel";
            txttel.Size = new Size(155, 27);
            txttel.TabIndex = 3;
            txttel.KeyPress += txttel_KeyPress;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = SystemColors.ButtonShadow;
            label2.Location = new Point(133, 283);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(74, 20);
            label2.TabIndex = 10;
            label2.Text = "Nombre";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = SystemColors.ButtonShadow;
            label1.Location = new Point(133, 327);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(76, 20);
            label1.TabIndex = 11;
            label1.Text = "Apellido";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = SystemColors.ButtonShadow;
            label3.Location = new Point(155, 363);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(56, 20);
            label3.TabIndex = 12;
            label3.Text = "Email";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = SystemColors.ButtonShadow;
            label4.Location = new Point(129, 403);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(81, 20);
            label4.TabIndex = 13;
            label4.Text = "Telefono";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(139, 5);
            pictureBox1.Margin = new Padding(5);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(243, 265);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 15;
            pictureBox1.TabStop = false;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(16, 5);
            btnRegresar.Margin = new Padding(5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(113, 40);
            btnRegresar.TabIndex = 6;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // DGVClientes
            // 
            DGVClientes.AllowUserToAddRows = false;
            DGVClientes.AllowUserToDeleteRows = false;
            DGVClientes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVClientes.Columns.AddRange(new DataGridViewColumn[] { colID, ColNombre, ColApellido, ColEmail, ColTelefono, ColFechaNacimiento, ColAcciones, Acciones1 });
            DGVClientes.Location = new Point(411, 53);
            DGVClientes.Margin = new Padding(5);
            DGVClientes.Name = "DGVClientes";
            DGVClientes.ReadOnly = true;
            DGVClientes.RowHeadersWidth = 51;
            DGVClientes.Size = new Size(741, 585);
            DGVClientes.TabIndex = 7;
            DGVClientes.CellContentClick += DGVClientes_CellContentClick;
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
            ColNombre.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColNombre.HeaderText = "Nombre";
            ColNombre.MinimumWidth = 6;
            ColNombre.Name = "ColNombre";
            ColNombre.ReadOnly = true;
            // 
            // ColApellido
            // 
            ColApellido.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColApellido.HeaderText = "Apellido";
            ColApellido.MinimumWidth = 6;
            ColApellido.Name = "ColApellido";
            ColApellido.ReadOnly = true;
            // 
            // ColEmail
            // 
            ColEmail.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColEmail.HeaderText = "Email";
            ColEmail.MinimumWidth = 6;
            ColEmail.Name = "ColEmail";
            ColEmail.ReadOnly = true;
            // 
            // ColTelefono
            // 
            ColTelefono.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColTelefono.HeaderText = "Telefono";
            ColTelefono.MinimumWidth = 6;
            ColTelefono.Name = "ColTelefono";
            ColTelefono.ReadOnly = true;
            // 
            // ColFechaNacimiento
            // 
            ColFechaNacimiento.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColFechaNacimiento.HeaderText = "Fecha de Nacimiento";
            ColFechaNacimiento.MinimumWidth = 6;
            ColFechaNacimiento.Name = "ColFechaNacimiento";
            ColFechaNacimiento.ReadOnly = true;
            // 
            // ColAcciones
            // 
            ColAcciones.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColAcciones.HeaderText = "";
            ColAcciones.MinimumWidth = 6;
            ColAcciones.Name = "ColAcciones";
            ColAcciones.ReadOnly = true;
            // 
            // Acciones1
            // 
            Acciones1.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            Acciones1.HeaderText = "";
            Acciones1.MinimumWidth = 6;
            Acciones1.Name = "Acciones1";
            Acciones1.ReadOnly = true;
            Acciones1.Resizable = DataGridViewTriState.True;
            Acciones1.SortMode = DataGridViewColumnSortMode.Automatic;
            // 
            // button1
            // 
            button1.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            button1.Location = new Point(16, 587);
            button1.Margin = new Padding(5);
            button1.Name = "button1";
            button1.Size = new Size(176, 52);
            button1.TabIndex = 5;
            button1.Text = "Crear Usuario";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // FormSoporteClientes
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(1219, 692);
            Controls.Add(button1);
            Controls.Add(btnRegresar);
            Controls.Add(pictureBox1);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txttel);
            Controls.Add(txtemail);
            Controls.Add(txtapellido);
            Controls.Add(txtnombre);
            Controls.Add(btnBuscar);
            Controls.Add(DGVClientes);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(5);
            Name = "FormSoporteClientes";
            Text = "FormSoporteClientes";
            Load += FormSoporteClientes_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)DGVClientes).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.TextBox txtapellido;
        private System.Windows.Forms.TextBox txtemail;
        private System.Windows.Forms.TextBox txttel;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnRegresar;
        private System.Windows.Forms.DataGridView DGVClientes;
        private System.Windows.Forms.Button button1;
        private DataGridViewTextBoxColumn colID;
        private DataGridViewTextBoxColumn ColNombre;
        private DataGridViewTextBoxColumn ColApellido;
        private DataGridViewTextBoxColumn ColEmail;
        private DataGridViewTextBoxColumn ColTelefono;
        private DataGridViewTextBoxColumn ColFechaNacimiento;
        private DataGridViewButtonColumn ColAcciones;
        private DataGridViewButtonColumn Acciones1;
    }
}