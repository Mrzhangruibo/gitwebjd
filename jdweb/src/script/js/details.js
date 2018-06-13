;(
    function () {
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
             console.log($(this).children('img').attr("src"));
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
    }
)(jQuery);