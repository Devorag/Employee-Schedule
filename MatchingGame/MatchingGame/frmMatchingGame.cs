﻿using System;
using System.Collections.Generic;
using System.Drawing;
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
            "b", "b", "v", "v", "w", "w", "z", "z"
        };

        public frmMatchingGame()
        {
            InitializeComponent();
            InitialSetup();
            ControlsDisabled();

            foreach (Control c in tblBoard.Controls)
            {
                if (c is Label)
                {
                    c.Click += Label_Click;
                }
            }

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
                    iconLabel.BackColor = Color.CornflowerBlue;
                    iconLabel.ForeColor = iconLabel.BackColor; // Hide text initially
                    iconLabel.Text = string.Empty; // Ensure no text is displayed initially
                }
            }
        }

        private void ControlsDisabled()
        {
            foreach (Control c in tblBoard.Controls)
            {
                c.Enabled = false;
            }
        }

        private void ControlsEnabled()
        {
            foreach (Control c in tblBoard.Controls)
            {
                c.Enabled = true;
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
            try
            {
                icons = new List<string>
                {
                    "!", "!", "N", "N", ",", ",", "k", "k",
                    "b", "b", "v", "v", "w", "W", "z", "z"
                };

                foreach (Control control in tblBoard.Controls)
                {
                    Label iconLabel = (Label)control;
                    if (iconLabel != null)
                    {
                        int randomNumber = random.Next(icons.Count);
                        iconLabel.Text = icons[randomNumber];
                        iconLabel.ForeColor = iconLabel.BackColor; // Hide the text initially
                        icons.RemoveAt(randomNumber);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while assigning icons: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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

        private void Label_Click(object? sender, EventArgs e)
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
            try
            {
                ClearBoard(); // Clear the board
                Start(); // Start the game
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ClearBoard()
        {
            foreach (Control control in tblBoard.Controls)
            {
                Label iconLabel = control as Label;
                if (iconLabel != null)
                {
                    iconLabel.Text = string.Empty; // Clear the text
                    iconLabel.BackColor = Color.CornflowerBlue; // Set the initial background color to blue
                    iconLabel.ForeColor = iconLabel.BackColor; // Hide the text
                }
            }
        }
    }
}

