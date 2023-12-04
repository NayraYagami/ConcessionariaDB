using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
            var imgCarroAnuncioPath = "img/Imagens_Carros_Lv/" + queryString_ID + ".jpg";
            if (File.Exists(Server.MapPath(imgCarroAnuncioPath)))
            {
                imgCarroAnuncio.ImageUrl = ResolveUrl(imgCarroAnuncioPath);
            }
            else
            {
                imgCarroAnuncio.ImageUrl = "img/Imagens_Carros_Lv/ImagemIndisponivel.jpg";
            }

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

        protected string ImagePath(object idVeiculo)
        {
            string imagePath = $"img/Imagens_Carros_Lv/{idVeiculo}.jpg";

            if (!File.Exists(Server.MapPath(imagePath)))
            {
                imagePath = "img/Imagens_Carros_Lv/ImagemIndisponivel.jpg";
            }

            return imagePath;
        }

        protected void lvVeiculos_ItemDataBound1(object sender, ListViewItemEventArgs e)
        {

            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                var h5NomeCarroCard = (HtmlGenericControl)e.Item.FindControl("nomeCarroCard");

                var veiculo = (veiculo)e.Item.DataItem;

                string nomeCarro = preencherNomeCarroCard(veiculo.VersaoID);

                h5NomeCarroCard.InnerText = nomeCarro;
            }
        }

        private string preencherNomeCarroCard(int versaoId)
        {
            versao versao = VersaoDAO.buscarVersao(versaoId);
            modelo modelo = ModeloDAO.buscarModelo(versao.ModeloID);
            marca marca1 = MarcaDAO.buscarMarca(modelo.MarcaID);

            return marca1.Descricao + ' ' + modelo.Descricao + ' ' + versao.Descricao;
        }
    }
}