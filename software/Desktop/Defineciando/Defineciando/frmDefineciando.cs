using System.Data;
using gnuciDictionary;

namespace Defineciando
{
    public partial class frmDefineciando : Form
    {
        private List<Word> lstw;
        private List<Word> lstAmount;
        private List<Word> lstSpecific;
        private string correctDefinition;

        public frmDefineciando()
        {
            InitializeComponent();
            InitializeEventHandlers();
            InitializeLists();
            SetInitialControlStates();
        }

        private void InitializeEventHandlers()
        {
            btnPick.Click += BtnPick_Click;
            btnEnter.Click += BtnEnter_Click;
            btnGiveup.Click += BtnGiveup_Click;

            txtSpecificLetters.KeyPress += txtSpecificLetters_KeyPress;
            txtNumLetters.KeyPress += TxtNumLetters_KeyPress;

            optDefinition1.CheckedChanged += RadioButton_CheckedChanged;
            optDefinition2.CheckedChanged += RadioButton_CheckedChanged;
            optDefinition3.CheckedChanged += RadioButton_CheckedChanged;
        }

        private void InitializeLists()
        {
            lstw = gnuciDictionary.EnglishDictionary.GetAllWords().ToList();
            lstAmount = new List<Word>();
            lstSpecific = new List<Word>();
        }

        private void SetInitialControlStates()
        {
            txtTheWord.Enabled = false;
            txtDef1.Enabled = false;
            txtDef2.Enabled = false;
            txtDef3.Enabled = false;
            txt1.Enabled = false;
            txt2.Enabled = false;
            txt3.Enabled = false;
            txtNumWordsTried.Enabled = false;
            txtScore.Enabled = false;
            btnEnter.Enabled = false;
            btnGiveup.Enabled = false;
        }

        private void UpdateControlStatesAfterWordSelection()
        {
            btnGiveup.Enabled = true;
            btnEnter.Enabled = false;
        }

        private void UpdateControlStatesAfterAnswer()
        {
            btnEnter.Enabled = false;
            btnGiveup.Enabled = false;
        }

        private void CheckAnswer()
        {
            string selectedDef = GetSelectedDefinition();
            bool isCorrect = selectedDef == correctDefinition;

            DisplayResult(isCorrect);
            UpdateScore(isCorrect);

            lblMessage.Text = isCorrect ? "Good, your choice is correct" : "Sorry, your choice is wrong";
        }

        private string GetSelectedDefinition()
        {
            if (optDefinition1.Checked) return txtDef1.Text;
            if (optDefinition2.Checked) return txtDef2.Text;
            if (optDefinition3.Checked) return txtDef3.Text;

            return string.Empty;
        }

        private void DisplayResult(bool isCorrect)
        {
            txt1.BackColor = Color.White;
            txt2.BackColor = Color.White;
            txt3.BackColor = Color.White;

            UpdateDefinitionColors();
        }

        private void UpdateDefinitionColors()
        {
            txt1.BackColor = txtDef1.Text == correctDefinition ? Color.Green : Color.Red;
            txt2.BackColor = txtDef2.Text == correctDefinition ? Color.Green : Color.Red;
            txt3.BackColor = txtDef3.Text == correctDefinition ? Color.Green : Color.Red;

            txt1.Text = txtDef1.Text == correctDefinition ? "CORRECT" : "INCORRECT";
            txt2.Text = txtDef2.Text == correctDefinition ? "CORRECT" : "INCORRECT";
            txt3.Text = txtDef3.Text == correctDefinition ? "CORRECT" : "INCORRECT";
        }

        private string GetWrongDefinition(List<string> usedDefinitions)
        {
            Random rnd = new();
            Word randomWord;
            do
            {
                randomWord = lstw[rnd.Next(lstw.Count)];
            } while (usedDefinitions.Contains(randomWord.Definition));

            return randomWord.Definition;
        }

        private string GetCorrectDefinition(string word)
        {
            return lstw.First(w => w.Value == word).Definition;
        }

        private int ConvertTextToInt(string txt)
        {
            int.TryParse(txt, out int n);
            return n;
        }

