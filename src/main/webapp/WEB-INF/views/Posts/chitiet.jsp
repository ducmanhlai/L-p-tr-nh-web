<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">
    <!-- google fonts -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap');
    </style>
    <title>${baiviet.tieude}</title>
</head>
<body id="app">
   <header id="header">
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
                        <a href="../../dangki"><button class="button button--hl">Đăng ký</button></a>
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
                           <img src="../${user.linkanhdaidien}" alt="avatar" />
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
                         <a href="#" class="acc-setting-item">
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
                       <li class="nav-item ">
                         <a class="nav-link" href="../../baiviet/index">Trang chủ</a>
                       </li>
                       <li class="nav-item active">
                         <a class="nav-link" href="#">Chi tiết</a>
                       </li>
                       <li class="nav-item">
                         <a class="nav-link" href="#">Cộng đồng</a>
                       </li>
                       <li class="nav-item">
                         <a class="nav-link" href="#">Dịch vụ</a>
                       </li>
                       <li class="nav-item ">
                         <a class="nav-link" href="../../nguoidung/trangcanhan">Cá nhân</a>
                       </li>
                     </ul>
                     <div class="post">
                       <a href="../../nguoidung/dangbai">
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
    <div id="root">
        <!-- FORM - LOGIN -->
        <jsp:include page="../Layout/form_login.jsp" />  
        <!-- FORM - SIGN UP -->
        <jsp:include page="../Layout/form_sign_up.jsp" />  
         <a href="#" class="gototop hide">
            <i class="fa-solid fa-angle-up"></i>
        </a>
        <main class="main">
            <div class="main-wrapper">
                <div class="main-breadcrumbs">
                    <a href="#" class="mb-home">
                        <i class="fa-solid fa-house"></i>
                        <span>Home</span>
                    </a>
                    /
                    <a href="#" class="mb-detail">
                        <span>Chi tiết bài đăng</span>
                    </a>
                </div>
                <div class="main-content">
                    <div class="left-content">
                        <div class="detail-container">
                            <div class="detail-post">
                                <div class="dp-view">
                                    <ul class="dp-list">
                                    <c:if test="${video != null}">
                                        <li class="dp-item">
                                                                                    <video class="video-item" controls src="<c:url value='/${video.linkvideo}'/>"
                                                                                        alt="">
                                                                                </li>
                                    </c:if>
                                     <c:forEach var="item" items="${baiviet.getAnh()}">
                                        <li class="dp-item">
                                            <img src="<c:url value='/${item.getLinkanh()}'/>"
                                                alt="">
                                        </li>
                                     </c:forEach>
                                    </ul>
                                </div>
                                <div class="dp-control">
                                    <div class="dp-left disable">
                                        <i class="fa-solid fa-angle-left"></i>
                                    </div>
                                    <div class="dp-right ">
                                        <i class="fa-solid fa-angle-right"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-info">
                                <h2 class="di-title">
                                    ${baiviet.getTieude()}
                                </h2>
                                <div class="di-essential">
                                    <div class="die-price">
                                        <i class="fa-solid fa-sack-dollar"></i>
                                        <div class="die-value">
                                            ${baiviet.getGia()} triệu/tháng
                                        </div>
                                    </div>
                                    <div class="die-area">
                                        <i class="fa-solid fa-chart-area"></i>
                                        <div class="die-value">
                                            Diện tích: ${baiviet.dientich} m<sup>2</sup>
                                        </div>
                                    </div>
                                    <div class="die-address">
                                        <i class="fa-solid fa-location-dot"></i>
                                        <div class="die-value">
                                            ${baiviet.diachi},${baiviet.chitietbaiviet.phuongxa}, ${baiviet.chitietbaiviet.quanhuyen} , ${baiviet.chitietbaiviet.tinhtp}
                                        </div>
                                    </div>
                                    <div class="die-time">
                                        <i class="fa-solid fa-clock"></i>
                                        <div class="die-value">
                                            ${baiviet.chitietbaiviet.getStartDateFormated()}
                                        </div>
                                    </div>
                                </div>
                                <div class="di-description">
                                    <h3 class="did-title">
                                        Thông tin mô tả
                                    </h3>
                                    <div id= "description" style="line-height: 2;">
                                       ${baiviet.chitietbaiviet.getMota()}
                                    </div>
                                </div>
                                <div class="di-report" style="margin-top: 30px;">
                                    <i class="fa-solid fa-flag"></i>
                                    <span>Báo cáo bài viêt</span>
                                </div>
                            </div>
                        </div>
                        <div class="main-post">
                            <h3 class="main-post-title">Tin liên quan
                            </h3>
                            <div class="main-post-sort">
                                <span>Sắp xếp:</span>
                                <button class="button active">Mặc định</button>
                                <button class="button">Mới nhất</button>
                                <button class="button">Có video</button>
                            </div>
                            <ul class="post-list">
                                <li class="post-item">
                                    <div class="post-img">
                                        <a href="#">
                                            <img src="<c:url value='/resources/assets/images/Tro1.jpg' />" alt="">
                                        </a>
                                    </div>
                                    <div class="post-content">
                                        <a href="#" class="post-title">
                                            Cho thuê phòng trọ dạng chung cư gần khu công nghệ cao Thủ Đức
                                        </a>
                                        <div class="post-area">
                                            <i class="fa-solid fa-chart-area"></i>
                                            <span class="post-area-value">18 m²</span>
                                        </div>
                                        <div class="post-location">
                                            <i class="fa-solid fa-map-location-dot"></i>
                                            <span class="post-location-value">
                                                Thành phố Thủ Đức - Thành phố HCM
                                            </span>
                                        </div>
                                        <div class="post-price">
                                            <span class="post-price-value">3 triệu / tháng</span>
                                        </div>
                                        <div class="post-lessor">
                                            <a href="#">
                                                <div class="pl-info">
                                                    <div class="pl-img">
                                                        <img src="<c:url value='/resources/assets/images/lessor.jpg'/>" alt="">
                                                    </div>
                                                    <span>Văn Châu</span>
                                                </div>
                                            </a>
                                            <button class="button">Gọi 0999999999</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="pagination">
                                <ul class="pagination-list">
                                    <li class="p-ctl-prev">
                                        <a href="#">
                                            <i class="fa-solid fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="pagination-item"><a href="#">1</a></li>
                                    <li class="pagination-item"><a href="#">2</a></li>
                                    <li class="pagination-item"><a href="#">3</a></li>
                                    <li class="pagination-item"><a href="#">4</a></li>
                                    <li class="pagination-item"><a href="#">5</a></li>
                                    <span >...</span>
                                    <li class="p-ctl-next">
                                         <a href="#">
                                            <i class="fa-solid fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="right-content">
                        <div class="main-sidebar">
                            <div class="ms-section owner-post">
                                <div class="op-avatar">
                                    <img src="../${baiviet.nguoidung.linkanhdaidien}" alt="">
                                </div>
                                <h3 class="op-name">${baiviet.nguoidung.tenND}</h3>
                                <a href="tel:+${baiviet.nguoidung.sdt}" class="btn-phone-link">
                                    <div class="button btn-phone">
                                   <i class="fa-solid fa-mobile-screen-button"></i>
                                    ${baiviet.nguoidung.sdt}
                                </div>
                                </a>
                                <a target="_blank" href="https://zalo.me/${baiviet.nguoidung.sdt}" class="btn-zalo-link">
                                    <div class="button btn-zalo">
                                    <i class="fa-solid fa-z"></i>
                                    Nhắn zalo
                                </div>
                                </a>
                            </div>
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
                            <div class="ms-advertisement">
                                <div class="msa-img">
                                    <img src="https://images.wallpaperscraft.com/image/single/bmw_vision_efficientdynamics_concept_front_view_97571_1280x1280.jpg"
                                        alt="">
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
    <script src="<c:url value='/resources/js/main.js'/>"></script>
    <script src="<c:url value='/resources/js/global.js'/>"></script>
    <script src="<c:url value='/resources/js/detail.js'/>"></script>
    <script src="<c:url value='/resources/js/signedIn.js'/>"></script>
    <script>
    let rawText = $("#description").text().trim();
     rawText = rawText.replaceAll("//#//#","//#");
    rawText = rawText.replaceAll("//#","<br>");
     $("#description").html(rawText);
    </script>
</body>

</html>