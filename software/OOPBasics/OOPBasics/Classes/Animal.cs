using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Animal : Creature
    {   
        public Animal() : base(GenderEnum.Unknown)
        {

        }
        public enum AnimalTypeEnum { Cat, Dog}

        public AnimalTypeEnum AnimalType { get; set; }

        public string Description { get => $"{this.AnimalType.ToString()} {this.Age} {this.Gender.ToString()}"; }
    }
}
