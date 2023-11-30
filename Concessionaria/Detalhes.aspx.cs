using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<veiculo> veiculos = VeiculoDAO.ListarVeiculos();
            AtualizarLvVeiculos(veiculos);
            int queryString_ID = Convert.ToInt32(Request.QueryString["id"]);
            var veiculo = new veiculo();
            veiculo = VeiculoDAO.GetById(queryString_ID);
            popularAnuncio(veiculo);

        }

        private void popularAnuncio(veiculo veiculo)
        {
            
            if (veiculo != null)
            {
                precoVeiculoAnuncio.InnerText = "R$ " + veiculo.PrecoNormal.ToString();
                AnoFabricacaoCarroAnuncio.InnerText = veiculo.AnoFabricacao.ToString();
                CorCarroAnuncio.InnerText = CorDAO.buscarCor(veiculo.CorID).Nome;
                CombustivelCarroAnuncio.InnerText = CombustivelDAO.buscarCombustivel(veiculo.CombustivelID).Descricao;
                QuilometragemCarroAnuncio.InnerText = veiculo.Quilometragem.ToString() + " KM";
                CambioCarroAnuncio.InnerText = CambioDAO.buscarCambio(veiculo.CambioID).Descricao;
                var finalPlaca = veiculo.Placa[veiculo.Placa.Length - 1];
                PlacaCarroAnuncio.InnerText = finalPlaca.ToString();
                DescricaoCarroAnuncio.InnerText = veiculo.Descricao.ToString();
            }
        }

        private void AtualizarLvVeiculos(List<veiculo> veiculos)
        {
            try
            {
                lvVeiculos.DataSource = veiculos;
                lvVeiculos.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
    }
}