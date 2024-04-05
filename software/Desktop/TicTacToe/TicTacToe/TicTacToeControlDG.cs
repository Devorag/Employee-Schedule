using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TicTacToe
{
    public partial class TicTacToeControlDG : TicTacToeControls
    {
        enum TurnEnum { X, O };
        TurnEnum currentturn = TurnEnum.X;

        List<Button> lstbuttons;
        public TicTacToeControlDG()
        {
            InitializeComponent();
            lblName.Text = "Me";
            lstbuttons = new() { btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9 };

            lstbuttons.ForEach(b => b.Click += SpotButton_Click);
        }

        private void DoTurn(Button btn)
        {
            if (btn.Text == " ")
            {
                btn.Text = currentturn.ToString();

                if (currentturn == TurnEnum.X)
                {
                    currentturn = TurnEnum.O;
                }
                else
                {
                    currentturn = TurnEnum.X;
                }
            }
        }

        private void SpotButton_Click(object? sender, EventArgs e)
        {
            if (sender is Button)
            {
                DoTurn((Button)sender);
            }
        }
    }
}
