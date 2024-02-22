using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HomeworkCalculator
{
    public partial class frmCalculator : Form
    {
        //variables go here 
        public frmCalculator()
        {
            InitializeComponent();
            //event subscription goes here
            btn0.Click += Btn0_Click;
            btn1.Click += Btn1_Click;
            btn2.Click += Btn2_Click;
            btn3.Click += Btn3_Click;
            btn4.Click += Btn4_Click;
            btn5.Click += Btn5_Click;
            btn6.Click += Btn6_Click;
            btn7.Click += Btn7_Click;
            btn8.Click += Btn8_Click;
            btn9.Click += Btn9_Click;
            btnAdd.Click += BtnAdd_Click;
            btnSubtract.Click += BtnSubtract_Click;
            btnMultiply.Click += BtnMultiply_Click;
            btnDivide.Click += BtnDivide_Click;
            btnClear.Click += BtnClear_Click;
        }

        private void BtnClear_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = " ";
            txtOperator.Text = " ";
            txtFactor2.Text = " ";
            txtAnswer.Text = " ";
        }

        private void BtnDivide_Click(object? sender, EventArgs e)
        {
            txtOperator.Text = txtOperator.Text + "/";
        }

        private void BtnMultiply_Click(object? sender, EventArgs e)
        {
            txtOperator.Text = txtOperator.Text + "x";
        }

        private void BtnSubtract_Click(object? sender, EventArgs e)
        {
            txtOperator.Text = txtOperator.Text + "-";
        }

        private void BtnAdd_Click(object? sender, EventArgs e)
        {
            txtOperator.Text = txtOperator.Text + "+";
        }

        private void Btn9_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 9;
        }

        private void Btn8_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 8;
        }

        private void Btn7_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 7;
        }

        private void Btn6_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 6;
        }

        private void Btn5_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 5;
        }

        private void Btn4_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 4;
        }

        private void Btn3_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 3;
        }

        private void Btn2_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 2;
        }

        private void Btn1_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 1;
        }

        private void Btn0_Click(object? sender, EventArgs e)
        {
            txtFactor1.Text = txtFactor1.Text + 0;
        }

        //code goes here 
    }
}
