/*
 * uger agent 체크, ie 아닐경우 window blur 이벤트 구분
 */
var ugeragent = navigator.userAgent;
ugeragent = ugeragent.toLowerCase();
var ie = false;
if(-1 < ugeragent.indexOf('msie')){
	ie = true;
}
var window_focus = 'focus';
if(ie == false){
	window.addEventListener('focus', function() {
		window_focus = 'focus';
	},false);
	window.addEventListener('blur', function() {
		window_focus = 'blur';
	},false);
}

var initMainVisual = function(){
	var visual = jQuery("#mainVisual"),
	visuals = visual.find("div.visuals"),
	items = visuals.find("> a"),
	nums = items.length - 1,
	flag = 0,
	circle = visual.find("div.circle"),
	circles = '',
	speed = 500,
	interval = 3000; // 메인 자동롤링 인터벌

	var timerMainVisual;

	timerMainVisual = setInterval(function(){
		if(window_focus == "focus"){
			visual.find("a.next").trigger('click');
		}else{
			return;
		}
	}, interval);
	visual.bind({
		mouseenter: function() {
			clearInterval(timerMainVisual);
		},
		mouseleave: function(){
			timerMainVisual = setInterval(function(){
				if(window_focus == "focus"){
					visual.find("a.next").trigger('click');
				}else{
					return;
				}
			}, interval);
		}
	});
	// 롤링 동작 처리
	var rollingVisual = function(){
		if(flag < 0){
			flag = nums;
		}else if(flag > nums){
			flag = 0;
		}
		items.css("z-index","");
		visuals.find("a").eq(flag).css("display","block").css("z-index","1").fadeTo(speed,1,function(){
			visuals.find("a").each(function(index, element) {
				if($(this).index() != flag){
					$(this).css("display","block").css("opacity","0").css("z-index","")
				}
			});
		});
		circle.find("a").removeClass("active");
		circle.find("a").eq(flag).addClass("active");
	};

	// 초기 비주얼 하나만 보이게 처리하고 비주얼 갯수만큼 버튼 생성
	visuals.find("a").each(function(index, element) {
		if($(this).index() == 0){
			$(this).css("display","block").css("opacity","1").css("z-index","1");
			circles += '<a class="active" href="#'+$(this).attr("href")+'">'+$(this).index()+'</a>';
		}else{
			$(this).css("display","block").css("opacity","0").css("z-index","");
			circles += '<a href="#'+$(this).attr("href")+'">'+$(this).index()+'</a>';
		}
	});
	circle.html(circles);

	// 비주얼 롤링 버튼 클릭 바인딩
	circle.find("a").click(function(){
		var eq = $(this).index();
		if(eq != flag){
			flag = eq;
			rollingVisual();
		}
	});

	// 좌우 버튼 클릭 바인딩
	visual.find("a.spinn").click(function(){
		if($(this).hasClass("prev")){
			flag = flag - 1;
			rollingVisual()
		}else if($(this).hasClass("next")){
			flag = flag + 1;
			rollingVisual()
		}
		return false;
	});
};
// 로드시 initMainVisual 함수 실행
jQuery(function(){
	initMainVisual();
});