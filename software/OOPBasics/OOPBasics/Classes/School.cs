using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class School
    {

        public List<Teacher> Teacher { get; set; } = new();
        public void AddTeacher(Teacher teacher)
        {
            this.Teacher.Add(teacher);
        }

        public List<Student> Student { get; set; } = new();

        public void AddStudent(Student student)
        {
            this.Student.Add(student);
        }
        public string Description
        {
            get
            {
                string desc = "";

                this.Teacher.ForEach(t => desc = desc + Environment.NewLine + "Teacher :" + t.Description);
                this.Student.ForEach(s => desc = desc + Environment.NewLine + "Student :" + s.Description);

                return desc;
            }
        }
    }
}
