<%-- 
    Document   : ProductDetail
    Created on : Sep 23, 2022, 10:44:01 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css"/>
        <link
            rel="stylesheet"
            href="./assert/font/fontawesome-free-6.1.1-web/css/all.min.css"
            />
        <link rel="stylesheet" href="./assert/css/style.css" />       
        <link rel="stylesheet" href="./assert/css/productDetail.css" />
        <title>Product-Detail</title>
    </head>
    <body>
        <!-- 1. Navigation -->
        <jsp:include page="Navigation.jsp"></jsp:include>

            <!-- 2. Product Detail -->
            <div class="container">
                <div class="product-detail">
                    <div class="row">
                        <div class="col-xs-12 col-md-5">
                            <img class="product-img" src="${productDetail.image}" alt="" />
                        </div>
                        <div class="col-xs-12 col-md-7">
                            <ul class="product-detail-container">
                                <li class="product-detail-item">
                                    <h3 class="product-detail-title">${productDetail.title}</h3>
                                </li>
                                <li class="product-detail-item">
                                    <p class="product-detail-brand">
                                        <span class="product-detail-label">Thương hiệu:</span>
                                        <span class="product-detail-brand-name"
                                              >NEEDS OF WISDOM®</span
                                        >
                                    </p>
                                </li>
                                <li class="product-detail-item">
                                    <span class="product-detail-price">${productDetail.price}đ</span>
                                    <span class="product-detail-sale">${productDetail.salePercent}đ</span>
                                </li>
                                <li class="product-detail-item">
                                    <div class="product-detail-size">
                                        <span class="product-detail-label">Kích thướt:</span>
                                        <div class="size-btn-group">
                                            <input
                                                id="swatch-0-S"
                                                type="radio"
                                                name="option-0"
                                                value="S"
                                                checked=""
                                                class="available"
                                                />
                                            <label for="swatch-0-S">S</label>
                                        </div>
                                        <div class="size-btn-group">
                                            <input
                                                id="swatch-0-M"
                                                type="radio"
                                                name="option-0"
                                                value="M"
                                                checked=""
                                                class="available"
                                                />
                                            <label for="swatch-0-M">M</label>
                                        </div>
                                        <div class="size-btn-group">
                                            <input
                                                id="swatch-0-S"
                                                type="radio"
                                                name="option-0"
                                                value="L"
                                                checked=""
                                                class="available"
                                                />
                                            <label for="swatch-0-L">L</label>
                                        </div>
                                        <div class="size-btn-group">
                                            <input
                                                id="swatch-0-XL"
                                                type="radio"
                                                name="option-0"
                                                value="XL"
                                                checked=""
                                                class="available"
                                                />
                                            <label for="swatch-0-XL">XL</label>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-detail-item">
                                    <span class="product-detail-label">Mô tả:</span>
                                    <span>
                                        ${productDetail.decript}</span
                                    >
                                </li>
                                <li class="product-detail-item">
                                    <div class="product-detail-quality">
                                        <span class="product-detail-label">Số lượng:</span>
                                        <input type="number" name="" id="" />
                                    </div>
                                </li>
                                <li class="product-detail-item">
                                    <button class="btn btn-add-cart">Thêm vào giỏ hàng</button>
                                    <button class="btn btn-continue">
                                        <a href="home">Tiếp tục mua hàng</a>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="container product-detail-decript">
                    <h4 class="product-detail-heading">Bảng size chi tiết</h4>
                    <div class="row">
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/teeSize.png" alt="" />
                        </div>
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/shirt.png" alt="" />
                        </div>
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/sweaterSize.png" alt="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/jacketSize.png" alt="" />
                        </div>
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/hoodieSize.png" alt="" />
                        </div>
                        <div class="col-md-4">
                            <img class="tee-size" src="./assert/img/pantSize.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>

            <--<!-- Footer -->    
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

