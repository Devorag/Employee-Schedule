using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace OOPBasics
{
    public class Person : Creature
    {


        private string _middlename = "";
        private string _firstname = "";
        private string _lastname = "";

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


        public string Description
        {
            get
            {
                string desc = $"{this.FirstName} {this.MiddleName} {this.LastName} {this.Gender.ToString()} {this.Age} years old";

                return desc;
            }

        }
    }
}

