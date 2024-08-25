using TicTacToeSystem;

namespace TicTacToeMaui
{
    public partial class MainPage : ContentPage
    {
        Game activegame;
        List<Game> lstGame = new() { new Game(), new Game(), new Game() };
        List<Button> lstbuttons;
        public MainPage()
        {
            InitializeComponent();
            lstGame.ForEach(g => g.ScoreChanged += G_ScoreChanged);
            Game1Rb.BindingContext = lstGame[0];
            Game2Rb.BindingContext = lstGame[1];
            Game3Rb.BindingContext = lstGame[2];
            activegame = lstGame[0];
            this.BindingContext = activegame;
            lstbuttons = new() { btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9 };
        }

        private void G_ScoreChanged(object? sender, EventArgs e)
        {
            ScoreLbl.Text = Game.Score;
        }

        private void StartBtn_Clicked(object sender, EventArgs e)
        {
            if (activegame.GameStatus == Game.GameStatusEnum.NotStarted)
            {
                activegame.StartGame(PlayAgainstComputerRb.IsChecked);
            }
            else
            {
                activegame.StopGame();
            }
        }

        private void btn_Clicked(object sender, EventArgs e)
        {
            activegame.TakeSpot(lstbuttons.IndexOf((Button)sender));
        }

        private void Game_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            RadioButton rb = (RadioButton)sender;
            if(rb.IsChecked && rb.BindingContext != null)
            {
                activegame = (Game)rb.BindingContext;
                this.BindingContext = activegame;
            }
        }
    }

}
