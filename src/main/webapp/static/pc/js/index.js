$(function(){ 
//鼠标移入移出弹出框        
    $('[data-toggle="popover"]').each(function(){
        var element=$(this);
        var id=element.attr('id');
        var txt=element.html();
        element.popover({
            trigger:'manual',  //弹出框的触发方式
            placement:'bottom',  //弹出框出现的位置
            title:txt,  //弹出框的标题
            html:'true',  //允许弹出框中出现html代码并自动编译
            content:ContentMethod(txt),  //弹出框中的内容
        }).on("mouseenter",function(){
            var _this = this;
            $(this).popover("show");
            $(this).siblings(".popover").on("mouseleave",function(){
                $(_this).popover('hide');
            });
        }).on("mouseleave", function(){
            var _this = this;
            setTimeout(function(){
            if (!$(".popover:hover").length)
            {$(_this).popover("hide")}
            }, 100);
        });
    });
});

    function ContentMethod(txt){
        return "<div class='weixin_box'></div>"
    }