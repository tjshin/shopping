<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html> 
<head>
  <title>기본페이지</title>
  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=763a821d2c1a10416e3b6d12208ed9c0"></script>
	
<style>
    
 img { 
   display:inline; 
 
 } 

 #wrap .buttons { position:absolute;top:0;left:0;z-index:1000;padding:5px; }
 #wrap .buttons .control-btn { margin:0 5px 5px 0; } 
 
 
</style>
</head>
<body> 
 
<div class="container">
    <p><a href="./contents/mainlist/1" >SHOP NOW</a></p>
    <img src="./images/jeans.jpg" alt="Jeans">
    
</div>

<!-- <div id="wrap" style="width:90%; margin:0 auto;"> -->
<!--     <h2>구장별 지도 이동</h2> -->
<!--     <p> 각 구장별 버튼을 누르면 해당 지역 주변으로 지도를 이동합니다</p> -->
<!-- <div class="map_wrap"> -->
<!-- <div id="map" style="width:100%;height:600px;"> -->
<!-- 	<div class="buttons"> -->
<!-- 		<input id="to-jamsil" type="button" value="잠실(LG/두산)" class="control-btn" /> -->
<!-- 		<input id="to-gocheok" type="button" value="고척(키움)" class="control-btn" /> -->
<!-- 		<input id="to-incheon" type="button" value="인천(SSG)" class="control-btn" /> -->
<!-- 		<input id="to-suwon" type="button" value="수원(KT)" class="control-btn" /> -->
<!-- 		<input id="to-daejeon" type="button" value="대전(한화)" class="control-btn" /> -->
<!-- 		<input id="to-gwangju" type="button" value="광주(KIA)" class="control-btn" /> -->
<!-- 		<input id="to-daegu" type="button" value="대구(삼성)" class="control-btn" /> -->
<!-- 		<input id="to-changwon" type="button" value="창원(NC)" class="control-btn" /> -->
<!-- 		<input id="to-sajik" type="button" value="사직(롯데)" class="control-btn" /> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->




<script>
var container = document.getElementById('map');
var mapOption = {
    center: new kakao.maps.LatLng(37.51226, 127.07190),
    level: 4
};
var map = new kakao.maps.Map(container, mapOption);//지도 생성

var jamsil = new kakao.maps.LatLng(37.51226, 127.07190),
	gocheok = new kakao.maps.LatLng(37.49818, 126.86698),
	incheon = new kakao.maps.LatLng(37.43674, 126.69331),
	suwon = new kakao.maps.LatLng(37.29976, 127.00967),
	daejeon = new kakao.maps.LatLng(36.31725, 127.42908),
	gwangju = new kakao.maps.LatLng(35.16808, 126.88894),
	daegu = new kakao.maps.LatLng(35.84100, 128.68205),
	changwon = new kakao.maps.LatLng(35.22239, 128.58244),
	sajik = new kakao.maps.LatLng(35.19402, 129.06151);
	
$("#to-jamsil").on("click", function(e) {
    e.preventDefault();

    map.setCenter(jamsil);
    map.setLevel(4);
});
$("#to-gocheok").on("click", function(e) {
    e.preventDefault();

    map.setCenter(gocheok);
    map.setLevel(4);
});
$("#to-incheon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(incheon);
    map.setLevel(4);
});
$("#to-suwon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(suwon);
    map.setLevel(4);
});
$("#to-daejeon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(daejeon);
    map.setLevel(4);
});
$("#to-gwangju").on("click", function(e) {
    e.preventDefault();

    map.setCenter(gwangju);
    map.setLevel(4);
});
$("#to-daegu").on("click", function(e) {
    e.preventDefault();

    map.setCenter(daegu);
    map.setLevel(4);
});
$("#to-changwon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(changwon);
    map.setLevel(4);
});
$("#to-sajik").on("click", function(e) {
    e.preventDefault();

    map.setCenter(sajik);
    map.setLevel(4);
});



