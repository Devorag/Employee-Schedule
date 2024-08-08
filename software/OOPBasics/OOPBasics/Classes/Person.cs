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
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";

        public GenderEnum Gender { get; set; } = GenderEnum.Unknown;

        public DateTime DOB { get; set; }

        public string Description
        {
            get
            {
                string desc = $"{this.FirstName} {this.LastName} {this.Gender} {this.Age} years old";

                return desc;
            }

        }

        public int Age
        {
            get { return DateTime.Now.Year - DOB.Year; }
        }
    }
}

