function Form(){
        this.$username=$('#username');
        this.$pass=$('#password');
        this.$repass=$('#repass');
        this.$tel=$('#tel');
        this.$form=$('form');
        this.$namevalue=this.$username.val();
        this.$passvalue=this.$pass.val();
        this.$repassvalue=this.$repass.val();
        this.$emailvalue=this.$tel.val();
        this.$stop=false;
        this.init=function(){
            var $that=this;
            this.$username.on('blur',function () {
                $that.$namevalue=$that.$username.val();
                var reg=/^([\u4e00-\u9fa5]|\w){3,15}$/g;
                if($that.$namevalue!==""){
                    if(reg.test($that.$namevalue)){
                        $.ajax({
                            type:'post',
                            url:'../../php/registor.php',
                            async:true,
                            data:{
                                repeatname:$that.$namevalue
                            }
                        }).done(function (value) {
                            if(!value){
                                $('.user').css('color','green').html("√");
                                $that.$stop=true;
                            }else{
                                $('.user').css('color','red').html("用户名已存在");
                                $that.$stop=false;
                            }
                        })

                    }else{
                        $('.user').css('color','red').html("请输入正确的格式");
                        $that.$stop=false;
                    }
                }else{
                    $('.user').css('color','red').html("用户名不能为空");
                    $that.$stop=false;
                }
            });
            this.$pass.on('blur',function () {
                $that.$passvalue=$that.$pass.val();
                var reg=/^[^\u4e00-\u9fa5]{6,}/g;
                if($that.$passvalue!==""){
                    if(reg.test($that.$passvalue)){
                        $('.pass').css('color','green').html("√");
                        $that.$stop=true;
                    }else{
                        $('.pass').css('color','red').html("请输入正确的格式");
                        $that.$stop=false;
                    }
                }else{
                    $('.pass').css('color','red').html("密码不能为空");
                    $that.$stop=false;
                }
            });
            this.$repass.on('blur',function () {
                $that.$repassvalue=$that.$repass.val();
                if($that.$repassvalue!==""){
                    if($that.$repassvalue===$that.$passvalue){
                        $('.dbpass').css('color','green').html("√");
                        $that.$stop=true;
                    }else{
                        $('.dbpass').css('color','red').html("确认密码不一致");
                        $that.$stop=false;
                    }
                }else{
                    $('.dbpass').css('color','red').html("确认密码不能为空");
                    $that.$stop=false;
                }
            });
            this.$tel.on('blur',function () {
                $that.$emailvalue=$that.$tel.val();
                var reg=/^(\d){11}$/g;
                if($that.$emailvalue!==""){
                    if(reg.test($that.$emailvalue)){
                        $('.telphone').css('color','green').html("√");
                        $that.$stop=true;
                    }else{
                        $('.telphone').css('color','red').html("请输入正确的手机号码格式");
                        $that.$stop=false;
                    }
                }else{
                    $('.telphone').css('color','red').html("手机号码不能为空");
                    $that.$stop=false;
                }
            });
            this.btnSubmit();
        }
        this.btnSubmit=function(){
            var that=this;
            this.$form.on('submit',function () {
                if(that.$namevalue===""||that.$passvalue===""||that.$repassvalue===""||that.$emailvalue===""||that.$stop===false){
                    $('strong').css('color','red').html('表单不能为空提交');
                    return false;
                }else{
                    $('strong').hide();
                }
            })
        }
}
new Form().init();