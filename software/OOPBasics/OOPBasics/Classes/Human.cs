using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace OOPBasics
{
    public class Human : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        public Human(string LastName = "")
        {
            this.LastName = LastName;
        }
        protected void InvokePropertyChanged([CallerMemberName] string propertyname = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyname));
        }
        public string FirstName { get; set; }

        public string LastName { get; set;  }

    }
}
