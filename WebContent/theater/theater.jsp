<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cp%>/theater/css/megabox.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp%>/theater/css/theme.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp%>/theater/css/theme2.css" type="text/css"/>

<style type="text/css">

.bgimg {
    border: 0;
    padding: 0; 
    max-height: 100%;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    max-width: 100%;
}

#topMenu {
 height: 30px; /* 메인 메뉴의 높이 */ 
width: 1000px /* 메인 메뉴의 넓이 */ 
} 
#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */ 
list-style-type: none; /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */ 
margin: 0px; /* 메인 메뉴 안의 ul의 margin을 없앰 */ 
padding: 0px; /* 메인 메뉴 안의 ul의 padding을 없앰 */ 
} 
#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */ 
color: white; /* 글씨 색을 흰색으로 설정 */ 
background-color: #2d2d2d; /* 배경 색을 RGB(2D2D2D)로 설정 */ 
float: left; /* 왼쪽으로 나열되도록 설정 */ 
line-height: 30px; /* 텍스트 한 줄의 높이를 30px로 설정 */ 
vertical-align: middle; /* 세로 정렬을 가운데로 설정 */ 
text-align: center; /* 텍스트를 가운데로 정렬 */ 
position: relative; /* 해당 li 태그 내부의 top/left 포지션 초기화 */ 
} 
.menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */ 
text-decoration:none; /* a 태그의 꾸밈 효과 제거 */ 
display: block; /* a 태그의 클릭 범위를 넓힘 */ 
width: 120px; /* 기본 넓이를 150px로 설정 */ 
font-size: 12px; /* 폰트 사이즈를 12px로 설정 */ 
font-weight: bold; /* 폰트를 굵게 설정 */ 
font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */ 
} 
.menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */ 
color: white; 
} 
.topMenuLi:hover .menuLink { 
/* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */ 
color: red; /* 글씨 색 빨간색 */ 
background-color: #4d4d4d; /* 배경색을 밝은 회색으로 설정 */ 
} 
.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */ 
color: #2d2d2d; /* 글씨 색을 RGB(2D2D2D)로 설정 */ 
background-color: white; /* 배경색을 흰색으로 설정 */ 
border: solid 1px black; /* 테두리를 설정 */ 
margin-top: -1px; /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */

 
} 
.longLink { /* 좀 더 긴 메뉴 스타일 설정 */ 
width: 190px; /* 넓이는 190px로 설정 */ 
} 
.submenu { 
/* 하위 메뉴 스타일 설정 */ 
position: absolute; /* html의 flow에 영향을 미치지 않게 absolute 설정 */ 
height: 0px; /* 초기 높이는 0px로 설정 */ 
overflow: hidden; /* 실 내용이 높이보다 커지면 해당 내용 감춤 */ 
transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */ 
-webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */ 
-moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */ 
-o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */ } 
.topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */ 
height: 310px; /* 높이를 31px / 메뉴 설정 */ 
} 
.submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */ 
color: red; /* 글씨색을 빨간색으로 설정 */ 
background-color: #dddddd; /* 배경을 RGB(DDDDDD)로 설정 */ 
}

