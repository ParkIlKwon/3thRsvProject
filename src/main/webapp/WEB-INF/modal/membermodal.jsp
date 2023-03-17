<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="script/MemberEdit.js" defer></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

<div class="modal fade" id="deleteMember" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">DeleteMember</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        비밀번호입력: <input type="text" id="pw"/>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" onclick="checkform('${id}')">탈퇴하기</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="showterms" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="termsModalLabel">티켓토리 이용약관</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="font-size:8px;">
		제 1 장 총칙<br>
		제 1 조 (목적)<br>
		이 약관은 티켓토리(이하 회사”라고 합니다)가 운영하는 인터넷사이트(http://www.ticketory.co.kr)을 통하여 제공하는 중개 서비스 및 기타 관련 서비스(이하 “서비스”라고 합니다)와 관련하여 회사와 회원(본 약관에 동의하고 회원등록을 완료한 서비스 이용자. 이하 “회원”라고 합니다)간의 권리와 의무, 책임사항 및 서비스이용절차에 관한 사항을 규정함을 목적으로 합니다.<br>
		<br>
		제 2 조 (약관의 명시, 효력 및 개정)<br>
		① 회사는 정의된 약관을 이용자가 쉽게 알 수 있도록 회사의 서비스가 제공되는 인터넷사이트의 첫 화면에 게시합니다.<br>
		② 회사는 합리적인 사유가 발생하면 전자상거래 등에서의 소비자 보호에 관한 법률, 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법, 전자금융거래법, 전자서명법 등 관련 법령에 위배하지 않는 범위에서 이 약관을 변경할 수 있으며, 회사가 약관을 변경할 때에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.<br>
		③ 이 약관에 동의하는 것은 정기적으로 회사가 운영하는 인터넷 사이트를 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못하여 발생하는 회원 또는 이용자의 피해에 대해 회사는 책임을 지지 않습니다.<br>
		④ 변경된 약관에 동의하지 않는 회원은 회원 탈퇴(이용계약의 해지)를 요청할 수 있으며, 회사가 제2항에 따라 이용자에게 약관 변경 적용일까지 거부의사를 표시하지 않으면, 약관의 변경에 동의한 것으로 간주한다는 내용을 공지 또는 통지하였음에도 이용자가 명시적으로 약관 변경에 대한 거부의사를 표시하지 않으면, 회사는 이용자가 변경된 약관에 동의한 것으로 간주합니다.<br>
		제 3 조 (관련법령과의 관계)<br>
		① 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자 보호지침」 및 관계법령 또는 상관례에 따릅니다.<br>
		② 회원은 회사가 제공하는 서비스를 이용함에 있어서 전자상거래 등에서의 소비자 보호에 관한 법률, 전자문서 및 전자거래기본법, 표시광고의 공정화에 관한 법률(예시:상품상세설명에 관련한 표시, 기재사항), 정보통신망이용촉진 및 정보보호 등에 관한 법률 등 관련법령을 준수하여야 하며, 이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다.<br>
		제 4 조 (서비스의 종류)<br>
		회사가 회원에게 제공하는 서비스는 다음과 같습니다.<br>
		① 정보제공 서비스<br>
		회사를 통하여 회원에게 온라인으로 제공하는 티켓 정보서비스 등의 인터넷서비스를 말합니다.<br>
		② 티켓예약 서비스<br>
		회사를 통하여 회원에게 온라인으로 티켓을 판매하는 서비스를 말합니다.<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="updatePassword" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">UpdatePassword</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        비밀번호: <p id="innerpw"></p>
      </div>
      <div class="modal-footer">
      <c:forEach var="m" items="${mlist}">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" onclick="updatepw('${id}','${m.memberPw}')">수정하기</button>
      </c:forEach>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="updateHP" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">UpdatePhoneNumber</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        변경핸드폰번호:<p id="innerhp"></p>
      </div>
      <div class="modal-footer">
      <c:forEach var="m" items="${mlist}">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" onclick="updatehp('${id}','${m.memberHP}')">수정하기</button>
      </c:forEach>
      </div>
    </div>
  </div>
</div>






</body>
