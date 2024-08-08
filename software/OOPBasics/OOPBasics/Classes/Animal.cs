using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Animal
    {
        public enum AnimalTypeEnum { Cat, Dog}

        public AnimalTypeEnum AnimalType { get; set; }
    }
}
