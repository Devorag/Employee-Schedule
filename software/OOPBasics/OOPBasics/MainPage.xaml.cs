namespace OOPBasics
{
    public partial class MainPage : ContentPage
    {
        Family Family = new Family();
        Person Person = new Person();
        School school = new School();
        Teacher teacher = new Teacher();
        public MainPage()
        {
            InitializeComponent();
            Family.FamilyChanged += Family_FamilyChanged;
            school.SchoolChanged += School_SchoolChanged;
        }

        private void School_SchoolChanged(object? sender, EventArgs e)
        {
            DisplayValue(school.Description);
        }

        private void Family_FamilyChanged(object? sender, EventArgs e)
        {
            DisplayValue(Family.Description);
        }

        private void PersonBtn_Clicked(object sender, EventArgs e)
        {
            Person p = new();
            p.FirstName = "John";
            p.LastName = "Smith";
            p.Gender = Person.GenderEnum.Male;
            p.DOB = DateTime.Now.AddYears(-20);

            //DisplayValue(p.FirstName.Length.ToString());

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

            Family.Father = new Person("Jones") { FirstName = "John", MiddleName = "Jack", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-35) };
            Family.Mother = new Person() { FirstName = "Sue", LastName = "Smith", Gender = Person.GenderEnum.Female, DOB = DateTime.Now.AddYears(-34) };
            Family.AddChild(new Person() { FirstName = "Adam", LastName="Smith", Gender = Person.GenderEnum.Male, Age = 1});
            Family.AddChild(new Person() { FirstName = "Jane", LastName = "Smith", Gender = Person.GenderEnum.Male, DOB = DateTime.Now.AddYears(-2) });
            Family.AddPet(new Animal() { AnimalType = Animal.AnimalTypeEnum.Dog });

        }

        private void TeacherBtn_Clicked(object sender, EventArgs e)
        {
            Teacher t = new();
            t.Title = Teacher.TitleEnum.Morah;
            t.FirstName = "Chana";
            t.tLastName = "Green";
            t.MaidenName = "Klein";
            t.Subject = "Chumash";
            t.YearsTaught = 7;
            t.FirstDayTeaching = DateTime.Now.AddYears(-10);

            Teacher t2 = new();
            t2.Title = Teacher.TitleEnum.Mrs;
            t2.FirstName = "Sarah";
            t2.tLastName = "Stein";
            t2.MaidenName = "Avraham"; 
            t2.Subject = "Chemistry";
            t2.YearsTaught = 19;
            t2.FirstDayTeaching = DateTime.Now.AddYears(-3);

            DisplayTeacher(t);
            DisplayTeacher(t2);
        }

        private void SchoolBtn_Clicked(object sender, EventArgs e)
        {
            school.AddTeacher(new Teacher("Munk") { Title = Teacher.TitleEnum.Morah, FirstName = "Chaya", MaidenName = "Goldberg", Subject = "Navi", FirstDayTeaching = DateTime.Now.AddYears(-12)});
            school.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Chava", tLastName = "Levy", MaidenName = "Spira", Subject = "Math", FirstDayTeaching = DateTime.Now.AddYears(-7)});
            school.AddTeacher(new Teacher() { Title = Teacher.TitleEnum.Mrs, FirstName = "Tzippora", tLastName = "Kohn", MaidenName = "Freund", FirstDayTeaching = DateTime.Now.AddYears(-33)});
            school.AddStudent(new Student() { FirstName = "Miriam", LastName = "Gross", Grade = Student.StudentGradeEnum.Grade1});
            school.AddStudent(new Student() { FirstName = "Shana", LastName = "Mandel", Grade = Student.StudentGradeEnum.Grade3 });
            school.AddStudent(new Student() { FirstName = "Liba", LastName = "Ungar", Grade = Student.StudentGradeEnum.Grade11 });
        }

        private void BindBtn_Clicked(object sender, EventArgs e)
        {
            this.BindingContext = Person;
            Person.FirstName = "John " + DateTime.Now.Millisecond;
            Person.LastName = "Smith " + DateTime.Now.Millisecond;
        }

        private void BindSchoolBtn_Clicked(object sender, EventArgs e)
        {
            this.BindingContext = teacher;
            teacher.tLastName = "Snow " + DateTime.Now.Millisecond;
            teacher.Subject = "Grammar " + DateTime.Now.Millisecond; 
        }
    }

}
