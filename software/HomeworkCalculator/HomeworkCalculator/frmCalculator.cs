using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics.CodeAnalysis;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;

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
            btnSign.Click += BtnSign_Click;
            btnDecimal.Click += BtnDecimal_Click;
            btnEquals.Click += BtnEquals_Click;

        }



        private int DetermineCurrentFactor()
        {
            int n = 0;
            if (txtFactor1.Text == "" || txtOperator.Text == "")
            {
                n = 1;
            }
            else if (txtFactor1.Text != "" && txtOperator.Text != "" && txtAnswer.Text == "")
            {
                n = 2;
            }
            return n;
        }

        private String GetCurrentFactorValue()
        {
            int n = DetermineCurrentFactor();
            string factorval = "";
            if (n == 1)
            {
                factorval = txtFactor1.Text;
            }
            else if (n == 2)
            {
                factorval = txtFactor2.Text;
            }
            return factorval;
        }

        private void SetCurrentFactorValue(string value)
        {
            //parameters allow you to take oUTseide info and use it inside this procedure


            //find out which BOX needs adjustment
            int n = DetermineCurrentFactor();


            //actually ADJUST the box under discussion
            if (n == 1) //means the first box needs the work
            {
                txtFactor1.Text = value; //actually does the work
            }
            else if (n == 2) //means box 2 needs work...
            {
                txtFactor2.Text = value; //actually does hw ork...
            }

        }

        private void ImputCurrentFactorValue(string ButtonPressed)
        {
            string CurrentValueAsString = GetCurrentFactorValue() + ButtonPressed;
            SetCurrentFactorValue(CurrentValueAsString);
        }

        private void Calculate()
        {
            int n = DetermineCurrentFactor();
            decimal FirstBox = 0;
            decimal SecondBox = 0;
            bool b = decimal.TryParse(txtFactor1.Text, out FirstBox);
            bool b2 = decimal.TryParse(txtFactor2.Text, out SecondBox);

            if (b == false || b2 == false)
            {
                txtAnswer.Text = "";
                if (b == false)
                {
                    txtFactor1.Text = "";
                }
                else if (b == false)
                {
                    txtFactor2.Text = "";
                }
            }
            else if (n == 1)
            {
                txtAnswer.Text = "";
            }
            else if (n == 2)
            {
                if (txtOperator.Text == "+")
                {
                    txtAnswer.Text = decimal.Add(FirstBox, SecondBox).ToString();
                }
                else if (txtOperator.Text == "-")
                {
                    txtAnswer.Text = decimal.Subtract(FirstBox, SecondBox).ToString();
                }
                else if (txtOperator.Text == "x")
                {
                    txtAnswer.Text = decimal.Multiply(FirstBox, SecondBox).ToString();
                }
                else if (txtOperator.Text == "/" && txtFactor2.Text != "0")
                {
                    txtAnswer.Text = decimal.Divide(FirstBox, SecondBox).ToString();
                }
                else if (txtOperator.Text == "/" && txtFactor2.Text == "0")
                {
                    txtAnswer.Text = "";
                }
            }
        }

        private void BtnEquals_Click(object? sender, EventArgs e)
        {
            Calculate();
        }

        private void BtnDecimal_Click(object? sender, EventArgs e)
        {
            string s = GetCurrentFactorValue();
            if (s.Contains("."))
            {
                ImputCurrentFactorValue("");
            }
            if (!s.Contains("."))
            {
                ImputCurrentFactorValue(".");
            }
        }

        private void BtnSign_Click(object? sender, EventArgs e)
        {
            //overview    MakeValueNegative


            string currentValueAsString = GetCurrentFactorValue();

            //   make it become a negative VALUE(x -1)
            //   1. turn into an int
            int currentValueAsInt = 0;
            bool b = int.TryParse(currentValueAsString, out currentValueAsInt);

            //   2. make negative
            currentValueAsInt = currentValueAsInt * -1;


            //take new value and put in into the text of the box currently being adjusted
            currentValueAsString = currentValueAsInt.ToString();


            SetCurrentFactorValue(currentValueAsString);

            //int currentBOX = DetermineCurrentFactor();
            //if (currentBOX == 1)
            //{
            //    txtFactor1.Text = currentValueAsString;
            //}
            //else if (currentBOX == 2)
            //{
            //    txtFactor2.Text = currentValueAsString;
            //}



            //string factorval = GetCurrentFactorValue();
        }

        private void BtnClear_Click(object? sender, EventArgs e)
        {
            //SM Make it a empty string, not a space.
            txtFactor1.Text = "";
            txtOperator.Text = "";
            txtFactor2.Text = "";
            txtAnswer.Text = "";
        }

        private void BtnDivide_Click(object? sender, EventArgs e)
        {
            //SM Don't "add" the operator to the operator text box. Change it to the operator.
            txtOperator.Text = "/";
        }

        private void BtnMultiply_Click(object? sender, EventArgs e)
        {
            //SM Don't "add" the operator to the operator text box. Change it to the operator.
            txtOperator.Text = "x";
        }

        private void BtnSubtract_Click(object? sender, EventArgs e)
        {
            //SM Don't "add" the operator to the operator text box. Change it to the operator.
            txtOperator.Text = "-";
        }

        private void BtnAdd_Click(object? sender, EventArgs e)
        {
            //SM Don't "add" the operator to the operator text box. Change it to the operator.
            txtOperator.Text = "+";
        }

        private void Btn9_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("9");
        }

        private void Btn8_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("8");
        }

        private void Btn7_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("7");
        }

        private void Btn6_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("6");
        }

        private void Btn5_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("5");
        }

        private void Btn4_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("4");
        }

        private void Btn3_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("3");
        }

        private void Btn2_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("2");
        }

        private void Btn1_Click(object? sender, EventArgs e)
        {
            ImputCurrentFactorValue("1");
        }

        private void Btn0_Click(object? sender, EventArgs e)

        {
            ImputCurrentFactorValue("0");
        }
    }
}