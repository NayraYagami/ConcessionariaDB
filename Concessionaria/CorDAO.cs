using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class CorDAO
    {
        internal static cor buscarCor(int corID)
        {
            var cor = new cor();
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                cor = ctx.cors.FirstOrDefault(c => c.IdCor == corID); ;
            }
            return cor;
        }

        //internal static List<cor> ListarCores()
        //{
        //    List<cor> cores = null;
        //    using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
        //    {
        //        cores = ctx.cors.ToList();
        //    }

        //    return cores;
        //}
    }
}