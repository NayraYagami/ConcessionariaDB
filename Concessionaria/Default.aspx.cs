using System;
using System.Collections.Generic;
using System.IO;

namespace Concessionaria
{
    public partial class Default : System.Web.UI.Page
    {
        private string diretorioImagens = "~/img/Imagens_Carousel/"; 
        private int qtdImagensCarousel;

        protected int GetQtdImagensCarousel()
        {
            return qtdImagensCarousel;
        }

        protected void SetQtdImagensCarousel(int value)
        {
            qtdImagensCarousel = value;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<veiculo> veiculos = VeiculoDAO.listarVeiculos();
                AtualizarLvVeiculos(veiculos);

                // Chama o método para contar a quantidade de imagens
                ContarImagensNoDiretorio();
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
    }
}
