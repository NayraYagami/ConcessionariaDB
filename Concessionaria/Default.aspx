﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Concessionaria.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap" />
                </svg>
                <span class="fs-4">
                    <img src="img/logotipo_ofc.png" />
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
    <div class="container">
        <div id="Carousel" class="carousel slide" data-bs-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-bs-target="#Carousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#Carousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#Carousel" data-bs-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/gol.jpg" alt="Gol" style="width: 100%;">
                </div>
                <div class="carousel-item">
                    <img src="img/hb20.jpg" alt="HB2O" style="width: 100%;">
                </div>
                <div class="carousel-item">
                    <img src="img/hilux.jpg" alt="Hilux" style="width: 100%;">
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

    <!-- Filtros -->
    <div class="container">
        <div id="navegarMarcas" style="text-align: center; background-color: #19467E; color: #f7f9fb; font-family: 'Inter', sans-serif;">CONTE COM QUEM MAIS AMA E ENTENDE DE CARROS</div>
        <div class="exibeMarcas">
            <p>colocar logo das marcas aqui!</p>
        </div>
        <div class="buscarCarro">
            <h2>ENCONTRE SEU VEÍCULO</h2>
            <form runat="server">
                <div class="filtros">
                    <div class="filtroSelect">
                        <select>
                            <option value="value">MARCA</option>
                        </select>
                        <select>
                            <option value="value">MODELO</option>
                        </select>
                        <select>
                            <option value="value">VERSÃO</option>
                        </select>
                    </div>
                    <div class="filtroTexto">
                        <input placeholder="Busque por marca ou modelo do carro" />
                    </div>
                </div>
                <div class="checkBox">
                    <asp:CheckBox ID="chkNovo" runat="server" Checked />
                    Novo
                    <asp:CheckBox ID="chkSeminovo" runat="server" Checked />
                    Seminovo 
                </div>
                <div class="submit">
                    <asp:Button ID="btnSubmit" runat="server" Text="Ver Veículos" />
                </div>
            </form>
        </div>
    </div>
    <!-- Filtros -->

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