var lgSrc = './images/map/emblem_LG.png',
	lgSize = new kakao.maps.Size(64,41),
	lgOption = {offset: new kakao.maps.Point(32,20)};
var lgImage = new kakao.maps.MarkerImage(lgSrc, lgSize, lgOption);
var lg = new kakao.maps.Marker({
	position: new kakao.maps.LatLng(37.51226, 127.07090),
	image: lgImage
	});
lg.setMap(map);

var obSrc = './images/map/emblem_OB.png',
	obSize = new kakao.maps.Size(64,41),
	obOption = {offset: new kakao.maps.Point(32,20)};
var obImage = new kakao.maps.MarkerImage(obSrc, obSize, obOption);
var ob = new kakao.maps.Marker({
	position: new kakao.maps.LatLng(37.51226, 127.07290),
	image: obImage
	});
ob.setMap(map);

var woSrc = './images/map/emblem_WO.png',
	woSize = new kakao.maps.Size(64,41),
	woOption = {offset: new kakao.maps.Point(32,20)};
var woImage = new kakao.maps.MarkerImage(woSrc, woSize, woOption);
var wo = new kakao.maps.Marker({
	position: gocheok,
	image: woImage
	});
wo.setMap(map);

var skSrc = './images/map/emblem_SK.png',
	skSize = new kakao.maps.Size(64,41),
	skOption = {offset: new kakao.maps.Point(32,20)};
var skImage = new kakao.maps.MarkerImage(skSrc, skSize, skOption);
var sk = new kakao.maps.Marker({
	position: incheon,
	image: skImage
	});
sk.setMap(map);

var ktSrc = './images/map/emblem_KT.png',
	ktSize = new kakao.maps.Size(64,41),
	ktOption = {offset: new kakao.maps.Point(32,20)};
var ktImage = new kakao.maps.MarkerImage(ktSrc, ktSize, ktOption);
var kt= new kakao.maps.Marker({
	position: suwon,
	image: ktImage
	});
kt.setMap(map);

var hhSrc = './images/map/emblem_HH.png',
	hhSize = new kakao.maps.Size(64,41),
	hhOption = {offset: new kakao.maps.Point(32,20)};
var hhImage = new kakao.maps.MarkerImage(hhSrc, hhSize, hhOption);
var hh = new kakao.maps.Marker({
	position: daejeon,
	image: hhImage
	});
hh.setMap(map);

var htSrc = './images/map/emblem_HT.png',
	htSize = new kakao.maps.Size(64,41),
	htOption = {offset: new kakao.maps.Point(32,20)};
var htImage = new kakao.maps.MarkerImage(htSrc, htSize, htOption);
var ht = new kakao.maps.Marker({
	position: gwangju,
	image: htImage
	});
ht.setMap(map);

var ssSrc = './images/map/emblem_SS.png',
	ssSize = new kakao.maps.Size(64,41),
	ssOption = {offset: new kakao.maps.Point(32,20)};
var ssImage = new kakao.maps.MarkerImage(ssSrc, ssSize, ssOption);
var ss = new kakao.maps.Marker({
	position: daegu,
	image: ssImage
	});
ss.setMap(map);

var ncSrc = './images/map/emblem_NC.png',
	ncSize = new kakao.maps.Size(64,41),
	ncOption = {offset: new kakao.maps.Point(32,20)};
var ncImage = new kakao.maps.MarkerImage(ncSrc, ncSize, ncOption);
var nc = new kakao.maps.Marker({
	position: changwon,
	image: ncImage
	});
nc.setMap(map);

var ltSrc = './images/map/emblem_LT.png',
	ltSize = new kakao.maps.Size(64,41),
	ltOption = {offset: new kakao.maps.Point(32,20)};
var ltImage = new kakao.maps.MarkerImage(ltSrc, ltSize, ltOption);
var lt = new kakao.maps.Marker({
	position: sajik,
	image: ltImage
	});
lt.setMap(map);

</script>

</body> 
</html>