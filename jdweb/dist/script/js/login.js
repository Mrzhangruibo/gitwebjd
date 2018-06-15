;(function () {
    function Login() {
        var that=this;
     this.username=$('#username');
     this.password=$('#password');
     this.submit=$('#submit');
     this.userValue='';
     this.passValue="";
     this.stop=true;
     this.init=function () {
        this.username.blur(function () {
            that.userValue=that.username.val();
            if(that.userValue===""){
                that.stop=false;
            }else{
                that.stop=true;
            }
        });
        this.password.blur(function () {
            that.passValue=that.password.val();
            if(that.passValue===""){
                that.stop=false;
            }else{
                that.stop=true;
            }
        });
        this.submit.on('click',function () {
            if(this.userValue===""||this.passValue===""||this.stop){
                alert("用户名和密码都不能为空");
            }else{
               $.ajax({
                   type:'post',
                   url:"../../php/login.php",
                   async:true,
                   data:{
                       user:that.userValue,
                       password:that.passValue
                   }
               }).done(function (d){
                   console.log(d);
                   if(d){
                      location.href='../html/index.html';
                      that.addCookie('username',that.userValue,7);
                   }else{
                      alert('用户名密码错误');
                   }
               });
            }
        })
     };
     this.addCookie=function (key, value, day) {
        var date = new Date();
        date.setDate(date.getDate() + day);
        document.cookie = key + '=' + encodeURI(value) + ';expires=' + date;
     }
    }

    new Login().init();



})(jQuery);