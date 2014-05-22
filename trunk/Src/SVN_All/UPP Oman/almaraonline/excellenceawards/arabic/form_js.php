<?php
session_start();
?>
<script type="text/javascript">
function enableAchive(argid){
	 $(function () {
			var textbx = $("#"+argid+"").val();
			if(textbx != '') {
				if ($("#hiddenVal_"+argid+"").length <= 0) {
						var $wrap = $('<div>').attr('id', 'tableWrap'+argid+'');
						var $tbl = $('<table>').attr('class', 'tblestyle');
			
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('إنجازات لــ :'),$('<td width="307" height="25">').html('<b>'+textbx+'</b>')) );
			
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').text('1 اكتبي وصفاً للإنجازات'),$('<td width="307" height="25">').html('<textarea name="txtAchievement'+argid+'">'+readCookie("txtAchievement"+argid)+'</textarea>')) );
							
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('الأهداف المهمة التي تم تحقيقها'),$('<td width="307" height="25">').html(' <textarea name="txtEffectiveness'+argid+'"  >'+readCookie("txtEffectiveness"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('الإبتكارات والإبداع – السبب في تحقيق النجاح'),$('<td width="307" height="25">').html('<textarea name="txtInnovation'+argid+'"  >'+readCookie("txtInnovation"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('الأثر – ما مدى تأثيرها / أثرت في زملائك / في الصناعة / في المجتمع'),$('<td width="307" height="25">').html('<textarea name="txtImpact'+argid+'"  >'+readCookie("txtImpact"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('القيادة – كيف برهنت الإنجازات على نجاح أسلوبك القيادي في المجال الذي تخوضين '),$('<td width="307" height="25">').html(' <textarea name="txtAchievLeadership'+argid+'" >'+readCookie("txtAchievLeadership"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td colspan="3" >').html('يجب توفيرما لا يقل عنمرجعينلكلانجاز.')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="3" >').html('<b>المرجع الأول</b>')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('العنوان:'),$('<td width="307" height="22">').html('<input type="text" name="txtRefTitle1'+argid+'"  value="'+readCookie("txtRefTitle1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('الاسم:'),$('<td width="307" height="22">').html('<input type="text" name="txtRefName1'+argid+'"  value="'+readCookie("txtRefName1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('المؤسسة:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefOrganization1'+argid+'"  value="'+readCookie("txtRefOrganization1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('المسمى الوظيفي:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefDesignation1'+argid+'"  value="'+readCookie("txtRefDesignation1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('البريد الإلكتروني:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefEmail1'+argid+'"  value="'+readCookie("txtRefEmail1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('أرقام يمكن الإتصال بها:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefontactNo1'+argid+'"  value="'+readCookie("txtRefontactNo1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="3" >').html('<b>المرجع الثاني</b>')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('العنوان:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefTitle2'+argid+'"  value="'+readCookie("txtRefTitle2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('الاسم:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefName2'+argid+'"  value="'+readCookie("txtRefName2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('المؤسسة:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefOrganization2'+argid+'"  value="'+readCookie("txtRefOrganization2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('المسمى الوظيفي:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefDesignation2'+argid+'"  value="'+readCookie("txtRefDesignation2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('البريد الإلكتروني:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefEmail2'+argid+'"  value="'+readCookie("txtRefEmail2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('أرقام يمكن الإتصال به:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefontactNo2'+argid+'"  value="'+readCookie("txtRefontactNo2"+argid)+'">')) );
			
						$wrap.append($tbl);
						var hiddenField = '<input type="hidden" name="hiddenVal_'+argid+'" value="'+argid+'" id="hiddenVal_'+argid+'">';
						$('#careerAchi').append(hiddenField);
						$('#careerAchi').append($wrap);
				}
			}
			else
			{
				if ($("#tableWrap"+argid+"").length > 0) {
					$("#tableWrap"+argid+"").remove();
					$("#hiddenVal_"+argid+"").remove();
				}
			}
        });
}
function readCookie(name) {
  /*  var cookiename = name + "=";  
    var ca = document.cookie.split(';');  
     for(var i=0;i < ca.length;i++)  
     {  
         var c = ca[i];  
         while (c.charAt(0)==' ') c = c.substring(1,c.length);  
         if (c.indexOf(cookiename) == 0)
		 {
		 	var tt = c.substring(cookiename.length,c.length);  
			strVal = tt.replace(/[^a-zA-Z 0-9]+/g,' ');
		 	 return strVal;
		 }
     }  */
     return '';  
 }  
</script>