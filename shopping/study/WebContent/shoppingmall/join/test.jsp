<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 <script type="text/javascript">
// opener���� ������ �߻��ϴ� ��� �Ʒ� �ּ��� �����ϰ�, ������� ������������ �Է��մϴ�. 
// (���˾� API ȣ�� �ҽ�"�� �����ϰ� ������Ѿ� �մϴ�.)
//document.domain = "abc.go.kr";
function goPopup(){
//��δ� �ý��ۿ� �°� �����Ͽ� ���
//ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)��
//ȣ���ϰ� �˴ϴ�.
var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
//** 2017�� 5�� ����Ͽ� �˾� API ��� �߰����� **/
// ����� ���� ���, ȣ��� ������(jusopopup.jsp)����
// ���� �ּҰ˻� URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr){
 // 2017�� 2�� �����׸��� �߰��Ǿ����ϴ�. ���Ͻô� �׸��� �߰��Ͽ� ����Ͻø� �˴ϴ�.
 document.form.roadFullAddr.value = roadFullAddr;

}
</script>
</head>
<body>
<form name="form" id="form" method="post">
<input type="button" onClick="goPopup();" value="�˾�"/>
���θ��ּ� ��ü(����)<input type="text" id="roadFullAddr" name="roadFullAddr" /><br>

</form>
</body>
</html>