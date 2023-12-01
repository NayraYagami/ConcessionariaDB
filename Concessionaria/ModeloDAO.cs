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

        internal static modelo buscarModelo(int modeloID)
        {
            var modelo = new modelo();
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                modelo = ctx.modeloes.FirstOrDefault(m => m.IdModelo == modeloID); ;
            }
            return modelo;
        }
    }
}