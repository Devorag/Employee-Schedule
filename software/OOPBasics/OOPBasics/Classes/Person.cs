using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Person
    {
        public enum GenderEnum { Unknown, Male, Female };

        private string _middlename = "";

        public Person(string lastnamevalue = "")
        {
            this.DOB = DateTime.Now;
            this.LastName = lastnamevalue;
        }

        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";

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

