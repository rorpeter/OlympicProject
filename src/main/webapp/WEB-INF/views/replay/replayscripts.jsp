<%@ page pageEncoding="UTF-8" %>

<script>

    var cnt = 0;

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
        makemovstr += '<img src="'+fname+'" style="width: 380px;"></div>';
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
        return makemovstr;
    }



    // 더보기 영상 출력 처리
    $('#morebtn').on('click', function () {

        // $('#playmovs').attr('style', 'padding-bottom:299px');

        // var div = document.createElement('div');
        // var body = document.getElementById('playmovsul');

        // div.innerHTML = document.getElementById('playmovsul').innerHTML;
        //div.innerHTML = document.getElementById('playmovs').innerHTML;

        //document.body.insertBefore(div, end);
        // body.appendChild(div);

        // $('.movcontent').find('ul').remove();

        alert(document.getElementById('rno').value);

        $.ajax({
            url: '/replay/morePlay',
            type: 'GET',
            data : { 'rno': $('#rno').val()}

        })
            .done(function (data) {
                let d = JSON.stringify(data);
                let test = JSON.parse(d);



                let movediv = '';

                for(var i=0; i<makemovs.length; i++) {
                    console.log(test[i]);
                    movediv += makemovs(test[i].fname, test[i].event, test[i].title);

                    //document.write(movediv);

                    // let codes = movediv;
                    // return (
                    //     <div dangerouslySetInnerHTML={ {__html: codes} }>
                    //     </div>
                    // );


                    //document.getElementById('playmovsul').append(movediv).innerHTML;

                    //document.getElementById('playmovsul').append(movediv);

                    // let ul = '<ul>' + movediv.innerHTML + '</ul>';
                    // document.getElementById('playmovs').append(ul);

                    //$('#playmovsul').attr('li', movediv);
                    // $('#playmovsul').append(movediv);
                }
                //console.log(movediv);

                document.getElementById('playmovsul').innerHTML += movediv;
                $('#rno').val( parseInt($('#rno').val()) + 1);


            })
            .fail(function (xhr, status, error) {
                alert(xhr.status + "/" + error);

            });

        // $('.replayli').find('img').remove();
        <%--$('.replayli').append('<img src="${test[1].fname}">');--%>

    });

</script>
