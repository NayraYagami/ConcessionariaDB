using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class MarcaDAO
    {
        internal static List<marca> ListarMarcas()
        {
            List<marca> marcas = null;
            try
            {
                using (var ctx = new ConcessionariaDBEntities3())
                {
                    marcas = ctx.marcas.OrderBy(
                        x => x.Descricao).ToList();
                }
            }
            catch (Exception ex)
            {
            }
            return marcas;
        }

        internal static marca buscarMarca(int marcaId)
        {
            var marca = new marca();
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                marca = ctx.marcas.FirstOrDefault(m => m.IdMarca == marcaId); ;
            }
            return marca;
        }
    }
}