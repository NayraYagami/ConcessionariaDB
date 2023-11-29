using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class ModeloDAO
    {
        internal static List<modelo> ListarModelos()
        {
            List<modelo> modelos = null;
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                modelos = ctx.modeloes.ToList();
            }

            return modelos;
        }
    }
}