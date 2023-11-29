using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class VeiculoDAO
    {
        internal static List<veiculo> ListarVeiculos()
        {
            List<veiculo> veiculos = null;
            using (ConcessionariaDBEntities3 ctx = new ConcessionariaDBEntities3())
            {
                veiculos = ctx.veiculoes.ToList();
            }

            return veiculos;
        }

        internal static List<veiculo> Search(int idMarca, int idModelo, int idVersao, bool novo, bool semiNovo, string inputFiltro)
        {
            List<veiculo> veiculos = ListarVeiculos();

            if (idMarca != 0)
            {
                veiculos = veiculos.Where(v => v.MarcaID == idMarca).ToList();
            }

            //if (idModelo != 0)
            //{
            //    veiculos = veiculos.Where(v => v. == idModelo).ToList();
            //}

            if (idVersao != 0)
            {
                veiculos = veiculos.Where(v => v.VersaoID == idVersao).ToList();
            }

            if (novo && semiNovo)
            {

            }

            else if (novo)
            {
                veiculos = veiculos.Where(v => v.Quilometragem == 0).ToList();
            }

            else if (semiNovo)
            {
                veiculos = veiculos.Where(v => v.Quilometragem > 0).ToList();
            }

            if (!string.IsNullOrWhiteSpace(inputFiltro))
            {
                var marcas = MarcaDAO.ListarMarcas();
                var modelos = ModeloDAO.ListarModelos();

                veiculos = veiculos
                    .Where(v =>
                        marcas.Any(m => m.IdMarca == v.MarcaID && m.Descricao != null && m.Descricao.IndexOf(inputFiltro, StringComparison.OrdinalIgnoreCase) >= 0)).ToList();
            }

            return veiculos;

        }
    }
}