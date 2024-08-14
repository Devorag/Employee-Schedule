using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace OOPBasics
{
    public class Person : INotifyPropertyChanged
    {
        public enum GenderEnum { Unknown, Male, Female };

        private string _middlename = "";
        private string _firstname = "";
        private string _lastname = "";

        public event PropertyChangedEventHandler? PropertyChanged;

        private void InvokePropertyChanged([CallerMemberName]string propertyname = "") {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyname));
        }

        public Person(string lastnamevalue = "")
        {
            Popoulation++;
            this.DOB = DateTime.Now;
            this.LastName = lastnamevalue;
        }

        public static int Popoulation { get; set; }
        public string FirstName
        {
            get => _firstname;
            set
            {
                _firstname = value;
                InvokePropertyChanged();
                InvokePropertyChanged("Description");
            }
        }
        public string LastName
        {
            get => _lastname;
            set
            {
                _lastname = value;
                InvokePropertyChanged();
                InvokePropertyChanged("Description");
            }
        }

        public string MiddleName
        {
            get { return _middlename;  }
            set { _middlename = value; }
        }

        public GenderEnum Gender { get; set; } = GenderEnum.Unknown;

        public DateTime DOB { get; set; }

        public string Description
        {
            get
            {
                string desc = $"{this.FirstName} {this.MiddleName} {this.LastName} {this.Gender} {this.Age} years old";

                return desc;
            }

        }

        public int Age
        {
            get => DateTime.Now.Year - DOB.Year; 
            set => this.DOB = DateTime.Now.AddYears(-value); 
        }
    }
}

