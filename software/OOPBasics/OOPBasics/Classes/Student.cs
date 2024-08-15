using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Student : Human
    {
        StudentGradeEnum _grade;
        public enum StudentGradeEnum { Grade1, Grade2, Grade3, Grade4, Grade5, Grade6, Grade7, Grade8, Grade9, Grade10, Grade11, Grade12 }

        public StudentGradeEnum Grade
        {
            get => _grade;
            set
            {
                _grade = value;
                this.InvokePropertyChanged();
                this.InvokePropertyChanged("Description");
            }

        }

        public string Description
        {
            get
            {
                string desc = $" {this.FirstName} {this.LastName} is in {Grade}";
                return desc;
            }

        }

    }
}
