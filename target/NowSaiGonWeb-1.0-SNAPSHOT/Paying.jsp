<%-- 
    Document   : Paying
    Created on : Sep 23, 2022, 10:44:17 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css" />
        <link
            rel="stylesheet"
            href="./assert/font/fontawesome-free-6.1.1-web/css/all.min.css"
            />
        <link rel="stylesheet" href="./assert/css/style.css" />
        <link rel="stylesheet" href="./assert/css/paying.css" />
        <title>Paying</title>
    </head>
    <body>
        <!-- 1. Navigation -->
        <jsp:include page="Navigation.jsp"></jsp:include>

            <!-- Paying -->
            <div class="container">
                <div class="paying">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="customer-info">
                                <div class="customer-info-img-group">
                                    <img src="./assert/img/letter.png" alt="" />
                                    <img src="./assert/img/letter.png" alt="" />
                                </div>
                                <h4 class="customer-info-heading">Thông tin khách hàng</h4>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label">Tên: </span>
                                    <span>Nguyễn Dường Phú Trọng</span>
                                </div>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label">Điện thoại: </span>
                                    <span>0123456789</span>
                                </div>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label">Email: </span>
                                    <span>khoatdce160367@fpt.edu.vn</span>
                                </div>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label">Địa chỉ: </span>
                                    <span>Ấp vàm hồ, xã an thanh nam, cù lao dung, sóc trăng</span>
                                </div>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label"
                                          >Phương thức thanh toán:
                                    </span>
                                    <span>SHIP CODE(Kiểm tra hàng khi nhận)</span>
                                </div>
                                <div class="customer-info-group">
                                    <span class="customer-info-group-label"
                                          >Đơn vị vận chuyển:
                                    </span>
                                    <span>GHTK (Giao hàng tiết kiệm)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-cart">
                                <table class="table table-bordered align-middle">
                                    <thead>
                                        <tr>
                                            <th scope="col">SỐ THỨ TỰ</th>
                                            <th scope="col">ẢNH SẢN PHẨM</th>
                                            <th scope="col">TÊN SẢN PHẨM</th>
                                            <th scope="col">ĐƠN GIÁ</th>
                                            <th scope="col">SỐ LƯỢNG</th>
                                            <th scope="col">THÀNH TIỀN</th>
                                            <th scope="col">Xóa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>
                                                <img
                                                    class="product-cart-img"
                                                    src="./assert/img/cart-img.png"
                                                    alt=""
                                                    />
                                            </td>
                                            <td class="product-cart-name">HG POLO SHIRTS - TASMAN</td>
                                            <td class="product-cart-price">297.000đ</td>
                                            <td class="product-cart-quality">1</td>
                                            <td class="product-cart-total">297.000đ</td>
                                            <td>
                                                <i
                                                    class="fa fa-trash product-cart-delete"
                                                    aria-hidden="true"
                                                    ></i>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row">2</th>
                                            <td>
                                                <img
                                                    class="product-cart-img"
                                                    src="./assert/img/cart-img.png"
                                                    alt=""
                                                    />
                                            </td>
                                            <td class="product-cart-name">HG POLO SHIRTS - TASMAN</td>
                                            <td class="product-cart-price">297.000đ</td>
                                            <td class="product-cart-quality">1</td>
                                            <td class="product-cart-total">297.000đ</td>
                                            <td>
                                                <i
                                                    class="fa fa-trash product-cart-delete"
                                                    aria-hidden="true"
                                                    ></i>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row">3</th>
                                            <td>
                                                <img
                                                    class="product-cart-img"
                                                    src="./assert/img/cart-img.png"
                                                    alt=""
                                                    />
                                            </td>
                                            <td class="product-cart-name">HG POLO SHIRTS - TASMAN</td>
                                            <td class="product-cart-price">297.000đ</td>
                                            <td class="product-cart-quality">1</td>
                                            <td class="product-cart-total">297.000đ</td>
                                            <td>
                                                <i
                                                    class="fa fa-trash product-cart-delete"
                                                    aria-hidden="true"
                                                    ></i>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-md-4">
                            <table class="table table-bordered align-middle">
                                <tbody>
                                    <tr>
                                        <td class="product-cart-price-label">TẠM TÍNH</td>
                                        <td>297.000đ</td>
                                    </tr>
                                    <tr>
                                        <td class="product-cart-price-label">TỔNG TIỀN</td>
                                        <td class="product-cart-price-total">297.000đ</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-md-4">
                            <button type="button" class="btn main-btn">ĐẶT HÀNG</button>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-md-4">
                            <button type="button" class="btn continue-btn">
                                TIẾP TỤC MUA HÀNG
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->    
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
