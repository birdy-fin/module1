$(document).ready(function(){
	$("span:first").css("background","white");
	$("span:first").css("color","black");
	$("span:first").css("border","2px solid black");
	$("span:first").css("border-radius","-webkit-calc(18px)");
	$("#container span").mouseover(function(){
		$(this).css("background","white");
		$(this).css("color","black");
		$(this).css("border","2px solid black");
		$(this).css("border-radius","-webkit-calc(18px)");
	});
	$("#container span").mouseout(function(){
		$(this).css("background","#e7370c");
		$(this).css("color","white");
		$(this).css("border","0px");
	})
});
