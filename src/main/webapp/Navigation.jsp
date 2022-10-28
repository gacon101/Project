<%-- 
    Document   : nav.jsp
    Created on : Sep 24, 2022, 10:43:49 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- 1. Navigation -->
<div class="navbar">
    <div class="container">
        <span class="navbar-hotline">Hotline: 0933.782.768</span>
        <ul class="navbar-list">
            <li class="navbar-item">
                <a href="register.html" class="navbar-link">Manage Product</a>
            </li>

            <li class="navbar-item">
                <a href="register.html" class="navbar-link">Manage Account</a>
            </li>

            <li class="navbar-item">
                <a href="register.html" class="navbar-link">Đăng xuất</a>
            </li>
            <li class="navbar-item">
                <a href="Register.jsp" class="navbar-link">Đăng kí</a>
            </li>
            <li class="navbar-item">
                <a href="Login.jsp" class="navbar-link">Đăng nhập</a>
            </li>
        </ul>
    </div>
</div>

<!-- Nav-logo -->
<div class="container navbar-logo">
    <img src="./assert/img/logoNowSaiGon.png" alt="" />
</div>

<!-- Nav-home fitter -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container">
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="home"
                       >Home</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Top trending</a>
                </li>

                <li class="nav-item top-sale-btn">
                    <a class="nav-link">Top sale</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link">Contact us</a>
                </li>
            </ul>
            <form class="d-flex" role="search" action="search" method="get">
                <input
                    class="form-control me-2"
                    type="search"
                    placeholder="Find products"
                    aria-label="Search"
                    name="txtSearch"
                    value="${searchValue}"
                    />
                <button class="btn btn-search" type="submit">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
                <button class="btn navbar-cart" type="submit">
                    <i class="header__cart-icon fa-solid fa-cart-plus"></i>
                </button>
            </form>
        </div>
    </div>
</nav>