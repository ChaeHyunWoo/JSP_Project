$(function() {

	// selectbox

jQuery(document).ready(function(){
    
    var select = $("select#color");
    
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
});



/* 위로
스크롤이 특정 위치로 이동하면 위로버튼이 나타난다.
위로버튼을 클릭하면 상단으로 이동
*/
function btn_mv_up(oj) {
 if(!oj) return false;
 var o = $(oj);
 var p = $(window).scrollTop();
 if(p > 100){ o.fadeIn('slow'); }    // 위로버튼이 나타나는 위치 지정
 else if(p < 100){ o.fadeOut('slow'); }    // 위로버튼을 숨기는 위치 지정
}

 

// 위로 버튼
$(document).scroll(function() {
  btn_mv_up('.btn_up_layer');
 }).on('click', '.btn_up_layer', function() {
  $("html, body").animate({scrollTop:0}, 'slow');
});
	
	
	
	
	
	
});

