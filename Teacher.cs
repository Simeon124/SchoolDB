using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolDB
{
    internal class Teacher
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool Gender { get; set; }
        public string Email { get; set; }
        public string Subjects { get; set; }
        public int ManagedClassId { get; set; }
    }
}
