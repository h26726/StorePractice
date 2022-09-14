
function postAjaxRequest(o) {
    $.ajax({
        type: o.type??'POST',
        url: o.url,
        dataType: "json",   
        data: o.data,
        success: function(data) {
            console.log(o.success);
            o.success(data)
            
            console.log(data);
        },
        error:function(err){
            if(o.error){
                o.error()
            }
            alert(err);
        }
    });
}
