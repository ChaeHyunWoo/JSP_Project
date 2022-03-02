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
    
    str = f.brandNum.value;
    str = str.trim();
    if(!str) {
        alert("브랜드명을 선택하세요 !!!");
        f.brandNum.focus();
        return;
    }
    f.brandNum.value = str;    
    
    str = f.subject.value;
    str = str.trim();
    if(!str) {
        alert("상품명을 입력하세요 !!!");
        f.subject.focus();
        return;
    }
    f.subject.value = str;

    str = f.price.value;
    str = str.trim();
    if(!str) {
        alert("가격을 입력하세요 !!!");
        f.price.focus();
        return;
    }
    f.price.value = str;    
    
    str = f.upload.value;
    if(!str) {
        alert("일반 이미지 파일을 선택 하세요 !!!");
        f.upload.focus();
        return;
    }
    
    str = f.detailImage.value;
    if(!str) {
        alert("상세 이미지 파일을 선택 하세요 !!!");
        f.detailImage.focus();
        return;
    }    
    
    f.action="/study/shop/product/productSave_ok.do";
    f.submit();
}

function sendBrand() {
	f = document.myForm;
	
    str = f.brandName.value;
    str = str.trim();
    if(!str) {
        alert("브랜드를 입력하세요 !!!");
        f.brandName.focus();
        return;
    }
    f.brandName.value = str;
	
    f.action="/study/shop/product/brandSave_ok.do";
    f.submit();	
}

function sendType() {
	f = document.myForm;
	
    str = f.typeName.value;
    str = str.trim();
    if(!str) {
        alert("종류를 입력하세요 !!!");
        f.typeName.focus();
        return;
    }
    f.typeName.value = str;
	
    f.action="/study/shop/product/typeSave_ok.do";
    f.submit();	
}