.tmain_container>.no1 {
    position: relative;
    height: 585px;
    padding: 0;
    background: url(http://image2.megabox.co.kr/mop/home/theater/bg.jpg) 50% 0 no-repeat;
    background-size: cover;

</style>


<script type="text/javascript">
    function listValue(lst){
        var li1 = document.getElementsByTagName("li");
        for(i=0; i<li1.length; i++){
                if(lst == li1[i].getAttribute("name")){
                alert(li1[i].getAttribute("value"));
            }
        }

    }
</script>

<!-- 출처: http://hyun0412.tistory.com/entry/li-태그-예제 -->




</head>
<body>
<div class="tmain_container" align="center">
	<div class="section no1">
	</div>				

<table align="center">
	<tr>
		<td height="60" align="center">
		</td>
	</tr>
</table>
<table border="0" align="center" cellspacing="0" cellpadding="0">
	<tr>
		<td align="left" style="padding-bottom: 10px;">
			<h2><b>영화관 선택</b></h2>
		</td>
	</tr>
	<tr align="center">
		<td>
			<div id="topMenu"> 
			<ul> 
				<li class="topMenuLi"> 
					<a class="menuLink">서울</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=강남">강남</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=강남대로(씨티)">강남대로(씨티)</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=강동">강동</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=동대문">동대문</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=마곡">마곡</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=목동">목동</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=상봉">상봉</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=상암월드컵경기장">상암월드컵경기장</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=센트럴">센트럴</a></li> 
						<li><a class="submenuLink" name="district" href="<%=cp %>/Theater/theaterP2.do?district=송파파크하비오">송파파크하비오</a></li> 
					</ul> 
				</li> 
				<li>|</li>
				<li class="topMenuLi"> 
					<a class="menuLink">경기</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">고양스타필드</a></li> 
						<li><a class="submenuLink">남양주</a></li> 
						<li><a class="submenuLink">미사강변</a></li> 
						<li><a class="submenuLink">별내</a></li> 
						<li><a class="submenuLink">수원</a></li> 
						<li><a class="submenuLink">시흥배곧</a></li> 
						<li><a class="submenuLink">양주</a></li> 
						<li><a class="submenuLink">오산</a></li> 
						<li><a class="submenuLink">일산</a></li> 
						<li><a class="submenuLink">킨텍스</a></li> 
					</ul> 
				</li> 
				<li>|</li> 
				<li class="topMenuLi"> 
					<a class="menuLink">인천</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">검단</a></li> 
						<li><a class="submenuLink">인천논현</a></li> 
						<li><a class="submenuLink">미사강변</a></li> 
						<li><a class="submenuLink">청라지젤</a></li> 
						<li><a class="submenuLink">송도</a></li> 
						<li><a class="submenuLink">청라</a></li> 
					</ul> 
				</li> 
				<li>|</li> 
				<li class="topMenuLi"> 
					<a class="menuLink">대전/충정/세종</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">공주</a></li> 
						<li><a class="submenuLink">대전</a></li> 
						<li><a class="submenuLink">세종</a></li> 
						<li><a class="submenuLink">오창</a></li> 
						<li><a class="submenuLink">제천</a></li> 
						<li><a class="submenuLink">진천</a></li> 
						<li><a class="submenuLink">천안</a></li> 
						<li><a class="submenuLink">충주</a></li> 
						<li><a class="submenuLink">흥성내포</a></li> 
					</ul> 
				</li> 
				<li>|</li> 
				<li class="topMenuLi"> 
					<a class="menuLink">부산/대수/경상</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">거창</a></li> 
						<li><a class="submenuLink">경산하양</a></li> 
						<li><a class="submenuLink">구미</a></li> 
						<li><a class="submenuLink">김천</a></li> 
						<li><a class="submenuLink">대구(칠성로)</a></li> 
						<li><a class="submenuLink">덕천</a></li> 
						<li><a class="submenuLink">문경</a></li> 
						<li><a class="submenuLink">부산대</a></li> 
						<li><a class="submenuLink">사천</a></li> 
						<li><a class="submenuLink">서면</a></li> 
					</ul> 
				</li> 
				<li>|</li>
				<li class="topMenuLi"> 
					<a class="menuLink">광주/전라</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">광주(충장로)</a></li> 
						<li><a class="submenuLink">광주하남</a></li> 
						<li><a class="submenuLink">목포</a></li> 
						<li><a class="submenuLink">송천</a></li> 
						<li><a class="submenuLink">여수</a></li> 
						<li><a class="submenuLink">전대(광주)</a></li> 
						<li><a class="submenuLink">첨단</a></li> 
						<li><a class="submenuLink">광주상무</a></li> 
						<li><a class="submenuLink">남원</a></li> 
						<li><a class="submenuLink">목포하당(포르모)</a></li> 
					</ul> 
				</li> 
				<li>|</li>
				<li class="topMenuLi"> 
					<a class="menuLink">경기</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">남춘천</a></li> 
						<li><a class="submenuLink">속초</a></li> 
						<li><a class="submenuLink">원주</a></li> 
						<li><a class="submenuLink">원주센트럴</a></li> 
					</ul> 
				</li> 
				<li>|</li>
				<li class="topMenuLi"> 
					<a class="menuLink">제주</a> 
					<ul class="submenu"> 
						<li><a class="submenuLink">제주</a></li> 
						<li><a class="submenuLink">제주아라</a></li> 
					</ul> 
				</li> 
			</ul> 
			</div>
		</td>
	</tr>
	<tr>
		<td style="height: 500px;">
			<img alt="" src="./image/cinefore.jpg" height="500px" width="984px">
		</td>
	</tr>
</table>



<input type="hidden" value="start_time"/>
</div>
</body>
</html>
