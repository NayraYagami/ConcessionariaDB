using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class VeiculoDAO
    {
        internal static List<veiculo> listarVeiculos()
        {
            List<veiculo> veiculos = null;
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                veiculos = ctx.veiculoes.ToList();
            }

            return veiculos;
        }
    }
}