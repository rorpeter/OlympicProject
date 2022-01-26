<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<header class="row">
    <style>
        .dropdown:hover .dropdown-menu {
            display: block;
            margin-top: 0;
        }

        ul .dropdown-menu {
            display: inline-block;
            display: none;
            float: left;
        }
    </style>

    <div class="col" >
        <img src="/imgss/Olympichome.jpg" id="home">
    </div>
    <div class="col-5" id="logo">
        <img src="/imgss/%EA%B4%91%EA%B3%A0.png">
    </div>
    <div class="col-3 text-right">
        <button type="button"
                class="btn"
                data-toggle="modal"
                data-target="#loginmodal"
                style="font-size:20px;">
            로그인</button><br>
        <button type="button" class="btn" style="font-size:10px; padding:5px 5px">아이디/비밀번호찾기</button>
        <button type="button"
                class="btn" style="font-size:10px; padding:5px 5px"><i class="bi-person"></i>회원가입</button>
        <br><br><br><br>
        <input type="text" name="findkey" id="findkey"
               class="border-primary">
        <button type="button" class="btn" id="findtype">
            <i class="bi-search"></i>검색</button>
    </div>
</header> <!-- header-end -->
<div class="row">
    <img src="/imgss/%EC%9D%B4%EB%AF%B8%EC%A7%80_20220119_001.png"
         style="width: 100%" class="img-fluid">
</div>

<nav class="nav navbar-expand navbar-light bg-light border">

    <ul class="navbar-nav nav-fill w-100">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="event" role="button" id="dropdownMenuLink"
            data-toggle="dropdown" aria-expanded="false">종목</a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <div class="dropdown-item" href="#"><img src="/imgss/event/skijump_red.png"><p>스키점프</p></div>
                <div class="dropdown-item" href="#"><img src="/imgss/event/skeleton_red.png"><p>스켈레톤</p></div>




            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="schedule">일정</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="news/agree.html">뉴스</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="replay">다시보기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="board/list.html">게시판</a>
        </li>
    </ul>
    <div class="col"></div>
</nav> <!-- nav -->
