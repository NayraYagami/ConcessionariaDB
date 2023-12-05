<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Concessionaria.Detalhes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/TelaDetalhes.css" rel="stylesheet" />
    <link href="css/estilo.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
                <svg class="bi me-2" height="32">
                    <use xlink:href="#bootstrap" />
                </svg>
                <span class="fs-4">
                    <img id="logoTopoPagina" src="img/logotipo_ofc.png" />
                </span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="Default.aspx" class="nav-link" aria-current="page" style="color: #19467E;">Página Inicial</a></li>
                <li class="nav-item"><a href="Default.aspx#secaoVeiculos" class="nav-link" style="color: #19467E;">Veiculos</a></li>
                <li class="nav-item"><a href="Default.aspx#buscarCarro" class="nav-link" style="color: #19467E;">Filtros</a></li>
            </ul>
        </header>
    </div>
    <!-- Header -->

    <!-- Body -->
    <%-- Tela de Detalhes do Carro --%>
    <form method="post" runat="server">
        <div class="container">
            <div class="col-12">
                <section>
                    <div class="DetalhesCarro">
                        <%-- Detalhes do Carro --%>
                        <div class="ImgCarro">
                            <asp:Image ID="imgCarroAnuncio" runat="server" AlternateText="Imagens do Carro ainda não foram incluídas no anúncio! Em breve atualizaremos o anúncio com as imagens." />
                        </div>                       
                        <div class="TituloAnuncio">
                            <h5></h5>
                        </div>
                        <div class="DadosCarro">
                            <div class="AnoFabricacaoCarro">
                                <p>Ano de Fabricação </p>
                                <h5 id="AnoFabricacaoCarroAnuncio" runat="server" />
                            </div>
                            <div class="CorCarro">
                                <p>Cor </p>
                                <h5 id="CorCarroAnuncio" runat="server" />
                            </div>
                            <div class="CombustivelCarro">
                                <p>Combustível </p>
                                <h5 id="CombustivelCarroAnuncio" runat="server" />
                            </div>
                            <div class="QuilometragemCarro">
                                <p>Quilometragem </p>
                                <h5 id="QuilometragemCarroAnuncio" runat="server" />
                            </div>
                            <div class="CambioCarro">
                                <p>Câmbio </p>
                                <h5 id="CambioCarroAnuncio" runat="server" />
                            </div>
                            <div class="PlacaCarro">
                                <p>Final da Placa </p>
                                <h5 id="PlacaCarroAnuncio" runat="server" />
                            </div>
                        </div>
                        <div class="descricaoCarro">
                            <h5>Descrição </h5>
                            <p id="DescricaoCarroAnuncio" runat="server" />
                        </div>
                        <%-- Detalhes do Carro --%>
                    </div>
                    <div class="SimulaParcelas">
                        <%-- Simula Parcelas --%>
                        <small class="Parcelas">Parcelas</small>
                        <h4 class="TituloSimulaParcela">Simule as parcelas!</h4>
                        <small class="CampoObrigatorio">Todos os campos são obrigatórios</small>
                        <div class="UsuarioSimulaParcelas">
                            <asp:Label ID="lblNome" runat="server">
                                <input id="Nome" type="text" placeholder="Nome*" runat="server" />
                            </asp:Label>
                            <asp:Label ID="lblEmail" runat="server">
                                <input id="Email" type="email" placeholder="E-mail*" runat="server" />
                            </asp:Label>
                        </div>
                        <div class="UsuarioSimulaParcelas">
                            <asp:Label ID="lblCpf" runat="server">
                                <input id="Cpf" type="text" placeholder="CPF ou CNPJ*" runat="server" />
                            </asp:Label>
                            <asp:Label ID="lblTelefone" runat="server" type="tel">
                                <input id="Telefone" type="tel" placeholder="Telefone*" runat="server" />
                            </asp:Label>
                        </div>
                        <%-- Simula Parcelas --%>

                        <div class="checkboxConcorda">
                            <asp:Label ID="lblConcorda" runat="server">
                                <asp:CheckBox ID="ckbConcorda" runat="server" />
                                <p class="TermoSimulaParcela">Concordo e estou ciente que esta é uma calculadora de simulação de financiamento e não corresponde ao valor real das parcelas mensais.</p>
                            </asp:Label>
                        </div>
                        <div class="btnSimularParcelasAnuncio">
                            <asp:Button ID="btnSimularParcelas" runat="server" Text="Simular Parcelas" />
                        </div>
                    </div>
                </section>
                <div class="SideContatoVendedor">
                    <section class="ContatoVendedorAnuncio">
                        <div class="ContatoVendedor">
                            <%-- Contato com Vendedor --%>
                            <div class="PrecoSubtitulo">
                                <h3 id="precoVeiculoAnuncio" runat="server"></h3>
                                <div class="btnVerParcelas">
                                    <asp:Button ID="btnVerParcelas" runat="server" Text="Ver Parcelas" />
                                </div>
                            </div>
                            <small class="msgContato">Entre em contato com um vendedor</small>
                            <asp:Label ID="lblNomeContatoVendedor" runat="server">
                                <input id="NomeContatoVendedor" type="text" placeholder="Nome*" runat="server" />
                            </asp:Label>
                            <asp:Label ID="lblEmailContatoVendedor" runat="server">
                                <input id="EmailContatoVendedor" type="email" placeholder="E-mail*" runat="server" />
                            </asp:Label>
                            <asp:Label ID="lblCpfContatoVendedor" runat="server">
                                <input id="CpfContatoVendedor" type="text" placeholder="CPF ou CNPJ*" runat="server" />
                            </asp:Label>
                            <asp:Label ID="lblTelefoneContatoVendedor" runat="server" type="tel" />
                            <input id="TelContatoVendedor" type="tel" placeholder="Telefone*" runat="server" />
                            <select class="SelecionaLoja">
                                <option value="value">Loja</option>
                            </select>
                            <div class="btnEnviarMensagem">
                                <asp:Button ID="btnEnviarMensagem" runat="server" Text="Enviar Mensagem" />
                            </div>
                            <%-- Contato com Vendedor --%>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </form>
    <%-- Tela de Detalhes do Carro --%>

    <!-- produtos -->
    <div>
        <div id="secaoVeiculos" class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="titulo-veiculos">Veículos</h1>
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
                    <h5>Mini Menu</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a href="#" class="nav-link" aria-current="page" style="color: #19467E;">Home</a></li>
                        <li class="nav-item"><a href="Default.aspx#secaoVeiculos" class="nav-link" style="color: #19467E;">Veiculos</a></li>
                    </ul>
                </div>

                <div class="col-md-5 offset-md-1 mb-3">
                    <form>
                        <h5>Inscreva-se em nosso canal</h5>
                        <p>Nossas novidades diretamente para sua caixa de email ;)</p>
                        <div class="d-flex flex-column flex-sm-row w-100 gap-2">
                            <label for="newsletter1" class="visually-hidden">Endereço de email</label>
                            <input id="newsletter1" type="text" class="form-control" placeholder="Endereço de email" />
                            <button class="btn btn-primary" style="background-color: #19467E; border-color: #19467E;" type="button">Inscrever</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
                <p>&copy; Todos os direitos reservados.</p>
            </div>
        </footer>
    </div>
    <!-- Footer -->
</body>
</html>
