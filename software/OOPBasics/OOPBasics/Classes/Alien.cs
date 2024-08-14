using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Alien : Creature
    {
        public enum PlanetEnum { Jupiter, Mars, Venus}

        public PlanetEnum Planet { get; set; }

        public string Description { get => $"{this.Planet.ToString()} {this.Gender} {this.Age}"; }
    }
}
