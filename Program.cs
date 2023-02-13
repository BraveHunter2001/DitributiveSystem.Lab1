using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Xsl;

namespace DitributiveSystem.Lab1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int numOfTask = 7;
            string path = $"C:\\Users\\Ilya\\source\\repos\\DitributiveSystem.Lab1\\Task{numOfTask}\\";


            //Create a new XslCompiledTransform and load the compiled transformation.
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(System.Reflection.Assembly.Load($"task{numOfTask}").GetType($"task{numOfTask}"));

            // Execute the transformation and output the results to a file.
            xslt.Transform($"{path}task{numOfTask}.xml", $"{path}task{numOfTask}.html");
        }
    }
}
