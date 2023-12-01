using System.Linq;

namespace Concessionaria
{
    internal class CombustivelDAO
    {
        internal static combustivel buscarCombustivel(int combustivelID)
        {
            var combustivel = new combustivel();

            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                combustivel = ctx.combustivels.FirstOrDefault(c => c.IdCombustivel == combustivelID); ;
            }
            return combustivel;
        }
    }
}