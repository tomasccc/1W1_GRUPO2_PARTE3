﻿namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    partial class FormCompra
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
            components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormCompra));
            lblCompra = new Label();
            panel2 = new Panel();
            cboMedioP = new ComboBox();
            lblMedioPago = new Label();
            btnComprar = new Button();
            lblTotal = new Label();
            txtTotal = new TextBox();
            panel1 = new Panel();
            PicLJDH = new PictureBox();
            PicTrols3 = new PictureBox();
            lblDirector = new Label();
            PicMonja = new PictureBox();
            PicSpiderman = new PictureBox();
            lblGenero = new Label();
            lblDuracion = new Label();
            gestorButacasBindingSource = new BindingSource(components);
            ID = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn1 = new DataGridViewTextBoxColumn();
            Horario = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn2 = new DataGridViewTextBoxColumn();
            Butaca = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn3 = new DataGridViewTextBoxColumn();
            DGVfactura = new DataGridView();
            colId = new DataGridViewTextBoxColumn();
            colButaca = new DataGridViewTextBoxColumn();
            colfecha = new DataGridViewTextBoxColumn();
            colHorario = new DataGridViewTextBoxColumn();
            colMonto = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn4 = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn5 = new DataGridViewTextBoxColumn();
            btnVolver = new Button();
            pictureBox2 = new PictureBox();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)PicLJDH).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PicTrols3).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PicMonja).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PicSpiderman).BeginInit();
            ((System.ComponentModel.ISupportInitialize)gestorButacasBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)DGVfactura).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            SuspendLayout();
            // 
            // lblCompra
            // 
            lblCompra.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            lblCompra.AutoSize = true;
            lblCompra.Font = new Font("Microsoft Sans Serif", 20.25F, FontStyle.Regular, GraphicsUnit.Point);
            lblCompra.ForeColor = Color.White;
            lblCompra.Location = new Point(45, 61);
            lblCompra.Margin = new Padding(5, 0, 5, 0);
            lblCompra.Name = "lblCompra";
            lblCompra.Size = new Size(167, 39);
            lblCompra.TabIndex = 12;
            lblCompra.Text = "COMPRA";
            // 
            // panel2
            // 
            panel2.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            panel2.BackColor = Color.White;
            panel2.BorderStyle = BorderStyle.Fixed3D;
            panel2.Location = new Point(40, 115);
            panel2.Margin = new Padding(5);
            panel2.Name = "panel2";
            panel2.Size = new Size(599, 3);
            panel2.TabIndex = 13;
            // 
            // cboMedioP
            // 
            cboMedioP.FormattingEnabled = true;
            cboMedioP.Location = new Point(193, 149);
            cboMedioP.Margin = new Padding(5);
            cboMedioP.Name = "cboMedioP";
            cboMedioP.Size = new Size(170, 28);
            cboMedioP.TabIndex = 0;
            cboMedioP.SelectedIndexChanged += cboMedioP_SelectedIndexChanged;
            // 
            // lblMedioPago
            // 
            lblMedioPago.AutoSize = true;
            lblMedioPago.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Bold, GraphicsUnit.Point);
            lblMedioPago.ForeColor = Color.White;
            lblMedioPago.Location = new Point(45, 152);
            lblMedioPago.Margin = new Padding(5, 0, 5, 0);
            lblMedioPago.Name = "lblMedioPago";
            lblMedioPago.Size = new Size(150, 25);
            lblMedioPago.TabIndex = 18;
            lblMedioPago.Text = "MEDIO PAGO";
            // 
            // btnComprar
            // 
            btnComprar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            btnComprar.BackColor = Color.Gray;
            btnComprar.FlatStyle = FlatStyle.Flat;
            btnComprar.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            btnComprar.ForeColor = Color.LightSkyBlue;
            btnComprar.Location = new Point(472, 515);
            btnComprar.Margin = new Padding(5);
            btnComprar.Name = "btnComprar";
            btnComprar.Size = new Size(154, 51);
            btnComprar.TabIndex = 3;
            btnComprar.Text = "     COMPRAR";
            btnComprar.TextAlign = ContentAlignment.MiddleLeft;
            btnComprar.UseVisualStyleBackColor = false;
            btnComprar.Click += btnComprar_Click;
            // 
            // lblTotal
            // 
            lblTotal.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            lblTotal.AutoSize = true;
            lblTotal.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Regular, GraphicsUnit.Point);
            lblTotal.ForeColor = Color.White;
            lblTotal.Location = new Point(383, 456);
            lblTotal.Margin = new Padding(5, 0, 5, 0);
            lblTotal.Name = "lblTotal";
            lblTotal.Size = new Size(79, 25);
            lblTotal.TabIndex = 23;
            lblTotal.Text = "TOTAL";
            // 
            // txtTotal
            // 
            txtTotal.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            txtTotal.Enabled = false;
            txtTotal.Location = new Point(472, 457);
            txtTotal.Margin = new Padding(5);
            txtTotal.Name = "txtTotal";
            txtTotal.ReadOnly = true;
            txtTotal.Size = new Size(166, 27);
            txtTotal.TabIndex = 2;
            // 
            // panel1
            // 
            panel1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right;
            panel1.BackColor = Color.FromArgb(64, 0, 0);
            panel1.BorderStyle = BorderStyle.Fixed3D;
            panel1.Controls.Add(PicLJDH);
            panel1.Controls.Add(PicTrols3);
            panel1.Controls.Add(lblDirector);
            panel1.Controls.Add(PicMonja);
            panel1.Controls.Add(PicSpiderman);
            panel1.Controls.Add(lblGenero);
            panel1.Controls.Add(lblDuracion);
            panel1.ForeColor = SystemColors.ControlText;
            panel1.Location = new Point(696, -7);
            panel1.Margin = new Padding(5);
            panel1.Name = "panel1";
            panel1.Size = new Size(372, 759);
            panel1.TabIndex = 25;
            // 
            // PicLJDH
            // 
            PicLJDH.BorderStyle = BorderStyle.Fixed3D;
            PicLJDH.Image = (Image)resources.GetObject("PicLJDH.Image");
            PicLJDH.Location = new Point(89, 65);
            PicLJDH.Margin = new Padding(3, 4, 3, 4);
            PicLJDH.Name = "PicLJDH";
            PicLJDH.Size = new Size(199, 284);
            PicLJDH.SizeMode = PictureBoxSizeMode.StretchImage;
            PicLJDH.TabIndex = 28;
            PicLJDH.TabStop = false;
            PicLJDH.Click += pictureBox1_Click;
            // 
            // PicTrols3
            // 
            PicTrols3.BorderStyle = BorderStyle.Fixed3D;
            PicTrols3.Image = (Image)resources.GetObject("PicTrols3.Image");
            PicTrols3.Location = new Point(89, 65);
            PicTrols3.Margin = new Padding(3, 4, 3, 4);
            PicTrols3.Name = "PicTrols3";
            PicTrols3.Size = new Size(199, 284);
            PicTrols3.SizeMode = PictureBoxSizeMode.StretchImage;
            PicTrols3.TabIndex = 28;
            PicTrols3.TabStop = false;
            // 
            // lblDirector
            // 
            lblDirector.AutoSize = true;
            lblDirector.BackColor = Color.FromArgb(64, 0, 0);
            lblDirector.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            lblDirector.ForeColor = Color.White;
            lblDirector.Location = new Point(89, 533);
            lblDirector.Margin = new Padding(5, 0, 5, 0);
            lblDirector.Name = "lblDirector";
            lblDirector.Size = new Size(248, 40);
            lblDirector.TabIndex = 5;
            lblDirector.Text = "Direccion : Joaquim dos Santos\r\nKemp Powers";
            // 
            // PicMonja
            // 
            PicMonja.BorderStyle = BorderStyle.Fixed3D;
            PicMonja.Image = (Image)resources.GetObject("PicMonja.Image");
            PicMonja.Location = new Point(89, 65);
            PicMonja.Margin = new Padding(3, 4, 3, 4);
            PicMonja.Name = "PicMonja";
            PicMonja.Size = new Size(199, 284);
            PicMonja.SizeMode = PictureBoxSizeMode.StretchImage;
            PicMonja.TabIndex = 27;
            PicMonja.TabStop = false;
            // 
            // PicSpiderman
            // 
            PicSpiderman.BorderStyle = BorderStyle.Fixed3D;
            PicSpiderman.Image = (Image)resources.GetObject("PicSpiderman.Image");
            PicSpiderman.Location = new Point(89, 65);
            PicSpiderman.Margin = new Padding(3, 4, 3, 4);
            PicSpiderman.Name = "PicSpiderman";
            PicSpiderman.Size = new Size(199, 284);
            PicSpiderman.SizeMode = PictureBoxSizeMode.StretchImage;
            PicSpiderman.TabIndex = 26;
            PicSpiderman.TabStop = false;
            // 
            // lblGenero
            // 
            lblGenero.AutoSize = true;
            lblGenero.BackColor = Color.FromArgb(64, 0, 0);
            lblGenero.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            lblGenero.ForeColor = Color.White;
            lblGenero.Location = new Point(89, 409);
            lblGenero.Margin = new Padding(5, 0, 5, 0);
            lblGenero.Name = "lblGenero";
            lblGenero.Size = new Size(222, 20);
            lblGenero.TabIndex = 3;
            lblGenero.Text = "Genero : Comedia de acción";
            // 
            // lblDuracion
            // 
            lblDuracion.AutoSize = true;
            lblDuracion.BackColor = Color.FromArgb(64, 0, 0);
            lblDuracion.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point);
            lblDuracion.ForeColor = Color.White;
            lblDuracion.Location = new Point(89, 471);
            lblDuracion.Margin = new Padding(5, 0, 5, 0);
            lblDuracion.Name = "lblDuracion";
            lblDuracion.Size = new Size(183, 20);
            lblDuracion.TabIndex = 4;
            lblDuracion.Text = "Duración : 140 minutos";
            // 
            // gestorButacasBindingSource
            // 
            gestorButacasBindingSource.DataSource = typeof(BackEnd.SERVICIO.GestorButacas);
            // 
            // ID
            // 
            ID.HeaderText = "";
            ID.MinimumWidth = 6;
            ID.Name = "ID";
            ID.Visible = false;
            ID.Width = 125;
            // 
            // dataGridViewTextBoxColumn1
            // 
            dataGridViewTextBoxColumn1.HeaderText = "Butaca";
            dataGridViewTextBoxColumn1.MinimumWidth = 6;
            dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            dataGridViewTextBoxColumn1.ReadOnly = true;
            dataGridViewTextBoxColumn1.Width = 125;
            // 
            // Horario
            // 
            Horario.HeaderText = "Horario";
            Horario.MinimumWidth = 6;
            Horario.Name = "Horario";
            Horario.ReadOnly = true;
            Horario.Width = 125;
            // 
            // dataGridViewTextBoxColumn2
            // 
            dataGridViewTextBoxColumn2.HeaderText = "ID";
            dataGridViewTextBoxColumn2.MinimumWidth = 6;
            dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            dataGridViewTextBoxColumn2.ReadOnly = true;
            dataGridViewTextBoxColumn2.Visible = false;
            dataGridViewTextBoxColumn2.Width = 125;
            // 
            // Butaca
            // 
            Butaca.HeaderText = "Butaca";
            Butaca.MinimumWidth = 6;
            Butaca.Name = "Butaca";
            Butaca.ReadOnly = true;
            Butaca.Width = 125;
            // 
            // dataGridViewTextBoxColumn3
            // 
            dataGridViewTextBoxColumn3.HeaderText = "id";
            dataGridViewTextBoxColumn3.MinimumWidth = 6;
            dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            dataGridViewTextBoxColumn3.ReadOnly = true;
            dataGridViewTextBoxColumn3.Visible = false;
            dataGridViewTextBoxColumn3.Width = 125;
            // 
            // DGVfactura
            // 
            DGVfactura.AllowUserToAddRows = false;
            DGVfactura.AllowUserToDeleteRows = false;
            DGVfactura.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DGVfactura.Columns.AddRange(new DataGridViewColumn[] { colId, colButaca, colfecha, colHorario, colMonto });
            DGVfactura.Location = new Point(40, 227);
            DGVfactura.Margin = new Padding(3, 4, 3, 4);
            DGVfactura.Name = "DGVfactura";
            DGVfactura.ReadOnly = true;
            DGVfactura.RowHeadersWidth = 51;
            DGVfactura.RowTemplate.Height = 25;
            DGVfactura.Size = new Size(599, 200);
            DGVfactura.TabIndex = 1;
            DGVfactura.CellContentClick += DGVfactura_CellContentClick;
            // 
            // colId
            // 
            colId.HeaderText = "ID";
            colId.MinimumWidth = 6;
            colId.Name = "colId";
            colId.ReadOnly = true;
            colId.Visible = false;
            colId.Width = 125;
            // 
            // colButaca
            // 
            colButaca.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            colButaca.HeaderText = "Butaca";
            colButaca.MinimumWidth = 6;
            colButaca.Name = "colButaca";
            colButaca.ReadOnly = true;
            // 
            // colfecha
            // 
            colfecha.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            colfecha.HeaderText = "Fecha";
            colfecha.MinimumWidth = 6;
            colfecha.Name = "colfecha";
            colfecha.ReadOnly = true;
            // 
            // colHorario
            // 
            colHorario.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            colHorario.HeaderText = "Horario";
            colHorario.MinimumWidth = 6;
            colHorario.Name = "colHorario";
            colHorario.ReadOnly = true;
            // 
            // colMonto
            // 
            colMonto.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            colMonto.HeaderText = "Monto";
            colMonto.MinimumWidth = 6;
            colMonto.Name = "colMonto";
            colMonto.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn4
            // 
            dataGridViewTextBoxColumn4.HeaderText = "ID";
            dataGridViewTextBoxColumn4.MinimumWidth = 6;
            dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            dataGridViewTextBoxColumn4.ReadOnly = true;
            dataGridViewTextBoxColumn4.Visible = false;
            dataGridViewTextBoxColumn4.Width = 125;
            // 
            // dataGridViewTextBoxColumn5
            // 
            dataGridViewTextBoxColumn5.HeaderText = "Butaca";
            dataGridViewTextBoxColumn5.MinimumWidth = 6;
            dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            dataGridViewTextBoxColumn5.ReadOnly = true;
            dataGridViewTextBoxColumn5.Width = 125;
            // 
            // btnVolver
            // 
            btnVolver.BackColor = Color.Gray;
            btnVolver.FlatStyle = FlatStyle.Flat;
            btnVolver.Font = new Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point);
            btnVolver.ForeColor = Color.White;
            btnVolver.Location = new Point(45, 516);
            btnVolver.Margin = new Padding(5, 4, 5, 4);
            btnVolver.Name = "btnVolver";
            btnVolver.Size = new Size(167, 49);
            btnVolver.TabIndex = 4;
            btnVolver.Text = "CANCELAR";
            btnVolver.UseVisualStyleBackColor = false;
            btnVolver.Click += btnVolver_Click;
            // 
            // pictureBox2
            // 
            pictureBox2.BackColor = Color.Gray;
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(638, 516);
            pictureBox2.Margin = new Padding(3, 4, 3, 4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(50, 49);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 154;
            pictureBox2.TabStop = false;
            pictureBox2.Click += pictureBox2_Click;
            // 
            // FormCompra
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Maroon;
            ClientSize = new Size(1066, 599);
            Controls.Add(pictureBox2);
            Controls.Add(btnVolver);
            Controls.Add(DGVfactura);
            Controls.Add(panel1);
            Controls.Add(lblTotal);
            Controls.Add(txtTotal);
            Controls.Add(btnComprar);
            Controls.Add(cboMedioP);
            Controls.Add(lblMedioPago);
            Controls.Add(lblCompra);
            Controls.Add(panel2);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(5);
            Name = "FormCompra";
            Text = "FormCompra";
            Load += FormCompra_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)PicLJDH).EndInit();
            ((System.ComponentModel.ISupportInitialize)PicTrols3).EndInit();
            ((System.ComponentModel.ISupportInitialize)PicMonja).EndInit();
            ((System.ComponentModel.ISupportInitialize)PicSpiderman).EndInit();
            ((System.ComponentModel.ISupportInitialize)gestorButacasBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)DGVfactura).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblCompra;
        private Panel panel2;
        private ComboBox cboMedioP;
        private Label lblMedioPago;
        private Button btnComprar;
        private Label lblTotal;
        private TextBox txtTotal;
        private Panel panel1;
        private Label lblDirector;
        private Label lblGenero;
        private Label lblDuracion;
        private PictureBox PicLJDH;
        private PictureBox PicTrols3;
        private PictureBox PicMonja;
        private PictureBox PicSpiderman;
        private BindingSource gestorButacasBindingSource;
        private DataGridViewTextBoxColumn ID;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private DataGridViewTextBoxColumn Horario;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private DataGridViewTextBoxColumn Butaca;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private DataGridView DGVfactura;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private DataGridViewTextBoxColumn colId;
        private DataGridViewTextBoxColumn colButaca;
        private DataGridViewTextBoxColumn colfecha;
        private DataGridViewTextBoxColumn colHorario;
        private DataGridViewTextBoxColumn colMonto;
        private Button btnVolver;
        private PictureBox pictureBox2;
    }
}