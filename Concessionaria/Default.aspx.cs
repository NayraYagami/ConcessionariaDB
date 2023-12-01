using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Default : System.Web.UI.Page
    {
        private string diretorioImagens = "~/img/Imagens_Carousel/";
        private int qtdImagensCarousel;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<veiculo> veiculos = VeiculoDAO.ListarVeiculos();
                List<marca> marcas = MarcaDAO.ListarMarcas();
                List<modelo> modelos = ModeloDAO.ListarModelos();
                List<versao> versoes = VersaoDAO.ListarVersoes();
                AtualizarLvVeiculos(veiculos);
                PreencherDDLMarca(marcas);
                PreencherDDLModelo(modelos);
                PreencherDDLVersao(versoes);


                ContarImagensNoDiretorio();
            }
        }

        private void PreencherDDLVersao(List<versao> versoes)
        {
            DDLVersao.DataSource = versoes;
            DDLVersao.DataTextField = "Descricao";
            DDLVersao.DataValueField = "IdVersao";
            DDLVersao.DataBind();
            DDLVersao.Items.Insert(0, "VERSÃO");
        }

        private void PreencherDDLModelo(object modelos)
        {
            DDLModelo.DataSource = modelos;
            DDLModelo.DataTextField = "Descricao";
            DDLModelo.DataValueField = "IdModelo";
            DDLModelo.DataBind();
            DDLModelo.Items.Insert(0, "MODELO");
        }

        private void PreencherDDLMarca(List<marca> marcas)
        {
            DDLMarca.DataSource = marcas;
            DDLMarca.DataTextField = "Descricao";
            DDLMarca.DataValueField = "IdMarca";
            DDLMarca.DataBind();
            DDLMarca.Items.Insert(0, "MARCA");
        }

        protected int GetQtdImagensCarousel()
        {
            return qtdImagensCarousel;
        }

        protected void SetQtdImagensCarousel(int value)
        {
            qtdImagensCarousel = value;
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
                // Lidar com exceções, se necessário
            }
        }

        private void ContarImagensNoDiretorio()
        {
            try
            {
                string[] imagens = Directory.GetFiles(Server.MapPath(diretorioImagens));
                SetQtdImagensCarousel(imagens.Length);
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int idMarca = DDLMarca.SelectedIndex;
            int idModelo = DDLModelo.SelectedIndex;
            int idVersao = DDLVersao.SelectedIndex;
            bool novo = chkNovo.Checked;
            bool semiNovo = chkSeminovo.Checked;
            var inputFiltro = inputTextFiltro.Text;

            List<veiculo> veiculos = VeiculoDAO.Search(idMarca, idModelo, idVersao, novo, semiNovo, inputFiltro);

            lvVeiculos.DataSource = veiculos;
            lvVeiculos.DataBind();
        }

        protected void lvVeiculos_ItemDataBound1(object sender, ListViewItemEventArgs e)
        {

            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                // Acessar o controle h5 dentro do ItemDataBound
                var h5NomeCarroCard = (HtmlGenericControl)e.Item.FindControl("nomeCarroCard");

                // Exemplo: Acessar as propriedades do objeto veiculo
                var veiculo = (veiculo)e.Item.DataItem;

                int marca = veiculo.MarcaID;
                string modelo = veiculo.Quilometragem.ToString();

                string nomeCarro = preencherNomeCarroCard(marca);

                // Exemplo: Definir o conteúdo com base na marca e modelo
                h5NomeCarroCard.InnerText = $"Marca: {marca}, Modelo: {modelo}";
            }
        }

        private string preencherNomeCarroCard(int marca)
        {
            //marca marca1 = MarcaDAO.getMarcaById(marca);
            return null;
        }
    }
}