        private string DisplayWord()
        {
            Random rnd = new();
            FilterLettersAmount();
            FilterSpecificLetters();

            if (lstSpecific.Count < 3)
            {
                MessageBox.Show("Not enough words found with the given filter. Please Adjust the filter", "Insufficient words", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return null;
            }

            return lstSpecific[rnd.Next(0, lstSpecific.Count())].Value;

        }

        private void FilterSpecificLetters()
        {
            lstSpecific.Clear();
            if (string.IsNullOrEmpty(txtSpecificLetters.Text))
            {
                lstSpecific = new List<Word>(lstAmount);
            }
            else
            {
                lstSpecific = lstAmount.Where(w => w.Value.Contains(txtSpecificLetters.Text)).ToList();
            }

            Console.WriteLine($"Words after specific letters filter: {lstSpecific.Count}");
        }

        private void FilterLettersAmount()
        {
            lstAmount.Clear();
            if (string.IsNullOrEmpty(txtNumLetters.Text))
            {
                lstAmount = new List<Word>(lstw);
            }
            else
            {
                int numLetters = ConvertTextToInt(txtNumLetters.Text);
                lstAmount = lstw.Where(w => w.Value.Length == numLetters).ToList();
            }

            Console.WriteLine($"Words after length filter: {lstAmount.Count}");
        }


        private void ClearPreviousState()
        {
            txtDef1.Text = "";
            txtDef2.Text = "";
            txtDef3.Text = "";

            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";

            lblMessage.Text = "";
            txtTheWord.Text = "";

            txt1.BackColor = Color.White;
            txt2.BackColor = Color.White;
            txt3.BackColor = Color.White;
        }

        private void Shuffle<T>(List<T> list)
        {
            Random rnd = new Random();
            int n = list.Count;
            while (n > 1)
            {
                n--;
                int k = rnd.Next(n + 1);
                T value = list[k];
                list[k] = list[n];
                list[n] = value;
            }
        }

        private void UpdateScore(bool correct, bool giveUp = false)
        {
            int score = ConvertTextToInt(txtScore.Text);
            int numWordsTried = ConvertTextToInt(txtNumWordsTried.Text);

            if (correct)
            {
                score += 1;
            }
            else if (!giveUp)
            {
                score -= 1;
            }

            txtScore.Text = score.ToString();
            txtNumWordsTried.Text = numWordsTried.ToString();
        }

        private void SelectAndDisplayWord()
        {

            string word = DisplayWord();
            if (word == null) return;

            txtTheWord.Text = word;
            txtNumWordsTried.Text = (ConvertTextToInt(txtNumWordsTried.Text) + 1).ToString();

            correctDefinition = GetCorrectDefinition(word);
        }

        private void Definitions()
        {
            List<String> definitions = new List<string> { correctDefinition };
            definitions.Add(GetWrongDefinition(definitions));
            definitions.Add(GetWrongDefinition(definitions));
            Shuffle(definitions);

            txtDef1.Text = definitions[0];
            txtDef2.Text = definitions[1];
            txtDef3.Text = definitions[2];
        }

        private void BtnGiveup_Click(object? sender, EventArgs e)
        {
            UpdateScore(false, true);
            ClearPreviousState();
            txtNumLetters.Text = "";
            txtSpecificLetters.Text = "";
            UpdateControlStatesAfterAnswer();
        }

        private void BtnEnter_Click(object? sender, EventArgs e)
        {
            CheckAnswer();
            UpdateControlStatesAfterAnswer();
        }


        private void BtnPick_Click(object? sender, EventArgs e)
        {
            ClearPreviousState();

            SelectAndDisplayWord();

            Definitions();

            optDefinition1.Checked = false;
            optDefinition2.Checked = false;
            optDefinition3.Checked = false;

            UpdateControlStatesAfterWordSelection();
        }

        private void txtSpecificLetters_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != '\b' && e.KeyChar >= 32)
            {
                e.Handled = true;
            }
        }

        private void TxtNumLetters_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != '\b' && e.KeyChar >= 32)
            {
                e.Handled = true; // Ignore the key press if it's not a digit or control character
            }
        }

        private void RadioButton_CheckedChanged(object? sender, EventArgs e)
        {
            if (optDefinition1.Checked || optDefinition2.Checked || optDefinition3.Checked)
            {
                btnEnter.Enabled = true;
            }
            else
            {
                btnEnter.Enabled = false;
            }
        }
    }
}

    // defintions gnuciDictionary.Dictionary.Definitions.Define

