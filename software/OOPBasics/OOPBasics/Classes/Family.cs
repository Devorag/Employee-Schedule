using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Family
    {
        public Person Father { get; set; } 

        public Person Mother { get; set; }

        public List<Person> Children { get; private set; } = new();

        public void AddChild(Person person)
        {
            this.Children.Add(person);
        }

        public List<Animal> Pets { get; private set; } = new();

        public void AddPet(Animal animal)
        {
            this.Pets.Add(animal);
        }

        public string Description
        {
            get
            {
                string desc = "";

                desc = $"Father : {this.Father?.Description} Mother : {this.Mother.Description}";
                this.Children.ForEach(c => desc = desc + Environment.NewLine + "Child :" + c.Description);
                this.Pets.ForEach(p => desc = desc + Environment.NewLine + p.AnimalType.ToString());

                return desc;
            }
        }
    }
}
