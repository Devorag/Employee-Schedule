namespace OOPBasics
{
    public class Family
    {
        private Person _father;
        private Person _mother;

        public event EventHandler? FamilyChanged;

        public Person Father
        {
            get => _father;
            set
            {
                _father = value;
                FamilyChanged?.Invoke(this, new EventArgs());
            }
        }

        public Person Mother
        {
            get => _mother;
            set
            {
                _mother = value;
                FamilyChanged?.Invoke(this, new EventArgs());
            }
        }

        public List<Person> Children { get; private set; } = new();

        public void AddChild(Person person)
        {
            this.Children.Add(person);
            FamilyChanged?.Invoke(this, new EventArgs());
        }

        public List<Animal> Pets { get; private set; } = new();

        public void AddPet(Animal animal)
        {
            this.Pets.Add(animal);
            FamilyChanged?.Invoke(this, new EventArgs());
        }

        public string Description
        {
            get
            {
                string desc = "";

                desc = $"Father : {this.Father?.Description} Mother : {this.Mother?.Description}";
                this.Children.ForEach(c => desc = desc + Environment.NewLine + "Child :" + c.Description);
                this.Pets.ForEach(p => desc = desc + Environment.NewLine + p.AnimalType.ToString());

                return desc;
            }
        }
    }
}
