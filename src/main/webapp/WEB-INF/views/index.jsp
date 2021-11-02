<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html> 
<head>
  <title>기본페이지</title>
  <meta charset="utf-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=2kfaplpfc5"></script>

<style type="text/css">
    
img {
  display:inline;
 
}

#wrap .buttons { position:absolute;top:0;left:0;z-index:1000;padding:5px; }
#wrap .buttons .control-btn { margin:0 5px 5px 0; }
 
</style>
</head>
<body> 
 
<!-- <div class="container"> -->
<!--     <p><a href="./contents/mainlist/1" >SHOP NOW</a></p> -->
<!--     <img src="./images/jeans.jpg" alt="Jeans"> -->
    
<!-- </div> -->
<article>
<div id="wrap" class="section" style="width:90%; margin:0 auto;">
    <h2>구장별 지도 이동</h2>
    <p> 각 구장별 버튼을 누르면 해당 지역 주변으로 지도를 이동합니다</p>
  
<div id="map" style="width:96%;height:600px; margin:0 auto;">  <!--  style="width:100%;height:600px;margin:0 auto; -->
	<div class="buttons">
		<input id="to-jamsil" type="button" value="잠실(LG/두산)" class="control-btn" />
		<input id="to-gocheok" type="button" value="고척(키움)" class="control-btn" />
		<input id="to-incheon" type="button" value="인천(SSG)" class="control-btn" />
		<input id="to-suwon" type="button" value="수원(KT)" class="control-btn" />
		<input id="to-daejeon" type="button" value="대전(한화)" class="control-btn" />
		<input id="to-gwangju" type="button" value="광주(KIA)" class="control-btn" />
		<input id="to-daegu" type="button" value="대구(삼성)" class="control-btn" />
		<input id="to-changwon" type="button" value="창원(NC)" class="control-btn" />
		<input id="to-sajik" type="button" value="사직(롯데)" class="control-btn" />
	</div>
	
</div>
<code id="snippet" class="snippet"></code>
</div>


<script id="code">
var mapOptions = {
    center: new naver.maps.LatLng(37.51226, 127.07190),
    zoom: 16
};

var jamsil = new naver.maps.LatLng(37.51226, 127.07190),
	gocheok = new naver.maps.LatLng(37.49818, 126.86698),
	incheon = new naver.maps.LatLng(37.43674, 126.69331),
	suwon = new naver.maps.LatLng(37.29976, 127.00967),
	daejeon = new naver.maps.LatLng(36.31725, 127.42908),
	gwangju = new naver.maps.LatLng(35.16808, 126.88894),
	daegu = new naver.maps.LatLng(35.84165, 128.68078),
	changwon = new naver.maps.LatLng(35.22239, 128.58244),
	sajik = new naver.maps.LatLng(35.19402, 129.06151);
	
$("#to-jamsil").on("click", function(e) {
    e.preventDefault();

    map.setCenter(jamsil);
});
$("#to-gocheok").on("click", function(e) {
    e.preventDefault();

    map.setCenter(gocheok);
});
$("#to-incheon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(incheon);
});
$("#to-suwon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(suwon);
});
$("#to-daejeon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(daejeon);
});
$("#to-gwangju").on("click", function(e) {
    e.preventDefault();

    map.setCenter(gwangju);
});
$("#to-daegu").on("click", function(e) {
    e.preventDefault();

    map.setCenter(daegu);
});
$("#to-changwon").on("click", function(e) {
    e.preventDefault();

    map.setCenter(changwon);
});
$("#to-sajik").on("click", function(e) {
    e.preventDefault();

    map.setCenter(sajik);
});

var map = new naver.maps.Map('map', mapOptions);



var markerLG = {
    position: jamsil.destinationPoint(90, -50),
    map: map,
    icon: {
        url: './images/map/emblem_LG.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerOB = {
    position: jamsil.destinationPoint(90, 50),
    map: map,
    icon: {
        url: './images/map/emblem_OB.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerWO = {
    position: gocheok.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_WO.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerSK = {
    position: incheon.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_SK.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerKT = {
    position: suwon.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_KT.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerHH = {
    position: daejeon.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_HH.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerHT = {
    position: gwangju.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_HT.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerSS = {
    position: daegu.destinationPoint(50, 50),
    map: map,
    icon: {
        url: './images/map/emblem_SS.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerNC = {
    position: changwon.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_NC.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};
var markerLT = {
    position: sajik.destinationPoint(0, 100),
    map: map,
    icon: {
        url: './images/map/emblem_LT.png',
        size: new naver.maps.Size(64,41),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(32, 20)
    }
};

var lg = new naver.maps.Marker(markerLG);
var ob = new naver.maps.Marker(markerOB);
var wo = new naver.maps.Marker(markerWO);
var sk = new naver.maps.Marker(markerSK);
var kt = new naver.maps.Marker(markerKT);
var hh = new naver.maps.Marker(markerHH);
var ht = new naver.maps.Marker(markerHT);
var ss = new naver.maps.Marker(markerSS);
var nc = new naver.maps.Marker(markerNC);
var lt = new naver.maps.Marker(markerLT);
</script>

<script>
var HOME_PATH = window.HOME_PATH || '.';

var sikdang = new naver.maps.LatLng(37.510272311999096, 127.07965190429984),
    
    marker = new naver.maps.Marker({
        map: map,
        position: sikdang
    });

var contentString = [
        '<div class="iw_inner">',
        '   <h3>잠실고박사찰떡생고기</h3>',
        '   <p>서울 송파구 백제고분로7길 8| 서울 송파구 잠실동 195-12<br />',        
        '       02-413-1711 <br />',
        '   </p>',
        '</div>'
    ].join('');

var infowindow = new naver.maps.InfoWindow({
    content: contentString
});

naver.maps.Event.addListener(marker, "click", function(e) {
    if (infowindow.getMap()) {
        infowindow.close();
    } else {
        infowindow.open(map, marker);
    }
});

// infowindow.open(map, marker);
</script>
</article>
</body> 
</html>