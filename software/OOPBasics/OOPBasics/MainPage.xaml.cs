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

            DisplayValue(p.FirstName.Length.ToString());

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
            f.Father = new Person("Jones") { FirstName = "John", MiddleName = "Jack", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-35) };
            f.Mother = new Person() { FirstName = "Sue", LastName = "Smith", Gender = Person.GenderEnum.Female, DOB = DateTime.Now.AddYears(-34) };
            f.AddChild(new Person() { FirstName = "Adam", LastName="Smith", Gender = Person.GenderEnum.Male, Age = 1});
            f.AddChild(new Person() { FirstName = "Jane", LastName = "Smith", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-2) });
            f.AddPet(new Animal() { AnimalType = Animal.AnimalTypeEnum.Dog });
            DisplayValue(f.Description);
        }

        private void TeacherBtn_Clicked(object sender, EventArgs e)
        {
            Teacher t = new();
            t.Title = Teacher.TitleEnum.Morah;
            t.FirstName = "Chana";
            //t.LastName = "Green";
            t.MaidenName = "Klein";
            t.Subject = "Chumash";
            t.YearsTaught = 7;
            t.FirstDayTeaching = DateTime.Now.AddYears(-10);

            DisplayValue(t.LastName?.Length.ToString());

            Teacher t2 = new();
            t2.Title = Teacher.TitleEnum.Mrs;
            t2.FirstName = "Sarah";
            t2.LastName = "Stein";
            t2.MaidenName = "Avraham"; 
            t2.Subject = "Chemistry";
            t2.YearsTaught = 19;
            t2.FirstDayTeaching = DateTime.Now.AddYears(-3);

            DisplayTeacher(t);
            DisplayTeacher(t2);
        }

        private void SchoolBtn_Clicked(object sender, EventArgs e)
        {
            School s = new();
            s.AddTeacher(new Teacher("Munk") { Title = Teacher.TitleEnum.Morah, FirstName = "Chaya", MaidenName = "Goldberg", Subject = "Navi", FirstDayTeaching = DateTime.Now.AddYears(-12)});
            s.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Chava", LastName = "Levy", MaidenName = "Spira", Subject = "Math", FirstDayTeaching = DateTime.Now.AddYears(-7)});
            s.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Tzippora", LastName = "Kohn", MaidenName = "Freund", FirstDayTeaching = DateTime.Now.AddYears(-33)});
            s.AddStudent(new Student() { FirstName = "Miriam", LastName = "Gross", Grade = Student.StudentGradeEnum.Grade1});
            s.AddStudent(new Student() { FirstName = "Shana", LastName = "Mandel", Grade = Student.StudentGradeEnum.Grade3 });
            s.AddStudent(new Student() { FirstName = "Liba", LastName = "Ungar", Grade = Student.StudentGradeEnum.Grade11 });

            DisplayValue(s.Description);
        }
    }

}
