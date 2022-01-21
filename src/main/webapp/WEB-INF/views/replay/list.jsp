<%@ page pageEncoding="UTF-8" %>

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
                            <div style="position: relative"><img src="/imgss/curlingsample.jpg" img-fluid style="width: 500px"></div>
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
                            <div style="position: relative"><img src="/imgss/curlingsample.jpg" img-fluid style="width:  500px"></div>
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

            <select name="event" id="event" class="form-control col-4" style="font-size: 25px; font-weight: bold; margin-right: 10px">
                <option value="">종목</option>
                <option value="skijump">스키점프</option>
                <option value="skeleton">스켈레톤</option>
                <option value="short">쇼트트랙</option>
                <option value="curling">컬링</option>
                <option value="figure">피겨</option>
            </select>

        <select name=country id="country" class="form-control col-4" style="font-size: 25px; font-weight: bold; margin-right: 10px">
            <option value="">팀</option>
            <option value="kor">한국</option>
            <option value="usa">미국</option>
            <option value="gbr">영국</option>
            <option value="fra">프랑스</option>
            <option value="jpn">일본</option>
        </select>
        <div class="col-3"></div>
    </div>

    <div class="row">
        <div class="col"></div>

        <div class="col-3">
            <table>
                <thead></thead>
                <a href="">
                    <tbody>
                    <tr>
                        <td>
                            <a href="">
                                <div style="position: relative"><img src="/imgss/curlingsample.jpg" style="width: 250px"></div>
                                <div style="position: absolute; margin: -41px 0 0 0"><button class="btn btn-primary" style="font-size: 15px">컬링</button></div>
                                <div style="position: absolute; margin: -41px 0 0 110px"><button class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                                <div style="position: absolute; margin: -41px 0 0 155px"><button style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                            </a>
                        </td>
                    </tr>
                    <input type="hidden" id="event1" name="event1" value="curling">
                    <input type="hidden" id="country1" name="country1" value="kor">

                    </tbody>
                </a>
                <tfoot>
                <tr>
                    <td>
                        <a href="">
                            <p style="font-size:25px">Lorem Ipsum</p>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
        <div class="col-3">
            <table>
                <thead></thead>
                <a href="">
                    <tbody>
                    <tr>
                        <td>
                            <a href="">
                                <div style="position: relative"><img src="/imgss/curlingsample.jpg" style="width: 250px"></div>
                                <div style="position: absolute; margin: -41px 0 0 0"><button class="btn btn-primary" style="font-size: 15px">컬링</button></div>
                                <div style="position: absolute; margin: -41px 0 0 110px"><button class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                                <div style="position: absolute; margin: -41px 0 0 155px"><button style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                            </a>
                        </td>
                    </tr>
                    <input type="hidden" id="event2" name="event2" value="skijump">
                    <input type="hidden" id="country2" name="country2" value="usa">

                    </tbody>
                </a>
                <tfoot>
                <tr>
                    <td>
                        <a href="">
                            <p style="font-size:25px">Lorem Ipsum</p>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
        <div class="col-3">
            <table>
                <thead></thead>
                <a href="">
                    <tbody>
                    <tr>
                        <td>
                            <a href="">
                                <div style="position: relative"><img src="/imgss/curlingsample.jpg" style="width: 250px"></div>
                                <div style="position: absolute; margin: -41px 0 0 0"><button class="btn btn-primary" style="font-size: 15px">컬링</button></div>
                                <div style="position: absolute; margin: -41px 0 0 110px"><button class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                                <div style="position: absolute; margin: -41px 0 0 155px"><button style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                            </a>
                        </td>
                    </tr>
                    <input type="hidden" id="event3" name="event3" value="short">
                    <input type="hidden" id="country3" name="country3" value="gre">

                    </tbody>
                </a>
                <tfoot>
                <tr>
                    <td>
                        <a href="">
                            <p style="font-size:25px">Lorem Ipsum</p>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
        <div class="col"></div>
    </div>


    <div class="row">
        <div class="col text-center">
            <button class="btn btn-primary" style="font-size: 50px;">영상 더보기</button>
        </div>
    </div>
</div> <!-- main -->