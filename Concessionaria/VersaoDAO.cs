using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class VersaoDAO
    {
        internal static List<versao> ListarVersoes()
        {
            List<versao> versoes = null;
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                versoes = ctx.versaos.ToList();
            }

            return versoes;
        }

        internal static versao buscarVersao(int versaoId)
        {
            var versao = new versao();
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                versao = ctx.versaos.FirstOrDefault(v => v.IdVersao == versaoId); ;
            }
            return versao;
        }
    }
}