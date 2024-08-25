using System.ComponentModel;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace OOPBasics
{
    public class Creature<T>: INotifyPropertyChanged where T:Creature<T>, new()
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

        public List<T> Children { get; set; } = new();

        public void AddChild()
        {
            this.Children.Add(new T());
        }

        public string ReflectionInfo
        {
            get
            {
                string s = this.GetType().Name;
                foreach(PropertyInfo prop in this.GetType().GetProperties())
                {
                    s = $"{s}  {Environment.NewLine}  {prop.Name} (CanRead = {prop.CanRead} CanWrite = {prop.CanWrite})";
                    if(prop.CanRead && prop.Name != "ReflectionInfo")
                    {
                        if(prop.Name == "Age")
                        {
                            prop.SetValue(this, 20);
                        }
                        s = s + $" = {prop.GetValue(this)}";
                    }
                }
                return s;
            }
        }
    }
}
