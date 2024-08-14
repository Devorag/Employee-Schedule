using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Creature
    {   
        public Creature(GenderEnum gender = GenderEnum.Unknown)
        {
            this.Gender = gender;
        }
        public enum GenderEnum { Unknown, Male, Female };
        public GenderEnum Gender { get; set; } = GenderEnum.Unknown;
        public DateTime DOB { get; set; }
        public int Age
        {
            get => DateTime.Now.Year - DOB.Year;
            set => this.DOB = DateTime.Now.AddYears(-value);
        }
    }
}
