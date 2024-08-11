using TicTacToeSystem;

namespace TicTacToeMaui
{
    public partial class MainPage : ContentPage
    {
        Game game = new();
        List<Button> lstbuttons;
        public MainPage()
        {
            InitializeComponent();
            this.BindingContext = game;
            lstbuttons = new() { btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9 };
        }

        private void StartBtn_Clicked(object sender, EventArgs e)
        {
            game.StartGame(PlayAgainstComputerRb.IsChecked);
        }

        private void btn_Clicked(object sender, EventArgs e)
        {
            game.TakeSpot(lstbuttons.IndexOf((Button)sender));
        }
    }

}
