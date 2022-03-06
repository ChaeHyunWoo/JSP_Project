function isValidEmail(email) {
	var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
    if (email.search(format) != -1)
        return true; //올바른 포맷 형식
    return false;
}

String.prototype.trim = function() {
		var TRIM_PATTERN = /(^\s*)|(\s*$)/g;
		return this.replace(TRIM_PATTERN, "");
}

function sendIt() {
    f = document.myForm;
    
    str = f.sm_name.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 이름을 입력하세요 !!!");
        f.sm_name.focus();
        return;
    }
    f.sm_name.value = str;    
    
    str = f.sm_hphone1.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sm_hphone1.focus();
        return;
    }
    f.sm_hphone1.value = str;     
    
    str = f.sm_hphone2.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sm_hphone2.focus();
        return;
    }
    f.sm_hphone2.value = str;
    
    str = f.sm_hphone3.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sm_hphone3.focus();
        return;
    }
    f.sm_hphone3.value = str;  
    
    str = f.sm_email.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 이메일을 입력하세요 !!!");
        f.sm_email.focus();
        return;
    }
    f.sm_email.value = str;

    str = f.sm_addr.value;
    str = str.trim();
    if(!str) {
        alert("주문자 정보 - 주소를 입력하세요 !!!");
        f.sm_addr.focus();
        return;
    }
    f.sm_addr.value = str;    
    
    str = f.sd_name.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 이름을 입력하세요 !!!");
        f.sd_name.focus();
        return;
    }
    f.sd_name.value = str;    
    
    str = f.sd_hphone1.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sd_hphone1.focus();
        return;
    }
    f.sd_hphone1.value = str;     
    
    str = f.sd_hphone2.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sd_hphone2.focus();
        return;
    }
    f.sd_hphone2.value = str;
    
    str = f.sd_hphone3.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 휴대폰번호를 입력하세요 !!!");
        f.sd_hphone3.focus();
        return;
    }
    f.sd_hphone3.value = str;  
    
    str = f.sd_email.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 이메일을 입력하세요 !!!");
        f.sd_email.focus();
        return;
    }
    f.sd_email.value = str;

    str = f.sd_addr.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 주소를 입력하세요 !!!");
        f.sd_addr.focus();
        return;
    }
    f.sd_addr.value = str;   
    
    str = f.sm_memo.value;
    str = str.trim();
    if(!str) {
        alert("받으시는분 정보 - 메모를 입력하세요 !!!");
        f.sm_memo.focus();
        return;
    }
    f.sm_memo.value = str;      
    
    str = f.sm_payway.value;
    str = str.trim();
    if(!str) {
        alert("결제구분을 선택하세요 !!!");
        f.sm_payway.focus();
        return;
    }
    f.sm_payway.value = str;     
    
    if(f.agreed.checked == false) {
        alert("동의하면 결제창으로 이동합니다 !!!");
        f.agreed.focus();
        return;
    }
    f.agreed.value = str;      
    
    f.action="/study/shop/order/complete.do";
    f.submit();
}