
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPBasics
{
    public class Teacher
    {
        public enum TitleEnum { Morah, Mrs };
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";

        public TitleEnum Title { get; set; } = TitleEnum.Mrs;

        public string Subject { get; set; } = "";

        public string Description
        {
            get
            {
                string desc = $" {this.Title} {this.FirstName} {this.LastName} teaches {this.Subject}";

                return desc;
            }

        }
    }
}
