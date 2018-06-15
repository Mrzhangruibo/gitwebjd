;(
    function ($) {
      if($.cookie('sidIndex')&&$.cookie('numIndex')){
       var arrSid=$.cookie('sidIndex').split(',');
       var arrNum=$.cookie('numIndex').split(',');
       for(var i=0;i<arrSid.length;i++){
           createList(arrSid[i],arrNum[i]);
       }
      $('.add').on('click',function () {
          var num=parseInt($(this).prev('.num').val());
          var unit=parseFloat($(this).parents('.list-three').prev('.list-two').html().replace('¥',""));
          $('.num').val(num+1);
          num=parseInt($(this).prev('.num').val());
          $(this).parents('.list-three').next('.list-four').html((num*unit).toFixed(2));
          var sid=$(this).parents('.list').find('a').find('img').attr('title');
          arrNum[$.inArray(sid,arrSid)]=num;
          $.cookie('numIndex',arrNum,7);
          if($(this).parents('.list').find('.listOli').prop('checked')){
              change();
          }
      });
      $('.minus').on('click',function () {
          var num=parseInt($(this).next('.num').val());
          var unit=parseFloat($(this).parents('.list-three').prev('.list-two').html().replace('¥',""));
          $('.num').val(num-1);
          num=parseInt($(this).next('.num').val());
          $(this).parents('.list-three').next('.list-four').html((num*unit).toFixed(2));
          var sid=$(this).parents('.list').find('a').find('img').attr('title');
          arrNum[$.inArray(sid,arrSid)]=num;
          $.cookie('numIndex',arrNum,7);
          if($(this).parents('.list').find('.listOli').prop('checked')){
              change();
          }
      });
      $('.delete').on('click',function () {
          var sid=$(this).parents('.list').find('a').find('img').attr('title');
          arrNum.splice($.inArray(sid,arrSid),1);
          arrSid.splice($.inArray(sid,arrSid),1);
          $.cookie('numIndex',arrNum,7);
          $.cookie('sidIndex',arrNum,7);
          $(this).parents('.list').remove();
          if(!($.cookie('sidIndex')&&$.cookie('numIndex'))){
              $('.cart-shop').hide();
              $('.hidden').show(); 
          }
      });
      $('.all').on('click',function () {
          if($(this).prop('checked')){
              $('input[type=checkbox]').prop('checked',true);
              change();
          }else{
              $('input[type=checkbox]').prop('checked',false);
              $('.set-right b').html("0.00");
              $('.set-right:visible > span >i').html(0);
          }
      });
        $('.hidden').hide();
      }else{
        $('.hidden').show();
        $('.cart-shop').hide();
      }
      $('.listOli').on('click',function () {
          if($(this).prop('checked')){
              if($('.shop-list').find('.list:visible').find('input:checked').size()===arrSid.length){
                  $('input[type=checkbox]').prop('checked',true);
              }
              change();
          }else{
              $('.all').prop('checked',false);
              if($('.shop-list').find('.list:visible').find('input:checked').size()===0){
                  $('#merchant').prop('checked',false);
                  $('.set-right b').html("0.00");
                  $('.set-right:visible > span >i').html(0);
              }else{
                  change();
              }
          }
      });
      function change() {
          var sum=0;
          var visibleInput=$('.shop-list').find('.list:visible').find('input:checked');
          visibleInput.parents(".list:visible").find('.list-four').each(function (index) {
              sum+=parseFloat($('.list-four:visible').eq(index).html());
          });
          $('.set-right b').html(sum.toFixed(2));
          $('.set-right:visible > span >i').html(visibleInput.size());
      }
      function createList(sid,num) {
          $.ajax({
              url:'../../php/cart.php',
              dataType:'json',
          }).done(function (data) {
              for(var i=0;i<data.length;i++){
                if(sid===data[i].sid){
                  var Oli=$('.list:hidden').clone(true);
                  Oli.find('img').attr('src',data[i].url.split(',')[0]);
                  Oli.find('img').attr('title',data[i].sid);
                  Oli.find('em').html(data[i].title);
                  Oli.find('.list-two').html('¥'+data[i].price);
                  Oli.find('.list-three').find('input').val(num);

                  var money=parseFloat(data[i].price);
                  Oli.find('.list-four').html((money*parseInt(num)).toFixed(2));
                  Oli.css('display','block');
                  $('.shop-list').append(Oli);

                }
              }
          });
      }
    }
)(jQuery);