<%-- 
    Document   : productdetail
    Created on : Mar 10, 2022, 10:33:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
                <h1 class="h2"> Chi tiết sản phẩm</h1>
            </div>
            <div class="col-md-5">
                <ul class="breadcrumb d-flex justify-content-end">
                    <li class="breadcrumb-item"><a href="@Url.Action("Index", "Home")">Trang chủ</a></li>
                    <li class="breadcrumb-item active"> Chi tiết sản phẩm</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="content">
    <div class="container">
        <section class="bar">
            <div class="row portfolio-product">
                <div class="col-sm-5 card">
                    <div class=" owl-carouse mb-4">
                        <div class="item ">
                            <c:forEach  var = "item" items="${listBrand}">
                                <img src="<c:url value="/img/Ducati.jpg"/>" alt="" class="img-fluid">
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 card">
                    <div class="product-more">

                        <h1 class="my-4 text-center card-footer"> ${productDetail.nameProduct}</h1>
                        <h2 class="my-4">Giá tiền: ${productDetail.price} đ</h2>
                        <h7 class="my-4">Tình trạng: <b>Còn hàng</b></h7>
                        <h4 class="my-4">
                            Số lượng: <input name="sl" value="1" min="0" step="1" type="number"
                                             class="form-control" style="width: 250px; ">
                        </h4>
                        <a href="@Url.Action("addCart", "Cart", new { @iMaProduct = @Model.IdProduct, @strURL=Request.Url.ToString() })"
                           class="btn-danger mx-3" style="padding: 15px 2px;box-shadow: 1px #c22026;">
                            THÊM VÀO GIỎ HÀNG
                        </a>
                        <button class="btn-danger mx-3" style="height: 50px;">MUA NGAY</button>
                        <h5 class="my-4">Gọi đặt hàng: <a href="tel:+707450094" style="color: #000;">0707450094</a></h5>
                        <h4 style="color: brown;">CHIA SẺ NGAY</h4>
                        <div class="fb-share-button" data-href="@Facebook.com data-layout="button_count" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=@Facebook.com" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>


                    </div>
                </div>
                <div class="col-sm-3 card">
                    <h4 class="my-4 text-center card-footer" style="color:springgreen"> CHÚNG TÔI CAM KẾT</h4>
                    <i class="fas fa-tools" style="color:sandybrown"> <b>SỬA CHỮA TẬN NƠI</b></i>
                    <br />
                    <br />
                    <i class="fas fa-first-aid" style="color:brown"> <b>CỨU HỘ KHẨN CẤP</b></i>
                    <br />
                    <br />
                    <i class="fas fa-shipping-fast" style="color:dodgerblue"> <b>GIAO HÀNG MIỄN PHÍ</b></i>
                    <br />
                    <br />
                    <i class="fas fa-sync-alt" style="color:red"> <b>CHẤT LƯỢNG CHÍNH HÃNG</b></i>
                    <br />
                    <br />
                    <i class="fas fa-medal" style="color:palevioletred"> <b>THỦ TỤC ĐƠN GIẢN</b></i>
                </div>
            </div>
            <div class="fb-comments" data-href="@ViewBag.Url" data-width="1100" data-numposts="5"></div>
        </section>
        <div class="col-sm-12">
            <div class="heading">
                <h3>Mô tả sản phẩm</h3>
            </div>
            ${productDetail.description}
            <section>
                <div class="row portfolio">
                    <div class="col-md-12">
                        <div class="heading">
                            <h3>Sản phẩm liên quan</h3>
                        </div>
                    </div>
                    <div class="project-carousel">
                        <div class="container">
                            <div class="project owl-carousel">
                                <div class="row portfolio text-center color-white">
                                    @foreach (var product in ViewBag.Same)
                                    {
                                        <div class="col-md-4">
                                            <div class="box-image">
                                                <div class="image">
                                                    <a href="@Url.Action("Detail","Product", new { url = product.ToURL() }, null)">
                                                        @foreach (var item in product.IMG_PRODUCT)
                                                        {
                                                            if (item.IdProduct == product.IdProduct)
                                                            {
                                                                <img src="@item.LinkImg" alt="@item.AltImg" class="img-fluid">
                                                            }
                                                        }
                                                        <div class="overlay d-flex align-items-center justify-content-center">
                                                            <div class="content">
                                                                <div class="name">
                                                                    <h3>Thông tin chi tiết</h3>
                                                                </div>
                                                                <div class="text">
                                                                    <p class="buttons">
                                                                        <h6 class="btn btn-template-outlined-white">
                                                                            Xem chi tiết
                                                                        </h6>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    }

                                </div>
                                <div class="row portfolio text-center color-white">
                                    @foreach (var product in ViewBag.Same)
                                    {
                                        <div class="col-md-4">
                                            <div class="box-image">
                                                <div class="image">
                                                    <a href="@Url.Action("Detail","Product", new { url = product.ToURL() }, null)">
                                                        @foreach (var item in product.IMG_PRODUCT)
                                                        {
                                                            if (item.IdProduct == product.IdProduct)
                                                            {
                                                                <img src="@item.LinkImg" alt="@item.AltImg" class="img-fluid">
                                                            }
                                                        }
                                                        <div class="overlay d-flex align-items-center justify-content-center">
                                                            <div class="content">
                                                                <div class="name">
                                                                    <h3>Thông tin chi tiết</h3>
                                                                </div>
                                                                <div class="text">
                                                                    <p class="buttons">
                                                                        <h6 class="btn btn-template-outlined-white">
                                                                            Xem chi tiết
                                                                        </h6>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    }

                                </div>
                                <div class="row portfolio text-center color-white">
                                    @foreach (var product in ViewBag.Same)
                                    {
                                        <div class="col-md-4">
                                            <div class="box-image">
                                                <div class="image">
                                                    <a href="@Url.Action("Detail","Product", new { url = product.ToURL() }, null)">
                                                        @foreach (var item in product.IMG_PRODUCT)
                                                        {
                                                            if (item.IdProduct == product.IdProduct)
                                                            {
                                                                <img src="@item.LinkImg" alt="@item.AltImg" class="img-fluid">
                                                            }
                                                        }
                                                        <div class="overlay d-flex align-items-center justify-content-center">
                                                            <div class="content">
                                                                <div class="name">
                                                                    <h3>Thông tin chi tiết</h3>
                                                                </div>
                                                                <div class="text">
                                                                    <p class="buttons">
                                                                        <h6 class="btn btn-template-outlined-white">
                                                                            Xem chi tiết
                                                                        </h6>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    }

                                </div>
                            </div>
                        </div>
                      
                    </div>

                </div>
            </section>
        </div>
    </div>
</div>
