

  $(function(){
	$( "#datepicker" ).datepicker({
     dateFormat: 'yy/mm/dd',
     minDate:0
  	});
  });
  
function booking(){
  var selected= $("#datepicker").val();
	if (selected) {
      alert("예약페이지로 이동합니다.");
    } else {
      alert("날짜를 선택해 주세요.");
    }
}
