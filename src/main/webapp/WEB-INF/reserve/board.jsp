<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<div id="container" style="max-width: 1200px; margin: auto">

	<section class="section faq p-4">
		<h1 class="fw-bold text-DR pb-4">티켓토리 고객센터</h1>
		<div class="col-lg-9">
			<div class="card basic">
				<div class="card-body">
					<h5 class="card-title text-R fw-bold">자주 묻는 질문 (FAQ)</h5>
					<div class="pt-3">
						<h6 class="fw-bold">1. 티켓 환불정책은 어떻게 되나요 ??</h6>
						환불은 1차적으로 최소 시작시간 3일 전 부터 가능합니다 . 그 이후에는 환불대금이 감소 될 수 있습니다.
					</div>
					<div class="pt-3">
						<h6 class="fw-bold">2. 회원탈퇴를 하고 싶어요 .</h6>
						로그인후 상단메뉴에서 마이페이지에서 탈퇴를 진행하실 수 있습니다.
					</div>
					<div class="pt-3">
						<h6 class="fw-bold">3. 부정이용 (암표 부정거래)는 어떻게 처벌 되나요 ??</h6>
						공연/전시/스포츠 문화를 해치는 범죄행위입니다. 부정거래 관리 시스템을 통한 모니터링 과정에서 비정상적인 프로세스의
						예매내역(매크로, 개인 간 거래 등) 적발 시 예매취소/회원정지/회원자격 상실 등의 적절한 조치 및 법적 제재를 가할
						수 있습니다.
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section qna p-4">
		<div class="col-lg-9">
		<div class="card basic">
			<div class="card-body">
				<h5 class="card-title text-R fw-bold">1:1문의 게시판 (Q&A)</h5>
				<div class="accordion accordion-flush" id="faq-group-1">
					<c:forEach var="b" items="${blist}">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed"
									data-bs-target="#${b.memberId}${b.id}" type="button"
									data-bs-toggle="collapse" aria-expanded="false">
									<div class="row">
										<div class="fw-bold">${b.title}</div>
										<div>date (${b.memberId})</div>
										<%-- 	${b.writedate} --%>
									</div>
								</button>
							</h2>
							<div id="${b.memberId}${b.id}"
								class="accordion-collapse collapse"
								data-bs-parent="#faq-group-1" style="">
								<div class="accordion-body">
									${b.body}
									<button onclick=""></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="row px-3">
				<div class="col-2"><button class="btn-basic">글쓰기</button></div>
				<div class="col pe-4" align="right">
					<c:forEach var="n" begin="1" end="${paging}">
						<span class="px-1" style="backgound:#f9e7cb; border-radius:50px;"><a href="${ctx}/board.do?pnum=${n}">${n}</a></span>
					</c:forEach>
				</div>
			</div>
			</div>
		</div>
	</section>

</div>
<%@ include file="./footer.jsp" %>