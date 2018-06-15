;(
    function () {
      $.ajax({
          type:'post',
          url:"../../php/details.php",
          dataType:'json',
          data:{
              sid:location.href.substr(-1,1)
          }
      }).done(function (data) {
          console.log(data);
          $('.wrap-right h3').html(data.title);
          $('.price b').html("¥"+data.price);
          $('.spic').attr('src',data.url.split(",")[1]);
          $('.bpic').attr('src',data.url.split(",")[1]);
          $('.box ul li').each(function (index) {
             $(this).find('img').attr('src',data.url.split(",")[index+1]);
          });
      });
      function Scale() {
          var that=this;
        this.sbox=$('.sbox');
        this.sc=$('.sc');
        this.spic=$('.spic');
        this.bbox=$('.bbox');
        this.bpic=$('.bpic');
        this.Oli=$('#ullist li');
        this.init=function () {
          this.sbox.hover(function () {
            var shortx=$(this).offset().left;
            var shorty=$(this).offset().top;
            that.sc.css({
                width:that.bbox.width()/that.bpic.width()*that.spic.width()+"px",
                height:that.bbox.height()/that.bpic.height()*that.spic.height()+"px",
                visibility:'visible'
            });
            that.bbox.css('visibility','visible');
            $(document).on("mousemove",function (ev) {
                 that.move(ev,shortx,shorty);
            });
          },function () {
            that.bbox.css('visibility','hidden');
            that.sc.css('visibility','hidden');
          });
          this.Oli.on('click',function () {
             that.spic.attr("src",$(this).children('img').attr("src"));
             that.bpic.attr("src",$(this).children('img').attr("src"));
          })
        };
        this.move=function (ev,shortx,shorty) {
            var l=ev.pageX-shortx-that.sc.outerWidth()/2;
            var t=ev.pageY-shorty-that.sc.outerHeight()/2;
            var ratex=this.bpic.width()/this.bbox.width();
            if(l<=0){
                l=0;
            }else if(l>=that.sbox.width()-that.sc.width()){
                l=that.sbox.width()-that.sc.width();
            }
            if(t<=0){
                t=0;
            }else if(t>=that.sbox.height()-that.sc.height()){
                t=that.sbox.height()-that.sc.height();
            }
            that.sc.css({
                left:l+"px",
                top:t+"px"
            });
            that.bpic.css({
                left:-l*ratex+"px",
                top:-t*ratex+"px"
            })
        }
      }
      new Scale().init();
      function CartCookie() {
          var that=this;
          var sidArr=$.cookie('sidIndex');
          var numArr=$.cookie('numIndex');
          
         this.$sid=null;
         this.$num=$('.add p');
         this.init=function () {
           $('.add-box').on('click',this.addClick);
           $('.minus').on('click',this.minusClick);
           $('.add button').on('click',this.buttonClick);
         };
         this.addClick=function () { //点击加号给数量加1
             var num=parseInt(that.$num.html())+1;
             that.$num.html(num);
         };
         this.minusClick=function () {//点击减号给数量减1
             var num=parseInt(that.$num.html())-1;
             if(num<1){
                 num=1;
             }
             that.$num.html(num);
         };
         this.buttonClick=function () {
             that.$sid=location.href.substr(-1,1);
             var shopNum=that.$num.html();
             if($.cookie('sidIndex')){
                 sidArr=$.cookie('sidIndex').split(',');
                 numArr=$.cookie('numIndex').split(',');
                 if($.inArray(that.$sid,$.cookie('sidIndex').split(','))===-1){
                     sidArr.push(that.$sid);
                     numArr.push(shopNum);
                     $.cookie('sidIndex',sidArr.toString(),7);
                     $.cookie('numIndex',numArr.toString(),7);
                 }else{
                     numArr[$.inArray(that.$sid,$.cookie('sidIndex').split(','))]=
                         parseInt(numArr[$.inArray(that.$sid,$.cookie('sidIndex').split(','))])+parseInt(shopNum);
                     $.cookie('sidIndex',sidArr.toString(),7);
                     $.cookie('numIndex',numArr.toString(),7);
                 }

             }else{
                 sidArr=[];
                 numArr=[];
                 sidArr.push(that.$sid);
                 numArr.push(parseInt(shopNum));
                 console.log(parseInt(shopNum));
                 $.cookie('sidIndex',sidArr.toString(),7);
                 $.cookie('numIndex',numArr.toString(),7);
             }

         };
      }
      new CartCookie().init();
    }
)(jQuery);