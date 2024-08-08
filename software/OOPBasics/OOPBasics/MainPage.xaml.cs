namespace OOPBasics
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
        }

        private void PersonBtn_Clicked(object sender, EventArgs e)
        {
            Person p = new();
            p.FirstName = "John";
            p.LastName = "Smith";
            p.Gender = Person.GenderEnum.Male;
            p.DOB = DateTime.Now.AddYears(-20);

            Person p2 = new();
            p2.FirstName = "Sue";
            p2.LastName = "Jones";
            p2.Gender = Person.GenderEnum.Female;
            p2.DOB = DateTime.Now.AddYears(-50);

            DisplayPerson(p);
            DisplayPerson(p2);
        }

        private void DisplayPerson(Person person)
        {
            DisplayValue(person.Description);
        }

        private void DisplayValue(string value)
        {
            DisplayLbl.Text = DisplayLbl.Text + Environment.NewLine + "------------" + Environment.NewLine + value;
        }

        private void DisplayTeacher(Teacher teacher)
        {
            DisplayValue(teacher.Description);
        }

        private void FamilyBtn_Clicked(object sender, EventArgs e)
        {
            Family f = new Family();
            f.Father = new Person() { FirstName = "John", LastName = "Smith", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-35) };
            f.Mother = new Person() { FirstName = "Sue", LastName = "Smith", Gender = Person.GenderEnum.Female, DOB = DateTime.Now.AddYears(-34) };
            f.AddChild(new Person() { FirstName = "Adam", LastName="Smith", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-2)});
            f.AddChild(new Person() { FirstName = "Jane", LastName = "Smith", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-2) });
            f.AddPet(new Animal() { AnimalType = Animal.AnimalTypeEnum.Dog });
            DisplayValue(f.Description);
        }

        private void TeacherBtn_Clicked(object sender, EventArgs e)
        {
            Teacher t = new();
            t.Title = Teacher.TitleEnum.Morah;
            t.FirstName = "Chana";
            t.LastName = "Green";
            t.Subject = "Chumash";

            Teacher t2 = new();
            t2.Title = Teacher.TitleEnum.Mrs;
            t2.FirstName = "Sarah";
            t2.LastName = "Stein";
            t2.Subject = "Chemistry";

            DisplayTeacher(t);
            DisplayTeacher(t2);
        }

        private void SchoolBtn_Clicked(object sender, EventArgs e)
        {
            School s = new();
            s.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Morah, FirstName = "Chaya", LastName = "Munk", Subject = "Navi"});
            s.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Chava", LastName = "Levy", Subject = "Math" });
            s.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Tzippora", LastName = "Kohn", Subject = "History" });
            s.AddStudent(new Student() { FirstName = "Miriam", LastName = "Gross", Grade = Student.StudentGradeEnum.Grade1});
            s.AddStudent(new Student() { FirstName = "Shana", LastName = "Mandel", Grade = Student.StudentGradeEnum.Grade3 });
            s.AddStudent(new Student() { FirstName = "Liba", LastName = "Ungar", Grade = Student.StudentGradeEnum.Grade11 });

            DisplayValue(s.Description);
        }
    }

}
