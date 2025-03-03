using TicTacToeSystem;

namespace TicTacToeTest
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {

        }

        [Test]
        public void TestStartGame()
        {
            Game game = new();
            game.StartGame();
            string msg = $"game status = {game.GameStatus.ToString()} current turn = {game.CurrentTurn.ToString()} num spots = {game.Spots.Count}";
            Assert.IsTrue(game.GameStatus == Game.GameStatusEnum.Playing && game.CurrentTurn == Game.TurnEnum.X && game.Spots.Count == 9, msg);
            TestContext.WriteLine(msg);
        }

        [Test] 

        public void TestTakeSpot()
        {
            Game game = new();
            game.StartGame();
            game.TakeSpot(0);
            string msg = $"spot 0 = {game.Spots[0].SpotValue.ToString()} current turn = {game.CurrentTurn.ToString()}";
            Assert.IsTrue(game.Spots[0].SpotValue == Game.TurnEnum.X && game.CurrentTurn == Game.TurnEnum.O, msg);
            TestContext.WriteLine(msg);
        }

        [TestCase(0, 3, 1, 6, 2)]
        [TestCase(3, 0, 4, 6, 5)]
        [TestCase(6, 3, 7, 0, 8)]
        [TestCase(0, 1, 3, 2, 6)]
        [TestCase(1, 2, 4, 5, 7)]
        [TestCase(2, 3, 5, 4, 8)]

        public void TestWinner(int x0, int o0, int x1, int o1, int x2)
        {
            Game game = new();
            game.StartGame();
            game.TakeSpot(x0);
            game.TakeSpot(o0);
            game.TakeSpot(x1);
            game.TakeSpot(o1);
            game.TakeSpot(x2);
            string msg = $" game status = {game.GameStatus} winner is {game.Winner.ToString()}";
            Assert.IsTrue(game.GameStatus == Game.GameStatusEnum.Winner && game.Winner == Game.TurnEnum.X, msg);
            TestContext.WriteLine(msg);
       }

        [Test] 

        public void TestTie()
        {
            Game game = new();
            game.StartGame();
            game.TakeSpot(0); //X
            game.TakeSpot(2); //O
            game.TakeSpot(1); //X
            game.TakeSpot(3); //O
            game.TakeSpot(6); //X
            game.TakeSpot(7); //O
            game.TakeSpot(8); //X
            game.TakeSpot(4); //O
            game.TakeSpot(5); //X
            string msg = $" game status = {game.GameStatus} winner is {game.Winner.ToString()}";
            Assert.IsTrue(game.GameStatus == Game.GameStatusEnum.Tie, msg);
            TestContext.WriteLine(msg);
        }

        [Test]
        public void TestPlayComputer()
        {
            Game game = new();
            game.StartGame(true);
            game.StartGame();
            game.TakeSpot(4); //middle
            bool b = game.Spots.Exists(s => s.SpotValue == Game.TurnEnum.O);
            string msg = $"computer took turn = {b.ToString()} current turn = {game.CurrentTurn.ToString()}";
            Assert.IsTrue(b == true && game.CurrentTurn == Game.TurnEnum.X, msg);
            TestContext.WriteLine(msg);

        }
        [Test]
        public void TestDefense()
        {
            Game game = new();
            game.StartGame(true);
            game.StartGame();
            game.TakeSpot(4); //middle
            game.TakeSpot(3); //left middle
            string msg = $"spot 5 value = {game.Spots[5].SpotValue}";
            Assert.IsTrue(game.Spots[5].SpotValue == Game.TurnEnum.O, msg);
            TestContext.WriteLine(msg);
        }

        [Test]
        public void TestOffense()
        {
            Game game = new();
            game.StartGame(true);
            game.StartGame();
            game.TakeSpot(3); //left middle
            //middle
            game.TakeSpot(5); //middle right
            //top left
            game.TakeSpot(7); //bottom middle
            //bottom right (8) to win
            string msg = $"game status = {game.GameStatusDescription} winner = {game.Winner.ToString()}";
            Assert.IsTrue(game.GameStatus == Game.GameStatusEnum.Winner && game.Winner == Game.TurnEnum.O, msg);
            TestContext.WriteLine(msg);
        }
    }
}