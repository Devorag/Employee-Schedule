
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace MatchingGame
{
    public partial class frmMatchingGame : Form
    {
        System.Windows.Forms.Timer tmr = new() { Interval = 950 };

        Random random = new Random();

        Label firstClicked = null;
        Label secondClicked = null;


        List<string> icons = new()
            {
                "!", "!", "N", "N", ",", ",", "k", "k",
                "b", "b", "v", "v", "w", "W", "z", "z"
            };
        public frmMatchingGame()
        {
            InitializeComponent();
            InitialSetup();
            ControlsDisabled();

            label1.Click += Label1_Click;
            label2.Click += Label1_Click;
            label3.Click += Label1_Click;
            label4.Click += Label1_Click;
            label5.Click += Label1_Click;
            label6.Click += Label1_Click;
            label7.Click += Label1_Click;
            label8.Click += Label1_Click;
            label9.Click += Label1_Click;
            label10.Click += Label1_Click;
            label11.Click += Label1_Click;
            label12.Click += Label1_Click;
            label13.Click += Label1_Click;
            label14.Click += Label1_Click;
            label15.Click += Label1_Click;
            label16.Click += Label1_Click;
            tmr.Tick += Tmr_Tick;
            BtnStart.Click += BtnStart_Click;

        }

        private void Start()
        {
            foreach (Control c in tblBoard.Controls)
            {
                Label iconLabel = (Label)c;
                if (iconLabel != null)
                {
                    if (iconLabel.ForeColor != iconLabel.BackColor)
                    {
                        iconLabel.ForeColor = iconLabel.BackColor;
                        return;
                    }
                }
            }
            AssignIconsToSquares();
            ControlsEnabled();
        }

        private void InitialSetup()
        {
            foreach (Control c in tblBoard.Controls)
            {
                Label iconLabel = (Label)c;
                if (iconLabel != null)
                {
                    iconLabel.ForeColor = iconLabel.BackColor;
                }
            }
        }

        private void ControlsDisabled()
        {
            foreach (Control c in tblBoard.Controls)
            {
                Label iconLabel = (Label)c;
                if (iconLabel != null)
                {
                    c.Enabled = false;
                }
            }
        }

        private void ControlsEnabled()
        {
            foreach (Control c in tblBoard.Controls)
            {
                Label iconLabel = (Label)c;
                if (iconLabel != null)
                {
                    c.Enabled = true;
                }
            }
        }

        private void CheckForWinner()
        {
            foreach (Control control in tblBoard.Controls)
            {
                Label iconLabel = (Label)control;
                if (iconLabel != null)
                {
                    if (iconLabel.ForeColor == iconLabel.BackColor)
                        return;

                }
            }
            MessageBox.Show("You matched all the pictures!");
            ControlsDisabled();
        }

        private void AssignIconsToSquares()
        {
            foreach (Control control in tblBoard.Controls)
            {
                Label iconLabel = (Label)control;
                if (iconLabel != null)
                {
                    int randomNumber = random.Next(icons.Count);
                    iconLabel.Text = icons[randomNumber];
                    iconLabel.ForeColor = iconLabel.BackColor;
                    icons.RemoveAt(randomNumber);
                }
            }
        }

        private void Tmr_Tick(object? sender, EventArgs e)
        {
            tmr.Stop();
            firstClicked.ForeColor = firstClicked.BackColor;
            secondClicked.ForeColor = secondClicked.BackColor;

            firstClicked = null;
            secondClicked = null;
        }

        private void Label1_Click(object? sender, EventArgs e)
        {
            if (tmr.Enabled == true)
                return;


            Label clickedLbl = (Label)sender;

            if (clickedLbl != null)
            {
                if (clickedLbl.ForeColor == Color.Black)
                {
                    return;
                }
                if (firstClicked == null)
                {
                    firstClicked = clickedLbl;
                    firstClicked.ForeColor = Color.Black;

                    return;
                }

                secondClicked = clickedLbl;
                secondClicked.ForeColor = Color.Black;

                CheckForWinner();

                if (firstClicked.Text == secondClicked.Text)
                {
                    firstClicked = null;
                    secondClicked = null;
                    return;
                }
                tmr.Start();
            }
        }


        private void BtnStart_Click(object? sender, EventArgs e)
        {
            Start();
        }



    }
}
