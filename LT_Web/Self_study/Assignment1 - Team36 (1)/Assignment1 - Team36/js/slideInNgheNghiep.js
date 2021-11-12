var YoudivOffst = $('.sectionNgheNghiep').offset().top;
var YoudivOffstBottom = $('.sectionFooter').offset().top;
console.log("YoudivOffst",YoudivOffst);
console.log("YoudivOffstBottom", YoudivOffstBottom);
console.log("window",$(window).scrollTop())

$(window).scroll(function(){
    var windScllTop = $(window).scrollTop();
    if ( YoudivOffst  > windScllTop    ){
        var content = document.getElementsByClassName("contentNN");
        var link = document.getElementsByClassName("linkNN");
        content[0].className += " contentNgheNghiep";
        link[0].className += " btnNgheNghiep";
    }
});
