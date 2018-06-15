;(function ($) {
      $(document).ready(function () {           
           $.ajax({//banner的数据接口
               dataType:'json',
               url:'../../php/banner.php'
           }).done(function (data) {
               console.log(data);
               $('.view').children().each(function (index) {
                   var inner=`<a><img src="${data.lunbo[index].url}" title="${data.lunbo[index].sid}" alt=""></a>`;
                   $(this).html(inner);
               });
               $('.kill-index').each(function (index) {
                     var p=`<p><span><i>¥</i><span>${data.kill[index].price}</span></span><span><i>¥</i><span>${data.kill[index].beforePrice}</span></span></p>`;
                     var inner=`<a href="" title="${data.kill[index].sid}"><img src="${data.kill[index].url}" alt=""><span>${data.kill[index].title}</span>${p}</a>`;
                     $(this).html(inner);
                 });
               $('.right-view div').each(function (index) {
                    var inner=`<a href=""><img src="${data.killRight[index].url}" alt="${data.killRight[index].sid}"></a>`;
                    $(this).html(inner);
                });
               $('dl a').each(function (index) {
                    var inner=`<img src="${data.meeting[index].url}" title="${data.meeting[index].sid}">`;
                    $(this).html(inner);
               });
               $('.speity-box ul li').each(function (index) {
                   var inner=`<a href="" sid="${data.speity[index].sid}"><h3><p>${data.speity[index].bold}</p><i class="iconfont icon-rightarrow"></i><span>${data.speity[index].title}</span></h3><div><img src="${data.speity[index].url}" alt=""></div></a>`;
                   $(this).html(inner);
               });
               function shop() {
                   var shop='';
                   for (var i=0;i<data.shop.length;i++){
                       shop+=`<li><a href="details.html?sid=${data.shop[i].sid}" title="${data.shop[i].sid}"><img src="${data.shop[i].url.split(",")[0]}" alt=""><p>${data.shop[i].title}</p><span><b>¥</b>${data.shop[i].price}</span></a></li>`;
                   }
                   $('.enough-box ul').html(shop);
               }
               shop();
               function value() {
                   setInterval(function () {
                    $('.value').html(data.value[rannum(0,data.value.length-1)].title);
                   },1000);
                   function rannum(min,max) {
                       return Math.round(Math.random()*(max-min))+min;
                   }
               }
               value();
           });

      });
})(jQuery);