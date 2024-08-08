using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace OOPBasics
{
    public class Teacher : INotifyPropertyChanged
    {
        public enum TitleEnum { Morah, Mrs };


        private string _maidenName = "";
        private string _lastName = "";
        private string _subject = "";

        public event PropertyChangedEventHandler? PropertyChanged;
        private void InvokePropertyChanged([CallerMemberName] string propertyname = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyname));
        }
        public Teacher(string lastnamevalue = "")
        {
            this.Subject = "Vocabulary";
            this.tLastName = lastnamevalue;
        }

        public string FirstName { get; set; } = "";
        public string tLastName { get => _lastName;
            set 
            {
                _lastName = value;
                InvokePropertyChanged();
                InvokePropertyChanged("Description");
            } 
        }
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

        public string Subject { get => _subject;
            set
            {
                _subject = value;
                InvokePropertyChanged();
                InvokePropertyChanged("Description");
            }
        } 

        public string Description
        {
            get
            {
                string desc = $" {this.Title} {this.FirstName} {this.tLastName} ( {this.MaidenName} ) has been teaching {this.Subject} for {YearsTaught} years";

                return desc;
            }

        }
    }
}
