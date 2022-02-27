function isValidEmail(email) {
	var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
    if (email.search(format) != -1)
        return true; //올바른 포맷 형식
    return false;
}

String.prototype.trim = function() {
		var TRIM_PATTERN = /(^\s*)|(\s*$)/g;
		return this.replace(TRIM_PATTERN, "");
};

function sendIt() {
    f = document.myForm;
    str = f.name.value;
    str = str.trim();
    if(!str) {
        alert("이름을 입력하세요 !!!");
        f.name.focus();
        return;
    }
    f.name.value = str;

    str = f.email.value;
    str = str.trim();
    if(str) {
		if(!isValidEmail(str)) {
            alert("E-Mail을 정확히 입력하세요 !!!");
            f.email.focus();
            return;
		}
    }
    f.email.value = str;

    str = f.content.value;
    str = str.trim();
    if(!str) {
        alert("내용을 입력하세요 !!!");
        f.content.focus();
        return;
    }
     f.content.value = str;
    
    f.action="/study/guest/save.jsp";
    f.submit();
}
