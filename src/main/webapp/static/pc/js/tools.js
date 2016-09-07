//头部导航栏信息提示模块，鼠标移入显示，鼠标移出消失
/*
使用方法：
1、鼠标移入的块作为父元素，信息展示栏作为子元素；
2、父元素需要absolute定位并设置有top、left/right值，子元素需要设置absolute定位；
3、父元素需要添加data-hover-target='information'属性，子元素添加类information(此类在使用时可以随意添加css样式)；
4、子元素需要添加类hide(此类定义在reset.css内)；
*/
$(document).on("mouseover","[data-hover-target='information']",function(){
    var top = parseInt($(this).css("top"))+parseInt($(this).css("height"))+"px";
    var left = -($(".information",$(this)).width())/2+($(this).width())/2+"px";  
    $(".information",$(this)).removeClass("hide").css({"top":top,"left":left});
})

$(document).on("mouseout","[data-hover-target='information']",function(){
    $(".information",$(this)).addClass("hide");
})
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
