using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TicTacToe
{
    public partial class TicTacToeContolMe : TicTacToeControls
    {
        enum TurnEnum { X, O };
        TurnEnum currentturn = TurnEnum.X;

        enum GameStatusEnum { NotStarted, Playing, Tie, Winner }
        GameStatusEnum gamestatus = GameStatusEnum.NotStarted;

        List<Button> lstbuttons;
        List<List<Button>> lstwinningsets;
        List<Button> lstrankedbuttons;

        Color defaultbackcolor;
        bool playcomputer = false;

        public TicTacToeContolMe()
        {
            InitializeComponent();
            lblName.Text = "Me";
            defaultbackcolor = btn1.BackColor;

            lstbuttons = new() { btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9 };
            lstbuttons.ForEach(b => b.Click += SpotButton_Click);
            btnStart.Click += BtnStart_Click;

            lstwinningsets = new() {
                new () {btn1, btn2, btn3},
                new () {btn4, btn5, btn6},
                new () {btn7, btn8, btn9},
                new () {btn1, btn4, btn7},
                new () {btn2, btn5, btn8},
                new () {btn3, btn6, btn9},
                new () {btn1, btn5, btn9},
                new () {btn3, btn5, btn7}

            };
            lstbuttons.ForEach(b => b.Enabled = false);

            lstrankedbuttons = new() { btn5, btn1, btn3, btn7, btn9 };

            DisplayGameStatus();
        }

        private void DoComputerTurnRank()
        {
            var btn = lstrankedbuttons.FirstOrDefault(b => b.Text == " ");
            if (btn != null)
            {
                DoTurn(btn);
            }
        }

        private void StartGame()
        {
            lstbuttons.ForEach(b => { b.Text = ""; b.Enabled = true; });
            gamestatus = GameStatusEnum.Playing;
            currentturn = TurnEnum.X;
            playcomputer = optPlayComputer.Checked;
            DisplayGameStatus();
            SetButtonBackColor(lstbuttons);
        }

        private void DoTurn(Button btn)
        {
            if (btn.Text == "" && gamestatus == GameStatusEnum.Playing)
            {
                btn.Text = currentturn.ToString();

                lstwinningsets.ForEach(l => DetectWinner(l));


                if (gamestatus == GameStatusEnum.Playing)
                {
                    DetectTie();
                    if (gamestatus == GameStatusEnum.Playing)
                    {
                        if (currentturn == TurnEnum.X)
                        {
                            currentturn = TurnEnum.O;
                        }
                        else
                        {
                            currentturn = TurnEnum.X;
                        }
                        if (IsComputerTurn())
                        {
                            DoComputerTurnOffenseDefense(TurnEnum.O);
                            if (IsComputerTurn())
                            {
                                DoComputerTurnOffenseDefense(TurnEnum.X);
                                if (IsComputerTurn())
                                {
                                    DoComputerTurnRank();

                                    if (IsComputerTurn())
                                    {
                                        DoComputerTurnRandomButton();
                                    }
                                }
                            }

                        }

                    }


                }
            }

            DisplayGameStatus();
        }

        private bool IsComputerTurn()
        {
            return currentturn == TurnEnum.O && gamestatus == GameStatusEnum.Playing && playcomputer == true;
        }

        private void DoComputerTurnOffenseDefense(TurnEnum turn)
        {
            var lst = lstwinningsets.FirstOrDefault(
                l => l.Count(b => b.Text == turn.ToString()) == 2
                && l.Count(b => b.Text == "") == 1);
            if (lst != null)
            {
                var btn = lst.First(b => b.Text == "");
                DoTurn(btn);
            }
        }

        private void DoComputerTurnRandomButton()
        {
            var lst = lstbuttons.Where(b => b.Text == "").ToList();
            var btn = lst[new Random().Next(0, lst.Count())];
            DoTurn(btn);
        }

        private void DetectWinner(List<Button> lst)
        {
            if (lst.Count(b => b.Text == currentturn.ToString()) == lst.Count())
            {
                Color c = Color.Yellow;
                SetButtonBackColor(lst);
                gamestatus = GameStatusEnum.Winner;

            }
        }

        private void DetectTie()
        {
            if (lstbuttons.Count(b => b.Text == "") == 0)
            {
                gamestatus = GameStatusEnum.Tie;
            }
            SetButtonBackColor(lstbuttons);
        }

        private void SetButtonBackColor(List<Button> lst)
        {
            Color c = defaultbackcolor;
            switch (gamestatus)
            {
                case GameStatusEnum.Tie:
                    c = Color.White;
                    break;
                case GameStatusEnum.Winner:
                    c = Color.Yellow;
                    break;
            }
            lst.ForEach(b => b.BackColor = c);

        }

        private void DisplayGameStatus()
        {
            string msg = "Click start to begin game";
            switch (gamestatus)

            {
                case GameStatusEnum.Playing:
                    msg = "Currrent Turn: " + currentturn.ToString();
                    break;
                case GameStatusEnum.Tie:
                    msg = "Tie";
                    break;
                case GameStatusEnum.Winner:
                    msg = "Winner is: " + currentturn.ToString();
                    break;
            }

            msg = (playcomputer ? optPlayComputer.Text : optTwoPlayer.Text) + " - " + msg;

            lblStatus.Text = msg;
        }

        private void SpotButton_Click(object? sender, EventArgs e)
        {
            if (sender is Button)
            {
                DoTurn((Button)sender);
            }
        }

        private void BtnStart_Click(object? sender, EventArgs e)
        {
            StartGame();
        }



    }


}
