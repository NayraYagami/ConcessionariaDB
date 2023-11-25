using System;
using System.Collections.Generic;
using System.IO;

namespace Concessionaria
{
    public partial class Default : System.Web.UI.Page
    {
        private string diretorioImagens = "~/img";
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

            }
        }

        private void ContarImagensNoDiretorio()
        {
            try
            {
                /* Lista de imagens (conta arquivos jpg, talez criar um arquivo para imagens somente do carousel 
                ou trocar a logica para contar as imagens). Uma possibilidade é deixar o formato jpg só para o 
                carousel (não acho tão interessante, mas funcionaria) */
                string[] imagens = Directory.GetFiles(Server.MapPath(diretorioImagens), "*.jpg");
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
    }
}
