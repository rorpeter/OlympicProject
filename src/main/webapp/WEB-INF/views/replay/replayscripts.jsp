<%@ page pageEncoding="UTF-8" %>

<script>

    // 종목 및 나라별 검색
    $('#event').on('change', function() {

        let params = '?event=' + $('#event option:selected').val();

        if ($('#event option:selected').val() == "") location.href = '/replay';

        else { location.href = '/replay' + params; }


    });

    $('#country').on('change', function() {


        let params = '?country=' + $('#country option:selected').val();

        location.href = '/replay' + params;

    });


    function makemovs(fname,event, title) {
        let makemovstr = '<li style="margin-right: 50px">';
        makemovstr += '<a href="">';
        makemovstr += '<div class="replayli" style="position: relative">';
        makemovstr += '<img src="' + fname + '" style="width: 380px;"></div>';
        makemovstr += '<div style="position: absolute; margin: -41px 0 0 0">';
        makemovstr += '<button type="button" class="btn btn-primary" style="font-size: 15px">'+event+'</button></div>';
        makemovstr +='<div style="position: absolute; margin: -41px 0 0 110px">';
        makemovstr +='<button type="button" class="btn btn-primary">';
        makemovstr +='<i class="bi bi-play-fill"></i></button></div>';
        makemovstr +='<div style="position: absolute; margin: -41px 0 0 155px">';
        makemovstr +='<button type="button" style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>';
        makemovstr +='</a>';
        makemovstr +='<a href="">';
        makemovstr +='<p style="width:380px; font-size:25px">'+title+'</p>';
        makemovstr +='</a>';
        makemovstr +='</li>';
    }


    // 더보기 영상 출력 처리
    $('#morebtn').on('click', function () {

        // $('#playmovs').attr('style', 'padding-bottom:299px');

        var div = document.createElement('div');
        var body = document.getElementById('playmovs')
        //var end = document.getElementById('endplaymovs')


        //div.innerHTML = document.getElementById('playmovs').innerHTML;
        div.innerHTML = document.getElementById('playmovs').innerHTML;

        //document.body.insertBefore(div, end);
        body.appendChild(div);

        alert(document.print(makemovstr));


        $.ajax({
            url: '/replay/morePlay',
            type: 'GET',

        })
            .done(function (data) {
                let d = JSON.stringify(data);
                let test = JSON.parse(d);

                // console.log(test);
                 alert(test[0]);
                // alert(test[0].fname);

                alert(makemovs(test[0].fname, test[0].event));

                // $('.replayli').find('img').remove();
                <%--$('.replayli').append('<img src="${test[0].fname}">');--%>

                // $('#addrlist').append(opts);
            })
            .fail(function (xhr, status, error) {
                alert(xhr.status + "/" + error);

            })
    });

</script>
