using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolDB
{
    internal class Student
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string SurName { get; set; }
        public string LastName { get; set; }
        public string GSM { get; set; }
        public string Email { get; set; }
        public string Adress { get; set; }
        public int Age { get; set; }
        public bool Gender { get; set; }
        public int ClassID { get; set; }
    }
}
