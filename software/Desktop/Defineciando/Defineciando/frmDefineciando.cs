using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using gnuciDictionary;

namespace Defineciando
{
    public partial class frmDefineciando : Form
    {
        List<Word> lstw = gnuciDictionary.EnglishDictionary.GetAllWords().ToList();
        List<Word> lstamount;
        List<Word> lstspecific;

        public frmDefineciando()
        {
            InitializeComponent();
            btnPick.Click += BtnPick_Click;
            btnEnter.Click += BtnEnter_Click;
        }

        private void BtnEnter_Click(object? sender, EventArgs e)
        {
            GetLabels();
        }

        private void GetLabels()
        {
            txt1.Text = "Correct";
            txt1.BackColor = Color.Green;
            txt2.Text = "Incorrect";
            txt2.BackColor = Color.Red;
            txt3.Text = "Incorrect";
            txt3.BackColor = Color.Red;
        }

        private string GetWrongDefinition()
        {
            Random rnd = new();
            return lstw[rnd.Next(0, lstw.Count())].Definition;
        }

        private string GetCorrectDefinition()
        {
            return lstw[ConvertTextToInt(txtWord.Text)].Definition;
        }

        private int ConvertTextToInt(string txt)
        {
            int n = 0;
            bool b = int.TryParse(txt, out n);
            return n;
        }


        private string DisplayWord()
        {
            Random rnd = new();
            FilterLettersAmount();
            FilterSpecificLetters();
            return lstamount[rnd.Next(0, lstamount.Count())].Value;
        }

        private void FilterSpecificLetters()
        {
            if (txtSpecificLetters.Text == "")
            {
                lstspecific = lstamount;
            }
            else
            {
                foreach (Word w in lstamount.Where(w => w.Value.Contains(txtSpecificLetters.Text)))
                {
                    lstspecific.Add(w);
                }
            }
        }

        private void FilterLettersAmount()
        {
            if (txtNumLetters.Text == "")
            {
                lstamount = lstw;
            }
            else
            {
                foreach (Word w in lstw.Where(w => w.Value.Length == ConvertTextToInt(txtNumLetters.Text)))
                {
                    lstamount.Add(w);
                }
            }
        }




        private void BtnPick_Click(object? sender, EventArgs e)
        {
            txtWord.Text = DisplayWord();
            txtNumWordsTried.Text = (ConvertTextToInt(txtNumWordsTried.Text) + 1).ToString();
            txtDef1.Text = GetCorrectDefinition();
            txtDef2.Text = GetWrongDefinition();
            txtDef3.Text = GetWrongDefinition();
        }

        private void GameMessage()
        {

        }
    }
}
    // defintions gnuciDictionary.Dictionary.Definitions.Define

