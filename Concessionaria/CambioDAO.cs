using System;
using System.Linq;

namespace Concessionaria
{
    internal class CambioDAO
    {
        internal static cambio buscarCambio(int cambioID)
        {
            var cambio = new cambio();
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                cambio = ctx.cambios.FirstOrDefault(c => c.IdCambio == cambioID); ;
            }
            return cambio;
        }
    }
}