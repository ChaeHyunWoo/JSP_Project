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
    
    str = f.subject.value;
    str = str.trim();
    if(!str) {
        alert("제목을 입력하세요 !!!");
        f.subject.focus();
        return;
    }
    f.subject.value = str;

    str = f.upload.value;
    if(!str) {
        alert("이미지 파일을 선택 하세요 !!!");
        f.upload.focus();
        return;
    }
    
    f.action="/study/image/write_ok.do";
    f.submit();
}
