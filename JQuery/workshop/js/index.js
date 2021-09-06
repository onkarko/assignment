if (!window.jQuery){
    console.log("jQuery not Working");
}
else{
    $('document').ready(function(){
            console.log("hi");
            $('#red').click(function(){
                console.log("inside click");
                $('#red').css({"background-color":"green"});
                $('.circleyellow').hide();
                $('.circleorange').hide();
                $('.circlered').show();
            });
            $('#yellow').click(()=>{
                console.log("inside click");
                $('#yellow').css({"background-color":"green"});
                $('.circleyellow').show();
                $('.circleorange').hide();
                $('.circlered').hide();
                
            });
            $('#orange').click(()=>{
                console.log("inside click");
                $('#orange').css({"background-color":"green"});
                $('.circleyellow').hide();
                $('.circleorange').show();
                $('.circlered').hide();
                
            });
            $('#showall').click(()=>{
                console.log("inside click");
                $('#showall').css({"background-color":"green"});
                $('.circleyellow').show();
                $('.circleorange').show();
                $('.circlered').show();
                
            });
        }
    )
}