﻿namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    partial class FormLogin
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
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.txtContra = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.labelCrearCuenta = new System.Windows.Forms.Label();
            this.dtpfechanacval = new System.Windows.Forms.Label();
            this.txtValidacion = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.btnRegistrarse = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(38, 58);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(100, 20);
            this.txtUsuario.TabIndex = 0;
            // 
            // txtContra
            // 
            this.txtContra.Location = new System.Drawing.Point(38, 127);
            this.txtContra.Name = "txtContra";
            this.txtContra.PasswordChar = '*';
            this.txtContra.Size = new System.Drawing.Size(100, 20);
            this.txtContra.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Stencil", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.label1.Location = new System.Drawing.Point(38, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(116, 16);
            this.label1.TabIndex = 2;
            this.label1.Text = "Usuario (e-mail)";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Stencil", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.label2.Location = new System.Drawing.Point(38, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(89, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "Contraseña";
            // 
            // labelCrearCuenta
            // 
            this.labelCrearCuenta.AutoSize = true;
            this.labelCrearCuenta.Font = new System.Drawing.Font("Stencil", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelCrearCuenta.ForeColor = System.Drawing.SystemColors.Highlight;
            this.labelCrearCuenta.Location = new System.Drawing.Point(167, 42);
            this.labelCrearCuenta.Name = "labelCrearCuenta";
            this.labelCrearCuenta.Size = new System.Drawing.Size(160, 16);
            this.labelCrearCuenta.TabIndex = 6;
            this.labelCrearCuenta.Text = "¿No estás registrado?";
            this.labelCrearCuenta.Click += new System.EventHandler(this.label3_Click);
            // 
            // dtpfechanacval
            // 
            this.dtpfechanacval.AutoSize = true;
            this.dtpfechanacval.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpfechanacval.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.dtpfechanacval.Location = new System.Drawing.Point(38, 150);
            this.dtpfechanacval.Name = "dtpfechanacval";
            this.dtpfechanacval.Size = new System.Drawing.Size(76, 13);
            this.dtpfechanacval.TabIndex = 36;
            this.dtpfechanacval.Text = "(Obligatorio)";
            this.dtpfechanacval.Visible = false;
            // 
            // txtValidacion
            // 
            this.txtValidacion.AutoSize = true;
            this.txtValidacion.ForeColor = System.Drawing.Color.IndianRed;
            this.txtValidacion.Location = new System.Drawing.Point(238, 154);
            this.txtValidacion.Name = "txtValidacion";
            this.txtValidacion.Size = new System.Drawing.Size(0, 13);
            this.txtValidacion.TabIndex = 35;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.label3.Location = new System.Drawing.Point(38, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(76, 13);
            this.label3.TabIndex = 37;
            this.label3.Text = "(Obligatorio)";
            this.label3.Visible = false;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Stencil", 15.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.White;
            this.label10.Location = new System.Drawing.Point(36, 9);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(230, 25);
            this.label10.TabIndex = 38;
            this.label10.Text = "INGRESA A TU CUENTA";
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.button3.Font = new System.Drawing.Font("Stencil", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.Red;
            this.button3.Location = new System.Drawing.Point(31, 186);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(119, 35);
            this.button3.TabIndex = 39;
            this.button3.Text = "SALIR";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // btnRegistrarse
            // 
            this.btnRegistrarse.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnRegistrarse.Font = new System.Drawing.Font("Stencil", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrarse.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnRegistrarse.Location = new System.Drawing.Point(197, 186);
            this.btnRegistrarse.Name = "btnRegistrarse";
            this.btnRegistrarse.Size = new System.Drawing.Size(119, 35);
            this.btnRegistrarse.TabIndex = 40;
            this.btnRegistrarse.Text = "REGISTRARSE";
            this.btnRegistrarse.UseVisualStyleBackColor = false;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.button1.Font = new System.Drawing.Font("Stencil", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(186, 61);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(130, 35);
            this.button1.TabIndex = 41;
            this.button1.Text = "CREAR CUENTA";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // FormLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.ClientSize = new System.Drawing.Size(357, 255);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnRegistrarse);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtpfechanacval);
            this.Controls.Add(this.txtValidacion);
            this.Controls.Add(this.labelCrearCuenta);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtContra);
            this.Controls.Add(this.txtUsuario);
            this.Name = "FormLogin";
            this.Text = "FormLogin";
            this.Load += new System.EventHandler(this.FormLogin_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.TextBox txtContra;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label labelCrearCuenta;
        private System.Windows.Forms.Label dtpfechanacval;
        private System.Windows.Forms.Label txtValidacion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnRegistrarse;
        private System.Windows.Forms.Button button1;
    }
}