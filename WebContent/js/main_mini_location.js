$(document).ready(function() {
	
	function initialize() {
		 var Y_point = 37.499001; // Y 좌표
		 var X_point = 127.032906; // X 좌표
		 var zoomLevel = 17; // 첫 로딩시 보일 지도의 확대 레벨
		 var markerTitle = "KH & GYM"; // 현재 위치 마커에 마우스를 올렸을때 나타나는 이름
		 var markerMaxWidth = 300; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

		 // 말풍선 내용
		 var contentString = '<div id="content">' +
		 '<div id="siteNotice">' +
		 '</div>' +
		 '<h3 id="firstHeading" class="firstHeading">KH & GYM</h3>' +
		 '<div id="bodyContent">' +
		 '<p>서울특별시 강남구 역삼동 강남구 테헤란로14길<br />' +
		 'Tel. Tel 02) 0123-4567</p>' +
		 '</div>' +
		 '</div>';

		 var myLatlng = new google.maps.LatLng(Y_point, X_point);
		 var mapOptions = {
		 zoom: zoomLevel,
		 center: myLatlng,
		 mapTypeId: google.maps.MapTypeId.ROADMAP
		 }
		 var map = new google.maps.Map(document.getElementById('mini_map_view'), mapOptions);

		 var marker = new google.maps.Marker({
		 position: myLatlng,
		 map: map,
		 title: markerTitle
		 });

		 var infowindow = new google.maps.InfoWindow(
		 {
		 content: contentString,
		 maxWidth: markerMaxWidth
		 }
		 );

		 google.maps.event.addListener(marker, 'click', function() {
		 infowindow.open(map, marker);
		 });
		 }
	
	initialize();
});