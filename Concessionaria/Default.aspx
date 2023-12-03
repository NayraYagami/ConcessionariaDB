<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Concessionaria.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/estilo.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Concessionária</title>
</head>
<body>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@600;700&display=swap');
    </style>
    <div id="msgTopoTela" style="text-align: center; background-color: #19467E; color: #f7f9fb; font-family: 'Inter', sans-serif;">CONTE COM QUEM MAIS AMA E ENTENDE DE CARROS</div>
    <!-- Header -->
    <div class="container header">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap" />
                </svg>
                <span class="fs-4">
                    <img id="logoTopoPagina" src="img/logotipo_ofc.png" />
                </span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="#" class="nav-link" aria-current="page" style="color: #19467E;">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link" style="color: #19467E;">Veiculos</a></li>
                <li class="nav-item"><a href="#" class="nav-link" style="color: #19467E;">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link" style="color: #19467E;">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link" style="color: #19467E;">About</a></li>
            </ul>
        </header>
    </div>
    <!-- Header -->

    <!-- Body -->

    <!-- Carousel -->
    <div class="container">
        <div id="Carousel" class="carousel slide" data-bs-ride="carousel">
            <!-- Conta quantas imagens tem no carousel para exibir a quantidade certa nos 'tracinhos' -->
            <ol class="carousel-indicators">
                <% for (int i = 0; i < GetQtdImagensCarousel(); i++)
                    { %>
                <li data-bs-target="#Carousel" data-bs-slide-to="<%= i %>" <% if (i == 0)
                    { %>
                    class="active" <% } %>></li>
                <% } %>
            </ol>
            <%-- Para ficar com o tamanho certo basta colocar a imagem com o tamanho certo, esta formatado para ficar com o tamanho da imagem
                a ultima imagem é um teste que coloquei para ver como ficaria com um banner, creio que a ideia do carousel, no lugar e do jeito
                que está especificamente, seja essa (usar com banners) --%>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/Imagens_Carousel/BannerBlackWeek.png" alt="Banner Black Week" />
                </div>
                <div class="carousel-item">
                    <img src="img/Imagens_Carousel/bannerPropaganda.png" alt="Banner de Propaganda" />
                </div>
                <div class="carousel-item">
                    <img src="img/Imagens_Carousel/BannerBlackNovember.png" alt="Banner Black November" />
                </div>
                <div class="carousel-item">
                    <img src="img/Imagens_Carousel/blackNovember.png" alt="Banner Black November" />
                </div>
                <div class="carousel-item">
                    <img src="img/Imagens_Carousel/Contato.png" />
                </div>
            </div>
            <!-- Left and right controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#Carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#Carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel -->

    <!-- Filtros -->
    <div class="container">
        <div class="pesquisaMarca pesquisaFiltro">
            <h2 class="marca">NAVEGUE POR NOSSAS MARCAS</h2>
            <div class="exibeMarcas">
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_fiat.svg" alt="FIAT" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_honda.svg" alt="HONDA" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_ford.svg" alt="FORD" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_nissan.svg" alt="NISSAN" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_renault.svg" alt="RENAULT" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_hyundai.svg" alt="HYUNDAI" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_ram.svg" alt="RAM" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_jeep.svg" alt="JEEP" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_peugeot.svg" alt="PEUGEOT" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_citroen.svg" alt="CITROEN" style="width: 4%;" />
                <img class="imgMarcas" src="img/Logo_MarcaCarro/logo_kia.svg" alt="KIA" style="width: 4%;" />
            </div>
            <div class="buscarCarro">
                <h2 class="filtro">ENCONTRE SEU VEÍCULO</h2>
                <form runat="server">
                    <div class="filtros">
                        <div class="filtroSelect">

                            <asp:DropDownList runat="server" ID="DDLMarca">
                            </asp:DropDownList>

                            <asp:DropDownList runat="server" ID="DDLModelo">
                            </asp:DropDownList>

                            <asp:DropDownList runat="server" ID="DDLVersao">
                            </asp:DropDownList>

                        </div>
                        <div class="filtroTexto">
                            <asp:TextBox runat="server" class="inputFiltro" ID="inputTextFiltro" placeholder="Busque por marca ou modelo do carro" />
                        </div>
                    </div>
                    <div class="btnSubmit">
                        <div class="checkBox">
                            <asp:CheckBox ID="chkNovo" runat="server" Checked="true" />
                            Novo
                            <asp:CheckBox ID="chkSeminovo" runat="server" Checked="true" />
                            Seminovo 
                        </div>
                        <div class="submit">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Ver Veículos" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Filtros -->

    <!-- produtos -->
    <div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="titulo-veiculos">Usados</h1>
                </div>
            </div>
            <div class="row">
                <asp:ListView runat="server" ID="lvVeiculos" OnItemDataBound="lvVeiculos_ItemDataBound1">
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <a class="img-veiculo" href='<%# "Detalhes.aspx?id=" + Eval("IdVeiculo") %>'>
                                    <img src='<%# ImagePath(Eval("IdVeiculo")) %>' class="img-veiculo card-img-top" alt="Imagem do veículo <%# Eval ("Descricao") %>">
                                </a>
                                <a href="#" class="btn btn-primary" style="background-color: #19467e; border-color: #19467e;">Ver Parcelas</a>
                                <div class="card-body">
                                    <h5 class="card-title" id="nomeCarroCard" runat="server"></h5>
                                    <p class="card-text"><%# Eval ("Quilometragem") %> KM / <%# Eval ("AnoModelo") %> / <%# Eval ("AnoFabricacao") %> </p>
                                    <h3>R$ <%# Eval ("PrecoNormal") %></h3>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

            </div>
        </div>
    </div>
    <!-- Produtos -->

    <!-- Body -->

    <!-- Footer -->
    <div class="container">
        <footer class="py-5">
            <div class="row">
                <div class="col-6 col-md-2 mb-3">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
                    </ul>
                </div>

                <div class="col-md-5 offset-md-1 mb-3">
                    <form>
                        <h5>Subscribe to our newsletter</h5>
                        <p>Monthly digest of what's new and exciting from us.</p>
                        <div class="d-flex flex-column flex-sm-row w-100 gap-2">
                            <label for="newsletter1" class="visually-hidden">Email address</label>
                            <input id="newsletter1" type="text" class="form-control" placeholder="Email address" />
                            <button class="btn btn-primary" type="button">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
                <p>&copy; 2023 Company, Inc. All rights reserved.</p>
            </div>
        </footer>
    </div>
    <!-- Footer -->
</body>
</html>
