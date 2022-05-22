<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<c:url value='/resources/assets/images/Logo-icon.png'/>">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/11a1459669.js" crossorigin="anonymous"></script>
    <!-- css external links-->
    <link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/global.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/index.css'/>">
     <script src="<c:url value='/resources/js/main.js'/>"></script>
    <!-- google fonts -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap');
    </style>
    <title>Thuê nhà trọ</title>
</head>
<body id="app" onload="loginHandler()">
<header id="header">
           <jsp:include page="../Layout/form_login.jsp" />
            <div class="header-wrapper">
              <div class="header-login">
                <div class="logo">
                  <a href="" #>
                    <img src="<c:url value='/resources/assets/images/logo.png'/>" alt="main logo" />
                  </a>
                </div>
                <div class="acc-wrapper ">
                  <div class="acc-login acc-component">
                    <button class="button btn-login">Đăng nhập</button>
                  </div>
                  <div class="acc-sign acc-component">
                    <a href="../dangki"><button class="button button--hl">Đăng ký</button></a>
                  </div>
                  <div class="acc-search acc-component">
                    <i class="fa-solid fa-magnifying-glass"></i>
                  </div>
                  <div class="acc-component acc-control">
                    <div class="acc-profile">
                      <div class="acc-name">
                        <span>${user.tenND}</span>
                      </div>
                      <div class="acc-avatar">
                        <img src="${user.linkanhdaidien}" alt="avatar" />
                      </div>
                    </div>
                    <div class="acc-setting">
                      <a href="#account-general" class="acc-setting-item">
                        <i class="fa-solid fa-user"></i>
                        <span>Thông tin</span>
                      </a>

                      <a href="#" class="acc-setting-item">
                        <i class="fa-solid fa-bell"></i>
                        <span>Thông báo</span>
                      </a>
                      <a href="#" class="acc-setting-item">
                        <i class="fa-solid fa-file-signature"></i>
                        <span>Góp Ý</span>
                      </a>
                      <a href="<c:url value='/logout' />" class="acc-setting-item">
                        <i class="fa-solid fa-key"></i>
                        <span>Đổi mật khẩu</span>
                      </a>
                      <div class="separator"></div>
                      <a href="<c:url value='/logout' />" class="acc-setting-item logout">
                        <i class="fa-solid fa-right-from-bracket"></i>
                        <span>Đăng xuất</span>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="header-nav">
                <nav class="navigation">
                  <ul class="nav-list">
                    <li class="nav-item active">
                      <a class="nav-link" href="../">Trang chủ</a>
                    </li>
                    <li class="nav-item ">
                      <a class="nav-link" href="#">Chi tiết</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Cộng đồng</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Dịch vụ</a>
                    </li>
                    <li class="nav-item ">
                      <a class="nav-link" href="../nguoidung/trangcanhan">Cá nhân</a>
                    </li>
                  </ul>
                  <div class="post">
                    <a href="../nguoidung/dangbai">
                      <i class="fa-solid fa-pen-to-square"></i>
                      <span>Đăng tin</span>
                    </a>
                  </div>
                </nav>
              </div>
            </div>
          </header>

          <a href="#" class="gototop hide">
                      <i class="fa-solid fa-angle-up"></i>
                    </a>

            <jsp:useBean id="baiviet" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
			<c:url value="" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
    <div id="root">
        <section class="filter-section">
            <div class="filter-bg">
                <img src="<c:url value='/resources/assets/images/slide-bg.jpg'/>" alt="">
            </div>
            <div class="filter-wrapper">
                <div class="filter-title">
                    <h1 class="title">Website đăng tin cho thuê phòng trọ tại Việt Nam</h1>
                    <h4 class="subtitle">fb88.com nhà cái uy tín hàng đầu Việt Nam</h4>
                </div>
                <div class="filter-main">
                    <ul class="filter-list">
                        <li class="filter-item">
                            <div class="custom-select" style="width:200px;">
                                <select>
                                <option value="0">Tỉnh - Thành Phố</option>
                                <option value="1">Tp.HCM</option>
                                <option value="2">Hà nội</option>
                                <option value="3">Bình Định</option>
                            </select>
                            </div>
                        </li>
                        <li class="filter-item">
                            <div class="custom-select" style="width:200px;">
                                <select>
                                <option value="0">Quận - Huyện</option>
                                <option value="1">Quận 9</option>
                                <option value="2">Quận 1</option>
                                <option value="3">Quận 10</option>
                            </select>
                            </div>
                        </li>
                        <li class="filter-item">
                            <div class="custom-select" style="width:200px;">
                                <select>
                                <option value="0">Giá</option>
                                <option value="1">3.000.000 VND</option>
                                <option value="2">2.000.000 VND</option>
                                <option value="3">1.000.000 VND</option>
                            </select>
                            </div>
                        </li>
                        <li class="filter-item">
                            <div class="custom-select" style="width:200px;">
                                <select>
                                <option value="0">Diện tích</option>
                                <option value="1">100 m2</option>
                                <option value="2">50 m2</option>
                                <option value="3">25 m2</option>
                                <option value="3">chưa xác định</option>
                            </select>
                            </div>
                        </li>
                    </ul>
                    <div class="filter-button">
                        <div class="button button--filter button--hl">Lọc</div>
                    </div>
                </div>
            </div>
        </section>
        <%-- form login and sign up --%>

        <main class="main">
            <div class="main-wrapper">
                <div class="main-breadcrumbs">
                    <a href="../baiviet/index" class="mb-home">
                        <i class="fa-solid fa-house"></i>
                        <span>Home</span>
                    </a>
                </div>
                <div class="main-locations">
                    <h3 class="main-loca-title">Khu vực nổi bật</h3>
                    <ul class="main-loca-list">
                        <li class="main-loca-item">
                            <a href="#" class="main-local-link">
                                <div class="ml-img">
                                    <img src="<c:url value='/resources/assets/images/location_hcm.jpg'/>" alt="">
                                </div>
                                <div class="ml-content">
                                    Hồ chí minh
                                </div>
                            </a>
                        </li>
                        <li class="main-loca-item">
                            <a href="#" class="main-local-link">
                                <div class="ml-img">
                                    <img src="<c:url value='/resources/assets/images/location_hn.jpg'/>" alt="">
                                </div>
                                <div class="ml-content">
                                    Hà nội
                                </div>
                            </a>
                        </li>
                        <li class="main-loca-item">
                            <a href="#" class="main-local-link">
                                <div class="ml-img">
                                    <img src="<c:url value='/resources/assets/images/location_dn.jpg'/>" alt="">
                                </div>
                                <div class="ml-content">
                                    Đà nẵng
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="main-content">
                <div class="left-content">
                    <div class="main-post">
                        <h3 class="main-post-title">Danh sách tin đăng</h3>
                        <div class="main-post-sort">
                            <span>Sắp xếp:</span>
                            <button class="button active">Mặc định</button>
                            <button class="button">Mới nhất</button>
                            <button class="button">Có video</button>
                        </div>
                        <ul class="post-list">
                            <c:forEach var="item" items="${baiviet.pageList}">
                                <c:if test="${item.isDisplay()}">
                                 <li class="post-item">
                                     <div class="post-img">
                                         <a href="../baiviet/chitiet/${item.mabaiviet}">
                                             <img src="<c:url value='/${item.getAnh().iterator().next().getLinkanh()}'/>" alt="">
                                         </a>
                                     </div>
                                     <div class="post-content">
                                         <a href="../baiviet/chitiet/${item.mabaiviet}" class="post-title">
                                         ${item.tieude}
                                         </a>
                                         <div class="post-area">
                                             <i class="fa-solid fa-chart-area"></i>
                                             <span class="post-area-value">${item.dientich} m²</span>
                                         </div>
                                         <div class="post-location">
                                             <i class="fa-solid fa-map-location-dot"></i>
                                             <span class="post-location-value">
                                             ${item.diachi} ${item.chitietbaiviet.tinhtp}/${item.chitietbaiviet.quanhuyen}/${item.chitietbaiviet.phuongxa}
                                             </span>
                                         </div>
                                         <div class="post-price">
                                             <span class="post-price-value">${item.gia} triệu/tháng</span>
                                         </div>
                                         <div class="post-lessor">
                                             <a href=>
                                                 <div class="pl-info">
                                                     <div class="pl-img">
                                                         <img src="${item.nguoidung.linkanhdaidien}" alt="hình đại diện">
                                                     </div>
                                                     <span>${item.nguoidung.tenND}</span>
                                                 </div>
                                             </a>
                                             <button class="button">Gọi ${item.nguoidung.sdt}</button>
                                         </div>
                                     </div>
                                 </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <tg:paging pagedListHolder="${baiviet}"
				         pagedLink="${pagedLink}" />
                    </div>
                    <div class="right-content">
                    <div class="main-sidebar">
                        <div class="ms-section ms-category">
                            <h3 class="ms-title">Danh mục cho thuê</h3>
                            <div class="ms-content">
                                <ul class="msc-list">
                                    <li class="msc-item">
                                        <a href="#" class="msc-link">Cho thuê phòng trọ</a>
                                    </li>
                                    <li class="msc-item">
                                        <a href="#" class="msc-link">Cho thuê nhà nguyên căn</a>
                                    </li>
                                    <li class="msc-item">
                                        <a href="#" class="msc-link">Cho thuê căn hộ</a>
                                    </li>
                                    <li class="msc-item">
                                        <a href="#" class="msc-link">Cho thuê mặt bằng</a>
                                    </li>
                                    <li class="msc-item">
                                        <a href="#" class="msc-link">Tìm người ở ghép</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="ms-section ms-prices">
                            <h3 class="ms-title">Xem theo giá</h3>
                            <div class="ms-content">
                                <ul class="msp-list">
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Dưới 1 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 1 - 2 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 2 - 3 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 3 - 5 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 5 - 7 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 7 - 10 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 10 - 15 triệu</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Trên 15 triệu</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="ms-section">
                            <h3 class="ms-title">Xem theo diện tích</h3>
                            <div class="ms-content">
                                <ul class="msp-list">
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Dưới 20 m2</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 20 - 30 m2</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 30 - 50 m2</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 50 - 70 m2</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Từ 70 - 90 m2</span>
                                        </a>
                                    </li>
                                    <li class="msp-item">
                                        <a href="#" class="msp-link">
                                            <i class="fa-solid fa-angle-right"></i>
                                            <span>Trên 90 m2</span>
                                        </a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="ms-advertisement">
                            <div class="msa-img">
                                <img src="https://phongtro123.com/images/ad_nhom_fb.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <jsp:include page="../Layout/footer.jsp" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
                </script>

    <script src="<c:url value='/resources/js/global.js'/>"></script>
    <script src="<c:url value='/resources/js/signedIn.js'/>"></script>
    <script src="<c:url value='/resources/js/main.js'/>"></script>
    <script>
        if($(".post-item").length === 0){
        const span = document.createElement('span');
        $(".post-list").text("Hiện tại không có bài viết nào để hiển thị !");
        }
    </script>


</body>

</html>