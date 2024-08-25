using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Alien : Creature<Alien>
    {
        PlanetEnum _planet;
        public enum PlanetEnum { Jupiter, Mars, Venus }

        public PlanetEnum Planet
        {
            get => _planet;
            set 
            {
                _planet = value;
                this.InvokePropertyChanged();
                this.InvokePropertyChanged("Description");
            }
        }

        public string Description { get => $"{this.Planet.ToString()} {this.Gender} {this.Age}"; }
    }
}
