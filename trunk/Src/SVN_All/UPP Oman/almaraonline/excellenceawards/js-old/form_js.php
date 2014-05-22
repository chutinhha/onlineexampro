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
			
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('Achievements For :'),$('<td width="307" height="25">').html('<b>'+textbx+'</b>')) );
			
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').text('1 Paragraph Description of Achievement'),$('<td width="307" height="25">').html('<textarea name="txtAchievement'+argid+'">'+readCookie("txtAchievement"+argid)+'</textarea>')) );
							
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('Effectiveness Goals Achieved'),$('<td width="307" height="25">').html(' <textarea name="txtEffectiveness'+argid+'"  >'+readCookie("txtEffectiveness"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('Innovation & Creativity -What made it Successful'),$('<td width="307" height="25">').html('<textarea name="txtInnovation'+argid+'"  >'+readCookie("txtInnovation"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('Impact - How did itinfluence/impact yourColleagues/ Industry/Community'),$('<td width="307" height="25">').html('<textarea name="txtImpact'+argid+'"  >'+readCookie("txtImpact"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td height="25" colspan="2" valign="top">').html('Leadership - How has the Achievement demonstrated leadership in your field or industry'),$('<td width="307" height="25">').html(' <textarea name="txtAchievLeadership'+argid+'" >'+readCookie("txtAchievLeadership"+argid)+'</textarea>')) );
							$tbl.append( $('<tr>').append($('<td colspan="3" >').html('At least two references must be provided for each Achievement.')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="3" >').html('<b>Reference 1</b>')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Title:'),$('<td width="307" height="22">').html('<input type="text" name="txtRefTitle1'+argid+'"  value="'+readCookie("txtRefTitle1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Name:'),$('<td width="307" height="22">').html('<input type="text" name="txtRefName1'+argid+'"  value="'+readCookie("txtRefName1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Organization:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefOrganization1'+argid+'"  value="'+readCookie("txtRefOrganization1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Designation/Position:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefDesignation1'+argid+'"  value="'+readCookie("txtRefDesignation1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('E-mail:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefEmail1'+argid+'"  value="'+readCookie("txtRefEmail1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Contact Numbers:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefontactNo1'+argid+'"  value="'+readCookie("txtRefontactNo1"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="3" >').html('<b>Reference 2</b>')));
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Title:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefTitle2'+argid+'"  value="'+readCookie("txtRefTitle2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Name:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefName2'+argid+'"  value="'+readCookie("txtRefName2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Organization:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefOrganization2'+argid+'"  value="'+readCookie("txtRefOrganization2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Designation/Position:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefDesignation2'+argid+'"  value="'+readCookie("txtRefDesignation2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('E-mail:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefEmail2'+argid+'"  value="'+readCookie("txtRefEmail2"+argid)+'">')) );
							$tbl.append( $('<tr>').append($('<td height="22" colspan="2">').html('Contact Numbers:'),$('<td width="307" height="22">').html(' <input type="text" name="txtRefontactNo2'+argid+'"  value="'+readCookie("txtRefontactNo2"+argid)+'">')) );
			
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
    var cookiename = name + "=";  
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
     }  
     return '';  
 }  
</script>