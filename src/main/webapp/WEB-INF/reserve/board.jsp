<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script/Board.js" defer></script>
<title>보드영역</title>
</head>
<body>
	<body>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>티켓토리 고객센터 F&Q / 1:1문의</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Pages</li>
          <li class="breadcrumb-item active">Frequently Asked Questions</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section faq">
      <div class="row">
        <div class="col-lg-8">

          <div class="card basic">
            <div class="card-body">
              <h5 class="card-title"> F&Q 자주 묻는 질문</h5>

              <div>
                <h6>1. 티켓 환불정책은 어떻게 되나요 ??</h6>
                <p>환불은 1차적으로 최소 시작시간 3일 전 부터 가능합니다 . 그 이후에는 환불대금이 감소 될 수 있습니다.</p>
              </div>

              <div class="pt-2">
                <h6>2. 회원탈퇴를 하고 싶어요 .</h6>
                <p>로그인후 상단메뉴에서 마이페이지에서 탈퇴를 진행하실 수 있습니다.</p>
              </div>

              <div class="pt-2">
                <h6>3. 부정이용 (암표 부정거래)는 어떻게 처벌 되나요 ??</h6>
                <p>공연/전시/스포츠 문화를 해치는 범죄행위입니다.
부정거래 관리 시스템을 통한 모니터링 과정에서 비정상적인 프로세스의 예매내역(매크로, 개인 간 거래 등) 적발 시
예매취소/회원정지/회원자격 상실 등의 적절한 조치 및 법적 제재를 가할 수 있습니다..</p>
              </div>

            </div>
          </div>

          <!-- F.A.Q Group 1 -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">티켓토리 고객님들의 FAQ</h5>

              <div class="accordion accordion-flush" id="faq-group-1">
			<c:forEach var="b" items="${blist}">
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#${b.memberId}${b.id}" type="button" data-bs-toggle="collapse" aria-expanded="false">
                      ${b.title}
                    </button>
                  </h2>
                  <div id="${b.memberId}${b.id}" class="accordion-collapse collapse" data-bs-parent="#faq-group-1" style="">
                    <div class="accordion-body">
                      ${b.body}
                      <button onclick=""> </button>
                    </div>
                  </div>
                </div>
				
			</c:forEach>

              </div>

            </div>
          </div><!-- End F.A.Q Group 1 -->

        </div>

      </div>
    </section>

  </main><!-- End #main -->

</body>
</html>
<%@ include file="./footer.jsp" %>