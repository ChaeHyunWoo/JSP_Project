<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function fcheckAll() {
		
		f = document.myForm;
		
		var clength = f["sool"].length;
		
		for(var i=0; i<clength; i++) {
			
			f["sool"][i].checked=true;
		}
		
	}
	
	function fcheckDel() {
		
		f = document.myForm;
		
		var clength = f["sool"].length;
		
		for(var i=0; i<clength; i++) {
			
			f["sool"][i].checked=false;
		}
		
	}
	
	
	function bestPoll() {
		
		f = document.myForm1;
		
		clength = f.bestsool.length;
		
		for(var i=0; i<clength; i++) {
			
			if(f.bestsool[i].checked) {
				alert(f.bestsool[i].value + "를(을) 좋아하는구나...");
				return;
			}
		}
		//window생략가능
		window.alert("술 싫어하냐?");
		
	}
	
	

</script>

</head>
<body>


<h3>좋아하는 술 종류</h3><br/>
<form action="" name="myForm">

<a href="javascript:fcheckAll();">전체선택</a>/
<a href="javascript:fcheckDel();">전체해제</a><br/>

<input type="checkbox" name="sool"/>위스키<br/>
<input type="checkbox" name="sool"/>보드카<br/>
<input type="checkbox" name="sool"/>생맥주<br/>
<input type="checkbox" name="sool"/>소주<br/>
<input type="checkbox" name="sool"/>막걸리<br/>
<input type="checkbox" name="sool"/>와인<br/>
<input type="checkbox" name="sool"/>데킬라<br/>
<input type="checkbox" name="sool"/>칵테일<br/>
<input type="checkbox" name="sool"/>꼬냑<br/>

</form>
<br/><br/>


<h3>가장 좋아하는 술 종류</h3><br/>
<form action="" name="myForm1">
<input type="radio" name="bestsool" value="위스키"/>위스키<br/>
<input type="radio" name="bestsool" value="보드카"/>보드카<br/>
<input type="radio" name="bestsool" value="생맥주"/>생맥주<br/>
<input type="radio" name="bestsool" value="소주"/>소주<br/>
<input type="radio" name="bestsool" value="막거리"/>막걸리<br/>
<input type="radio" name="bestsool" value="와인"/>와인<br/>
<input type="radio" name="bestsool" value="칵테일"/>칵테일<br/>
<input type="radio" name="bestsool" value="꼬냑"/>꼬냑<br/>

<a href="javascript:bestPoll();">
<img src="../html1/image/btn_poll01.gif"/>
</a>


</form>





</body>
</html>