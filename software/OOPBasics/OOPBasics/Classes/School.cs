namespace OOPBasics
{
    public class School
    {
        public EventHandler? SchoolChanged;

        public List<Teacher> Teacher { get; set; } = new();
        public void AddTeacher(Teacher teacher)
        {
            this.Teacher.Add(teacher);
            SchoolChanged?.Invoke(this, new EventArgs());
        }

        public List<Student> Student { get; set; } = new();

        public void AddStudent(Student student)
        {
            this.Student.Add(student);
            SchoolChanged?.Invoke(this, new EventArgs());
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
