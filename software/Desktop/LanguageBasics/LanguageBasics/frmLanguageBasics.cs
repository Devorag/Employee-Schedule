using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LanguageBasics
{
    public partial class frmLanguageBasics : Form
    {
        //variables go here 
        public frmLanguageBasics()
        {
            InitializeComponent();
            //event subscription goes here
            btnEvemtHandler1.Click += BtnEvemtHandler1_Click;
            btnEventHandler2.MouseMove += BtnEventHandler2_MouseMove;
            btnEventHandler2.MouseLeave += BtnEventHandler2_MouseLeave;
        }

        private void BtnEventHandler2_MouseLeave(object? sender, EventArgs e)
        {
            btnEventHandler2.BackColor = SystemColors.ControlLight;
            btnEventHandler2.ForeColor = SystemColors.ControlText;
        }

        private void BtnEventHandler2_MouseMove(object? sender, MouseEventArgs e)
        {
            txtOutput.Text = txtOutput.Text + "Mouse moved over BtnEventHandler2 " + DateTime.Now.TimeOfDay.ToString() + Environment.NewLine;
            btnEventHandler2.BackColor = Color.DodgerBlue;
            btnEventHandler2.ForeColor = Color.OrangeRed;
        }

        private void BtnEvemtHandler1_Click(object? sender, EventArgs e)
        {
            txtOutput.Text = txtOutput.Text + "BtnEventHandler1 was clicked " + DateTime.Now.TimeOfDay.ToString() + Environment.NewLine;

        }


        //code goes here 
    }
}
