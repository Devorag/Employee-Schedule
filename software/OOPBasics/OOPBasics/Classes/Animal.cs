using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Animal : Creature<Animal>
    {
        AnimalTypeEnum _animaltype;
        public Animal() : base(GenderEnum.Unknown)
        {

        }
        public enum AnimalTypeEnum { Cat, Dog }

        public AnimalTypeEnum AnimalType
        {
            get => _animaltype;
            set
            {
                _animaltype = value;
                this.InvokePropertyChanged();
                this.InvokePropertyChanged("Description");
            }

        }

        public string Description { get => $"{this.AnimalType.ToString()} {this.Age} {this.Gender.ToString()}"; }
    }
}
