<%@ page pageEncoding="UTF-8" %>

<script>
    // 종목 및 나라별 검색


    $('#event').on('change', function() {

        let params = '?event=' + $('#event option:selected').val();

        location.href = '/replay' + params;
    });

    $('#country').on('change', function() {

        let params = '?country=' + $('#country option:selected').val();
        
        location.href = '/replay' + params;

    });

</script>
