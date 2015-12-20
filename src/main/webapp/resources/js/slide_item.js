var leftCt = 0;
	$(function(){
		$("#album").attr("top", "0");
		imgStart("R");
	});
	function imgStart(tp){
		clearInterval($("#imgList").attr("timer"));
		if(tp == "R"){ // 오른쪽 이동
			imgRight();
			$("#imgList").attr("timer", setInterval("imgRight()", 4000)); // 멈춰있는 시간
		}else{ // 왼쪽이동
			if(leftCt == 0){
				var leng = $("#imgList div").size();
				$("#imgList").css("left",parseInt($("#imgList div").eq(0).width()*-1));
				$("#imgList>div").eq(parseInt(leng-1)).clone().prependTo($("#imgList"));
				$("#imgList>div").eq(leng).remove();
				leftCt = 1;
			}
			imgLeft();
			$("#imgList").attr("timer", setInterval("imgLeft()", 3000));
		}
	}
	function imgRight(){
		$("#imgList").animate({
			left : parseInt($("#imgList div").eq(0).width() * -1)
		},300,function(){
			$("#imgList").css("left", "0px");
			$("#imgList>div").eq(0).clone().appendTo($("#imgList"));
			$("#imgList>div").eq(0).remove();
		});
	}
	function imgLeft(){
		var leng = $("#imgList div").size();
		$("#imgList").animate({
			left : 0
		},300,function(){
			$("#imgList").css("left", "0px");
			$("#imgList").css("left",parseInt($("#imgList div").eq(0).width()*-1));
			$("#imgList>div").eq(parseInt(leng-1)).clone().prependTo($("#imgList"));
			$("#imgList>div").eq(leng).remove();
		});
	}