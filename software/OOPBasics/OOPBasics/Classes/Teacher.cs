namespace OOPBasics
{
    public class Teacher
    {
        public enum TitleEnum { Morah, Mrs };
        public Teacher(string lastnamevalue = "")
        {
            this.Subject = "Vocabulary";
            this.LastName = lastnamevalue;
        }

        private int _yearstaught;

        private string _maidenName = "";

        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string MaidenName
        {
            get { return _maidenName; }
            set { _maidenName = value; }
        }

        public DateTime FirstDayTeaching { get; set; }

        public int YearsTaught 
        {
            get => DateTime.Now.Year - FirstDayTeaching.Year;
            set => this.FirstDayTeaching = DateTime.Now.AddYears(-value);
        }

        public TitleEnum Title { get; set; } = TitleEnum.Mrs;

        public string Subject { get; set; } 

        public string Description
        {
            get
            {
                string desc = $" {this.Title} {this.FirstName} {this.LastName} ( {this.MaidenName} ) has been teaching {this.Subject} for {YearsTaught} years";

                return desc;
            }

        }
    }
}
