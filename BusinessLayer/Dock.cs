using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class Dock
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string WaterService { get; set; }
        public string ElectricalService { get; set; }
        /*public string DocksLoad(int id)
        {
            return 
        }*/

        public override string ToString()
        {
            return Name;
        }
    }
}
