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
            using (ConcessionariaDBEntities2 ctx = new ConcessionariaDBEntities2())
            {
                veiculos = ctx.veiculoes.ToList();
            }

            return veiculos;
        }
    }
}