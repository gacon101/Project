<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <%--<jsp:useBean id="product" class="dao.ProductDAO" scope="request"></jsp:useBean>--%>
        <%--<jsp:useBean id="category" class="dao.CategoryDAO" scope="request"></jsp:useBean>--%>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edgeF" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css" />
        <link
            rel="stylesheet"
            href="./assert/font/fontawesome-free-6.1.1-web/css/all.min.css"
            />
        <link rel="stylesheet" href="./assert/css/style.css" />
        <title>Now-Sai-Gon</title>
    </head>
    <body>
        <!-- Container contains all website -->
        <div class="app">

            <!-- 1. Navigation -->
            <jsp:include page="Navigation.jsp"></jsp:include>

                <!-- 2.Category - Product items -->
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="category">
                                <h5 class="category-heading">COLTHING:</h5>
                                <div class="category-btn">
                                    <button class="btn btn-dark">
                                        <a href="home">All items</a>
                                    </button>
                                <c:forEach items="${requestScope.listCategory}" var="i">
                                    <button class="btn btn-dark ${activeByID == i.ID ? "active" :""}"><a href="category?categoryId=${i.ID}">${i.name}</a></button>
                                    </c:forEach> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- separator -->
            <div class="container container-sep">
                <div class="separator"></div>
            </div>

            <!-- 2. Container -->
            <div class="container">

                <!-- List products -->
                <div class="row mb-3 padding">
                    <c:forEach items="${requestScope.listProduct}" var="o">
                        <div class="col-xs-6 col-md-4 col-lg-3">
                            <div class="card">
                                <img
                                    class="card-img-top"
                                    src="${o.image}"
                                    alt=""
                                    />
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <a href="detail?productID=${o.ID}" class="card-link">${o.title}</a>
                                    </h5>
                                    <p class="card-text">
                                        <strong>${o.price}đ</strong>
                                        <span class="old-price ${o.salePercent == 0 ? "disable" :""}">
                                            ${((o.salePercent * (o.price/100)) + o.price)*1}đ
                                        </span>
                                    </p>
                                </div>
                                <div class="card-btn">
                                    <button class="btn btn-danger main-btn ">Xem nhanh</button>
                                    <button class="btn btn-danger main-btn">Thêm vào giỏ</button>
                                </div>
                                <div class="card-sale ${o.salePercent == 0 ? "disable" :""} ">
                                    <span class="card-sale-percent">-${o.salePercent}%</span>
                                </div>      
                            </div>
                        </div>
                    </c:forEach> 
                </div>

                <!-- Pagination-->
                <div class="row mb-3 padding row-page">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link current-page" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- Footer -->    
            <jsp:include page="Footer.jsp"></jsp:include>
        </div>
        <script src="./bootstrap/js/bootstrap.js"></script>
    </body>
</html>

