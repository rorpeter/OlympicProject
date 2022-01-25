<%@ page pageEncoding="UTF-8" %>

<script>
    //로그인 처리
    $('#loginbtn').on('click',function (){processLogin();});

    function processLogin(){
        if($('#userid').val()=='') alert('아이디를 입력하세요!!');
        else if($('#passwd').val()=='') alert('비밀번호를 입력하세요!!');
        else{
            $('#loginfrm').attr('method','post');
            $('#loginfrm').attr('action','/login');
            $('#loginfrm').submit();
        }
    }

    //로그아웃 처리
    $('#logoutbtn').on('click',function (){
        location.href = '/logout';
    });

    // 종목(네비) 마우스 오버 처리
    $('#eventnav').on('mouseover', function (){

    });

</script>