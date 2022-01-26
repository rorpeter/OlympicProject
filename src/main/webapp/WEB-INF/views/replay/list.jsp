<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- 현재페이지 및 페이지블럭(네비게이션) 처리 --%>
<fmt:parseNumber var="cp" value="${param.cpage}" />

<%--
    검색여부에 따른 링크 출력 처리
    일반목록 출력 : /board/list?cpage=
    검색 후 목록 출력 : /board/list?ftype=???&fkey=???&cpage=???
--%>
<c:set var="navlink" value="/replay?cpage=" />
<c:if test="${not empty param.event}">
    <c:set var="navlink"
           value="/replay?event=${param.event}&cpage=" />
</c:if>
<c:if test="${not empty param.country}">
    <c:set var="navlink"
           value="/replay?country=${param.country}&cpage=" />
</c:if>
<c:if test="${not empty param.event && param.country}">
    <c:set var="navlink"
           value="/replay?event=${param.event}&country=${param.country}&cpage=" />
</c:if>


<div id="main">
    <div class="row">
        <div class="col-3">
            <h2><i class="bi bi-snow3" style="color: blue"></i><b> 주요 영상</b></h2>
        </div>
        <div class="col-8"></div>
        <div class="col"></div>
    </div>


    <div class="row">
        <div class="col-5" style="margin-right: 30px">
            <table>
                <thead></thead>
                <tbody>
                <tr>
                    <td>
                        <a href="">
                            <div style="position: relative"><img src="/imgss/replay/curlingsample.jpg" img-fluid style="width: 500px"></div>
                            <div style="position: absolute; margin: -41px 0 0 0"><button class="btn btn-primary" style="font-size: 15px">컬링</button></div>
                            <div style="position: absolute; margin: -41px 0 0 350px"><button class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                            <div style="position: absolute; margin: -41px 0 0 400px"><button style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                        </a>
                    </td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td>
                        <a href="">
                            <p style="font-size:45px">Lorem Ipsum</p>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
        <div class="col-5">
            <table>
                <thead></thead>
                <tbody>
                <tr>
                    <td>
                        <a href="">
                            <div style="position: relative"><img src="/imgss/replay/curlingsample.jpg" img-fluid style="width:  500px"></div>
                            <div style="position: absolute; margin: -41px 0 0 0"><button class="btn btn-primary" style="font-size: 15px">컬링</button></div>
                            <div style="position: absolute; margin: -41px 0 0 350px"><button class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                            <div style="position: absolute; margin: -41px 0 0 400px"><button style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                        </a>
                    </td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td>
                        <a href="">
                            <p style="font-size:45px">Lorem Ipsum</p>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <h2><i class="bi bi-snow3" style="color: blue"></i><b> 모든 영상</b></h2>
        </div>
    </div>

    <div class="form-group row">
        <div class="col"></div>

            <select name="event" id="event" class="form-control col-3" style="font-size: 25px; font-weight: bold; margin-right: 10px">
                <option>종목</option>
                <option value="skijump">스키점프</option>
                <option value="skeleton">스켈레톤</option>
                <option value="short">쇼트트랙</option>
                <option value="curling">컬링</option>
                <option value="figure">피겨</option>
            </select>

        <select name=country id="country" class="form-control col-3" style="font-size: 25px; font-weight: bold; margin-right: 10px">
            <option>팀</option>
            <option value="kor">한국</option>
            <option value="usa">미국</option>
            <option value="gbr">영국</option>
            <option value="fra">프랑스</option>
            <option value="jpn">일본</option>
        </select>
        <div class="col-5"></div>
    </div>

    <div class="row">
        <div class="col"></div>
        <div class="col-10" id="playmovs">
            <ul id="playmovsul">
            <c:forEach var="r" items="${rbd}" >
            <li class="movlist" style="margin-right: 50px">
                <div class="movcontent" style="margin-left: -35px">
                <a href="/replay/view">
                    <div class="replayli" style="position: relative"><img src="${r.fname}" style="width: 380px; height: 214px"></div>
                    <div style="position: absolute; margin: -41px 0 0 0"><button type="button" class="btn btn-primary" style="font-size: 15px">${r.event}</button></div>
                    <div style="position: absolute; margin: -41px 0 0 110px"><button type="button" class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                    <div style="position: absolute; margin: -41px 0 0 155px"><button type="button" style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                </a>
                <a href="">
                    <p style="width:380px; font-size:25px">${r.title}</p>
                </a>

                </div>
            </li>
            </c:forEach>

                <input type="hidden" id="rno" name="rno" value="1">
            </ul>
        </div>
        <div class="col"></div>
    </div>


    <div class="row">
        <div class="col text-center">
            <button type="button" id ="morebtn" class="page-item active btn btn-primary" style="font-size: 50px;">영상 더보기</button>
        </div>
    </div>
</div> <!-- main -->