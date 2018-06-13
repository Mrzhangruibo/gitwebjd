;(
    function ($) {
      $(document).ready(function () {
         $('.adver-top').animate({height:'80px'});
      });//顶部广告页面加载出现
      $('.off').on('click',function () {
          $('.adver-top').animate({height:0});
      });//点击按钮让广告关闭
      $('.backTop').on('click',function () {
          $(document).scrollTop(0);
      });//点击回到顶部
      $(window).scroll(function () {
        if($(document).scrollTop()>700){
            $('.top-search').show();
        }else{
            $('.top-search').hide();
        }
      });//滚动条超过700显示顶部搜索

       $('.text-search').on('input',function () {//搜索
       $.ajax({
        url:"https://suggest.taobao.com/sug?code=utf-8&q="+$('.text-search').val()+"&callback=",
        dataType:'jsonp',
    }).done(function (data) {
        var inner='';
        if($('.text-search').val()===""){
            $('.left-text > ul').hide();
        }else{
            for(var i=0;i<10;i++){
                inner+='<li><a href="##"><em>'+data.result[i][0]+'</em><b>'+data.result[i][1]+'万个结果</b></a></li>';
            }
            $('.left-text > ul').html(inner).show();
        }
        })
      });
      $('.text-search').blur(function () {
          $('.left-text > ul').hide();
      });
      function Banner() {
          var that=this;
          this.index=0;
          this.banner=$('.view li');
          this.btn=$('.btn b');
          this.left=$('.left');
          this.time=null;
          this.right=$('.right');
          this.hover=function () {
             that.index=$(this).index();
             $(this).addClass('btn-hover').siblings('.btn b').removeClass('btn-hover');
             that.banner.eq(that.index).css('z-index',2).stop().animate({opacity:1}).siblings('.view li').css("z-index",1).stop().animate({opacity:0});
          };
          this.rightClick=function () {
             that.index++;
             if(that.index===8){
                 that.index=0;
             }
             that.btn.eq(that.index).addClass('btn-hover').siblings('.btn b').removeClass('btn-hover');
             that.banner.eq(that.index).css("z-index",2).stop().animate({opacity:1}).siblings('.view li').css("z-index",1).stop().animate({opacity:0});
          };
          this.leftClick=function () {
              that.index--;
              if(that.index===-1){
                  that.index=7;
              }
              that.btn.eq(that.index).addClass('btn-hover').siblings('.btn b').removeClass('btn-hover');
              that.banner.eq(that.index).css("z-index",2).stop().animate({opacity:1}).siblings('.view li').css("z-index",1).stop().animate({opacity:0});
          }
      }//轮播图效果
      Banner.prototype.init=function () {
         var that=this;
         this.btn.hover(this.hover);
         this.right.on('click',this.rightClick);
         this.left.on('click',this.leftClick);
         this.time=setInterval(this.rightClick,2000);
         $('.banner-middle').hover(function () {
             clearInterval(that.time);
         },function () {
             that.time=setInterval(that.rightClick,2000);
         });
      };
      new Banner().init();
      function Tab(){
        var that=this;
        this.tabHeader=$('.tab-header p a');
        this.tab_=$('.tabb');
        this.init=function () {
          this.tabHeader.hover(function () {
              var shortx=$(this).offset().left-$('.tab-header p').offset().left;
              $('.tab-header p b').css('left',shortx+5+'px');
              that.tab_.eq($(this).index()).show().siblings('.tabb').hide();
          });
        };
      }//tab切换效果
      new Tab().init();
      function Kill() {
         var that=this;
         this.time=null;
         this.hours=$('.hours');
         this.minutes=$('.minutes');
         this.seconds=$('.seconds');
         this.init=function () {
         if(that.timer()<=0){
             clearInterval(this.time);
         };
           this.time=setInterval(function (){
               if(that.timer()<=0){
                   clearInterval(that.time);
               };
           },1000)
         };
         this.timer=function () {
            var futrueTime=new Date('2018/7/12 10:06:00');
            var nowTime=new Date();
            var num=(futrueTime-nowTime)/1000;
            var hours=parseInt(num%86400/3600);
            var mins=parseInt(num%3600/60);
            var secs=parseInt(num%60);
            if(num<=0){
                clearInterval(this.time);
            }
            if(hours<10){
                hours='0'+hours;
            }
             if(mins<10){
                 mins='0'+mins;
             }
            if(secs<10){
                secs='0'+secs;
            }
            this.hours.children().html(hours);
            this.minutes.children().html(mins);
            this.seconds.children().html(secs);
            return num;
         }
      }//秒杀倒计时
      new Kill().init();
      function KillMiddle() {
        var that=this;
        this.time=null;
        this.oli=$('.kill-middle ul li');
        this.middleLeft=$('.middle-left');
        this.middleRight=$('.middle-right');
        this.index=0;
        this.before=0;
        this.init=function () {
           this.middleLeft.on('click',this.leftClick);
           this.middleRight.on('click',this.rightClick);
           this.time=setInterval(this.rightClick,3000);
           $('.kill-middle').hover(function () {
                clearInterval(that.time);
           },function () {
               that.time=setInterval(that.rightClick,3000);
           });
        };
        this.leftClick=function () {
          that.index--;
          if(that.index<0){
              that.index=4;
          }
          that.oli.eq(that.before).stop().animate({left:'-800px'},600);
          that.oli.eq(that.index).css('left','800px').stop().animate({left:0},600);
          that.before=that.index;
        };
        this.rightClick=function () {
           that.index++;
           if(that.index>4){
               that.index=0;
           }
        that.oli.eq(that.before).stop().animate({left:'800px'},600);
        that.oli.eq(that.index).css('left','-800px').stop().animate({left:0},600);
        that.before=that.index;
        }
      };//秒杀中部区域无缝切换
      new KillMiddle().init();
      function KillRight() {
        var that=this;
        var index=1;
        this.time=null;
        this.rightView=$('.right-view > div');
        this.Op=$('.Op');
        this.init=function () {
          this.time=setInterval(function () {
           that.Op.eq(index).addClass('kill-hover').siblings('span').removeClass('kill-hover');
           that.rightView.eq(index).css('left','180px').animate({left:'0'},600).siblings('div').animate({left:'-180px'},600);
           if(index===0){
               index=1;
           }else if(index===1){
               index=0;
           }
          },2000)
        }
      }//秒杀右侧的自动切换
      new KillRight().init();
      function Speity() {
          var that=this;
          this.time=null;
          this.nowIndex=0;
          this.beforeIndex=0;
          this.speity=$('.speity-box');
          this.speityView=$('.speity-box > ul');
          this.speityBtn=$('.speity-box > p > a');
          this.speityLeft=$('.speityLeft');
          this.speityRight=$('.speityRight')
          this.init=function () {
              this.speityBtn.on('mouseover',this.BtnHover);
              this.speityLeft.on('click',this.leftClick);
              this.speityRight.on('click',this.rightClick);
              that.time=setInterval(this.rightClick,3000);
              this.speity.hover(function () {
                   clearInterval(that.time)
              },function () {
                  that.time=setInterval(that.rightClick,3000);
              })
          };
          this.BtnHover=function (ev) {
             that.nowIndex=$(this).index();
             that.commond(ev);
             that.beforeIndex=that.nowIndex;
          };
          this.leftClick=function (ev) {
              that.nowIndex--;
              if(that.nowIndex<0){
                  that.nowIndex=3;
              }
              that.commond(ev);
              that.beforeIndex=that.nowIndex;
          };
          this.rightClick=function (ev) {
              that.nowIndex++;
              if(that.nowIndex>3){
                  that.nowIndex=0;
              }
              that.commond(ev);
              that.beforeIndex=that.nowIndex;
          };
          this.commond=function (ev) {
              if(this.nowIndex===0&&this.beforeIndex===3&&ev&&(ev.target.nodeName==='I'||ev.target.nodeName==='SPAN')){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'1190px'});
                  this.speityView.eq(this.nowIndex).css('left','-1190px').stop().animate({left:0});
              }else if(this.nowIndex===3&&this.beforeIndex===0&&ev&&(ev.target.nodeName==='I'||ev.target.nodeName==='SPAN')){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'-1190px'});
                  this.speityView.eq(this.nowIndex).css('left','1190px').stop().animate({left:0});
              }else if(this.nowIndex>this.beforeIndex&&ev&&(ev.target.nodeName==='I'||ev.target.nodeName==='SPAN')){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'1190px'});
                  this.speityView.eq(this.nowIndex).css('left','-1190px').stop().animate({left:0});
              }else if(this.nowIndex<this.beforeIndex&&ev&&(ev.target.nodeName==='I'||ev.target.nodeName==='SPAN')){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'-1190px'});
                  this.speityView.eq(this.nowIndex).css('left','1190px').stop().animate({left:0});
              }else if(this.nowIndex===0&&this.beforeIndex===3){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'-1190px'});
                  this.speityView.eq(this.nowIndex).css('left','1190px').stop().animate({left:0});
              }else if(this.nowIndex>this.beforeIndex){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'-1190px'});
                  this.speityView.eq(this.nowIndex).css('left','1190px').stop().animate({left:0});
              }else if(this.nowIndex<this.beforeIndex){
                  this.speityBtn.eq(this.nowIndex).addClass('hover').siblings('a').removeClass('hover');
                  this.speityView.eq(this.beforeIndex).stop().animate({left:'1190px'});
                  this.speityView.eq(this.nowIndex).css('left','-1190px').stop().animate({left:0});
              }
          }
      }//特色推荐的无缝切换
      new Speity().init();
        if(getCookie('username')){
            $('.cookie').html('您好'+getCookie('username'));
            $('.exit').html('退出');
        }//判断是否存在cookie
        $('.exit').on('click',function () {
           if(getCookie('username')){
               delCookie('username');
               $('.cookie').html('您好,请登录');
               $('.exit').html('立即注册');
           }else{
               this.href='registor.html';
           }
        });//点击删除cookie
        function getCookie(key) {
            var str = decodeURI(document.cookie);
            var arr = str.split('; ');
            for (var i = 0; i < arr.length; i++) {
                var arr1 = arr[i].split('=');
                if (arr1[0] == key) {
                    return arr1[1];
                }
            }
        }//封装获取cookie的函数
        function delCookie(key) {
            addCookie(key, '', -1); 
        }//封装删除cookie的函数
        function addCookie(key, value, day) {
            var date = new Date();
            date.setDate(date.getDate() + day);
            document.cookie = key + '=' + encodeURI(value) + ';expires=' + date;
        }//封装增加cookie的函数
    }
)(jQuery);