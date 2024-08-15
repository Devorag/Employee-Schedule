using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Creature: INotifyPropertyChanged   
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        public Creature(GenderEnum gender = GenderEnum.Unknown)
        {
            this.Gender = gender;
        }

        protected void InvokePropertyChanged([CallerMemberName] string propertyname = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyname));
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
