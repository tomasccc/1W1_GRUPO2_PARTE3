namespace FrontEnd.PRESENTACION
{
    partial class FormEditarPelicula
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormEditarPelicula));
            dtpfecEstreno = new DateTimePicker();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label1 = new Label();
            label2 = new Label();
            txtdirector = new TextBox();
            txtduracion = new TextBox();
            txtCategoria = new TextBox();
            txtnombre = new TextBox();
            btnRegresar = new Button();
            btnEditar = new Button();
            pictureBox1 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // dtpfecEstreno
            // 
            dtpfecEstreno.Format = DateTimePickerFormat.Short;
            dtpfecEstreno.Location = new Point(239, 380);
            dtpfecEstreno.Margin = new Padding(5);
            dtpfecEstreno.Name = "dtpfecEstreno";
            dtpfecEstreno.Size = new Size(155, 27);
            dtpfecEstreno.TabIndex = 4;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label5.ForeColor = Color.White;
            label5.Location = new Point(50, 389);
            label5.Margin = new Padding(5, 0, 5, 0);
            label5.Name = "label5";
            label5.Size = new Size(157, 20);
            label5.TabIndex = 49;
            label5.Text = "Fecha de Estreno";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label4.ForeColor = Color.White;
            label4.Location = new Point(239, 276);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(78, 20);
            label4.TabIndex = 48;
            label4.Text = "Director";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label3.ForeColor = Color.White;
            label3.Location = new Point(42, 273);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(85, 20);
            label3.TabIndex = 47;
            label3.Text = "Duracion";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label1.ForeColor = Color.White;
            label1.Location = new Point(239, 197);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(90, 20);
            label1.TabIndex = 46;
            label1.Text = "Categoria";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9.749999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            label2.ForeColor = Color.White;
            label2.Location = new Point(40, 197);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(74, 20);
            label2.TabIndex = 45;
            label2.Text = "Nombre";
            // 
            // txtdirector
            // 
            txtdirector.Location = new Point(239, 300);
            txtdirector.Margin = new Padding(5);
            txtdirector.Name = "txtdirector";
            txtdirector.Size = new Size(155, 27);
            txtdirector.TabIndex = 3;
            txtdirector.KeyPress += txtdirector_KeyPress;
            // 
            // txtduracion
            // 
            txtduracion.Location = new Point(42, 300);
            txtduracion.Margin = new Padding(5);
            txtduracion.Name = "txtduracion";
            txtduracion.Size = new Size(155, 27);
            txtduracion.TabIndex = 2;
            txtduracion.KeyPress += txtduracion_KeyPress;
            // 
            // txtCategoria
            // 
            txtCategoria.Location = new Point(239, 224);
            txtCategoria.Margin = new Padding(5);
            txtCategoria.Name = "txtCategoria";
            txtCategoria.Size = new Size(155, 27);
            txtCategoria.TabIndex = 1;
            txtCategoria.KeyPress += txtCategoria_KeyPress;
            // 
            // txtnombre
            // 
            txtnombre.Location = new Point(40, 224);
            txtnombre.Margin = new Padding(5);
            txtnombre.Name = "txtnombre";
            txtnombre.Size = new Size(155, 27);
            txtnombre.TabIndex = 0;
            txtnombre.KeyPress += txtnombre_KeyPress;
            // 
            // btnRegresar
            // 
            btnRegresar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnRegresar.Location = new Point(63, 504);
            btnRegresar.Margin = new Padding(5);
            btnRegresar.Name = "btnRegresar";
            btnRegresar.Size = new Size(133, 53);
            btnRegresar.TabIndex = 6;
            btnRegresar.Text = "Regresar";
            btnRegresar.UseVisualStyleBackColor = true;
            btnRegresar.Click += btnRegresar_Click;
            // 
            // btnEditar
            // 
            btnEditar.Font = new Font("Microsoft Sans Serif", 8.999999F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point);
            btnEditar.Location = new Point(248, 504);
            btnEditar.Margin = new Padding(5);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(133, 53);
            btnEditar.TabIndex = 5;
            btnEditar.Text = "Editar";
            btnEditar.UseVisualStyleBackColor = true;
            btnEditar.Click += btnEditar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(112, 16);
            pictureBox1.Margin = new Padding(3, 4, 3, 4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(182, 131);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 53;
            pictureBox1.TabStop = false;
            // 
            // FormEditarPelicula
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(64, 0, 0);
            ClientSize = new Size(439, 600);
            Controls.Add(pictureBox1);
            Controls.Add(btnRegresar);
            Controls.Add(btnEditar);
            Controls.Add(dtpfecEstreno);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(txtdirector);
            Controls.Add(txtduracion);
            Controls.Add(txtCategoria);
            Controls.Add(txtnombre);
            Margin = new Padding(3, 4, 3, 4);
            Name = "FormEditarPelicula";
            Text = "FormEditarPelicula";
            Load += FormEditarPelicula_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DateTimePicker dtpfecEstreno;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label1;
        private Label label2;
        private TextBox txtdirector;
        private TextBox txtduracion;
        private TextBox txtCategoria;
        private TextBox txtnombre;
        private Button btnRegresar;
        private Button btnEditar;
        private PictureBox pictureBox1;
    }
}