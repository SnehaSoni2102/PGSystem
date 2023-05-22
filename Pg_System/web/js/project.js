var url = 'http://localhost:8084/projectshare/';
$(document).ready(function(){
    $("#addshare_comp_id").change(function(){
        $.post(url+'addshare.jsp',{
            data : 'test'
        },function(response){
            alert(response);
        });
    });
});