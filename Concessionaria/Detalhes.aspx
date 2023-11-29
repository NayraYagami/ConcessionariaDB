<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Concessionaria.Detalhes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap" />
                </svg>
                <span class="fs-4">
                    <img id="logoTopoPagina" src="img/logotipo_ofc.png" />
                </span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Veiculos</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link">About</a></li>
            </ul>
        </header>
    </div>
    <!-- Header -->

    <!-- Body -->
    <%--Tela de Detalhes do Carro--%>
    <form method="post" runat="server">
        <div class="container">
            <div class="col-12">
                <section>
                    <div class="DetalhesCarro">
                        <%-- Detalhes do Carro --%>

                        <%-- Detalhes do Carro --%>
                    </div>
                    <div class="SimulaParcelas">
                        <%-- Simula Parcelas --%>
                        <small>Parcelas</small>
                        <strong>Simule as parcelas!</strong>
                        <p>Todos os campos são obrigatórios</p>
                        <asp:Label ID="lblNome" runat="server">
                            <input id="Nome" type="text" required="required" placeholder="Nome*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblEmail" runat="server">
                            <input id="Email" type="email" required="required" placeholder="E-mail*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblCpf" runat="server">
                            <input id="Cpf" type="text" required="required" placeholder="CPF ou CNPJ*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblTelefone" runat="server" type="tel">
                            <input id="Telefone" type="tel" required="required" placeholder="Telefone*" runat="server" />
                        </asp:Label>
                        <%-- Simula Parcelas --%>
                    </div>
                    <div class="checkboxConcorda">
                        <asp:Label ID="lblConcorda" runat="server">
                            <asp:CheckBox ID="ckbConcorda" runat="server" required="required" />
                            <p>Concordo e estou ciente que esta é uma calculadora de simulação de financiamento e não corresponde ao valor real das parcelas mensais.</p>
                        </asp:Label>
                    </div>
                    <div>
                        <asp:Button ID="btnSimularParcelas" runat="server" Text="Simular Parcelas" />
                    </div>
                </section>
                <section>
                    <div class="ContatoVendedor">
                        <%--Contato com Vendedor--%>
                        <h3>R$ <%# Eval ("PrecoNormal") %></h3>
                        <asp:Button ID="btnVerParcelas" runat="server" Text="Ver Parcelas" />
                        <small>Entre em contato com um vendedor</small>
                        <asp:Label ID="lblNomeContatoVendedor" runat="server">
                            <input id="NomeContatoVendedor" type="text" required="required" placeholder="Nome*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblEmailContatoVendedor" runat="server">
                            <input id="EmailContatoVendedor" type="email" required="required" placeholder="E-mail*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblCpfContatoVendedor" runat="server">
                            <input id="CpfContatoVendedor" type="text" required="required" placeholder="CPF ou CNPJ*" runat="server" />
                        </asp:Label>
                        <asp:Label ID="lblTelefoneContatoVendedor" runat="server" type="tel">
                            <input id="TelContatoVendedor" type="tel" required="required" placeholder="Telefone*" runat="server" />
                        </asp:Label>
                        <select>
                            <option value="value">Loja</option>
                        </select>
                        <%--Contato com Vendedor--%>
                    </div>
                </section>
            </div>
        </div>
    </form>
    <%--Tela de Detalhes do Carro--%>

    <!-- produtos -->
    <div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="titulo-veiculos">Veículos Vistos</h1>
                </div>
            </div>
            <div class="row">
                <asp:ListView runat="server" ID="ListView1">
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <a class="img-veiculo" href='<%# "Detalhes.aspx?id=" + Eval("IdVeiculo") %>'>
                                    <img src='<%# "img/" + Eval("IdVeiculo") + ".jpg"%>' class="img-veiculo card-img-top" alt="Imagem do veículo <%# Eval ("Descricao") %>">
                                </a>
                                <a href="#" class="btn btn-primary">Ver Parcelas</a>
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval ("Descricao") %></h5>
                                    <p class="card-text"><%# Eval ("Quilometragem") %> KM / <%# Eval ("AnoModelo") %> / <%# Eval ("AnoFabricacao") %> </p>
                                    <h3>R$ <%# Eval ("PrecoNormal") %></h3>

                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <div class="seemore_bt"><a href="#">See More</a></div>
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
                            <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
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
