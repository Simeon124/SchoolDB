using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolDB
{
    internal class Class
    {
        public int Id { get; set; }
        public int Grade { get; set; }
        public char GradeLetter { get; set; }
        public Speciality SpecialityId { get; set; }
    }
}
