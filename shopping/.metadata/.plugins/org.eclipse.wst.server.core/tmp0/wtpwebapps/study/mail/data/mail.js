function isValidEmail(email) {
	var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
    if (email.search(format) != -1)
        return true; //올바른 포맷 형식
    return false;
}

// 내용의 값의 빈공백을 trim(앞/뒤)
String.prototype.trim = function() {
		var TRIM_PATTERN = /(^\s*)|(\s*$)/g;
		return this.replace(TRIM_PATTERN, "");
};

function mailSend() {
    f = document.myForm;

	str = f.senderName.value;
	str = str.trim();
    if(!str) {
        alert("\n이름을 입력하세요. ");
        f.senderName.focus();
        return;
    }
	f.senderName.value = str;

	str = f.senderEmail.value;
	str = str.trim();
    if(!str) {
        alert("\nE-Mail을 입력하세요. ");
        f.senderEmail.focus();
        return;
    }
	if(!isValidEmail(f.senderEmail.value)) {
        alert("\n정상적인 E-Mail을 입력하세요. ");
        f.senderEmail.focus();
        return;
	}
	f.senderEmail.value = str;

	str = f.receiverEmail.value;
	str = str.trim();
    if(!str) {
        alert("\nE-Mail을 입력하세요. ");
        f.receiverEmail.focus();
        return;
    }
	if(!isValidEmail(f.receiverEmail.value)) {
        alert("\n정상적인 E-Mail을 입력하세요. ");
        f.receiverEmail.focus();
        return;
	}
	f.receiverEmail.value = str;
    
	str = f.subject.value;
	str = str.trim();
    if(!str) {
        alert("\n제목을 입력하세요. ");
        f.subject.focus();
        return;
    }
	f.subject.value = str;

	str = f.content.value;
	str = str.trim();
    if(!str) {
        alert("내용을 입력하세요. ");
        f.content.focus();
        return;
    }
	f.content.value = str;
		
    f.submit();
}
