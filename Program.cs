using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolDB
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Speciality speciality1 = new Speciality("Programmer", "Includes coding with C#, SQL, HTML, JAVA etc.", "Proffesional Programmer", 8, 12);
            Speciality speciality2 = new Speciality("Mechanic", "Includes learning how to fix car, trucks etc.", "Proffesional Mechanic", 7, 12);
            Speciality speciality3 = new Speciality("Engineer", "Includes soldiring circuits and learning how electricity works", "Proffesional Engineer", 9, 12);

            Class class1 = new Class(10, 'B', 2);
            Class class2 = new Class(11, 'A', 1);

            Teacher teacher1 = new Teacher("Ognqn", "Ognqnov", true, "o.ognqnov@gmail.com", "Obektno Orientirano Programirane", 2);
            Teacher teacher2 = new Teacher("Gergana", "Ivanova", false, "g.ivanova34@gmail.com", "Avtomobilen mehanizum", 1);
            Teacher teacher3 = new Teacher("Aleksandur", "Aleksandrov", true, "a.aleksandr4@gmail.com", "Vgradeni sistemi", 2);

            Student studen1 = new Student("Simeon", "Ivanov", "Simeonov", "089 222 3145", "siv.simeonov@abv.bg", "Hristo Botev 8", 16, true, 2);
            Student studen2 = new Student("Petur", "Plamenov", "Hvurchilkov", "089 374 1009", "peturcho@gmail.com", "Suedinenie 48", 16, true, 1);
            Student studen3 = new Student("Georgi", "Manchev", "Nikolov", "089 121 2252", "goshko@abv.bg", "Hristo Botev 9", 17, true, 2);
            Student studen4 = new Student("Filip", "Totev", "Botev", "088 724 5047", "filipchu@yahoo.com", "Velika 24", 17, true, 2);
            Student studen5 = new Student("Boris", "Ivanov", "Dimitrov", "089 255 9345", "borko@abv.bg", "Georgi Rakovski 5", 15, true, 1);
            Student studen6 = new Student("Velislav", "Viktorov", "Dimanov", "089 109 8457", "dimanov@gmail.com", "Osvobojdenie 9", 17, true, 2);
            Student studen7 = new Student("Nikola", "Nikoslav", "Nikolov", "089 897 2390", "nikcho@abv.bg", "Hristo Botev 10", 15, true, 1);
            Student studen8 = new Student("Kamen", "Kamenov", "Hvurchilkov", "089 974 1294", "hvurchasht297@gmail.com", "Hadji Dimitar 2", 15, true, 1);
            Student studen9 = new Student("John", "Atanasov", "Beriev", "089 971 0938", "JAB23@gmail.com", "Amerika 25", 17, true, 2);
            Student studen10 = new Student("Simeon", "Krasimirof", "Petranov", "089 222 3145", "simeon.krasimirpetranovv@abv.bg", "Hristo Botev 8", 16, true, 1);
        
        }
    }

}
