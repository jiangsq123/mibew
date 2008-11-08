<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>${msg:leavemessage.sent.title}</title>
<link rel="shortcut icon" href="${webimroot}/images/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="${webimroot}/chat.css" />
</head>
<style>
#header{
	height:50px;
	background:url(${tplroot}/bg_domain.gif) repeat-x top;
	background-color:#5AD66B;
	width:99.6%;
	margin:0px 0px 20px 0px;
}
#header .mmimg{
	background:url(${tplroot}/quadrat.gif) bottom left no-repeat;
}
</style>
<body bgcolor="#FFFFFF" text="#000000" link="#C28400" vlink="#C28400" alink="#C28400" style="margin:0px">
<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<td valign="top" style="padding:5px">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
		<tr>
			<td width="100%" height="100" style="padding-left:20px;">
		    	${if:ct.company.chatLogoURL}
		    		${if:webimHost}
		            	<a onclick="window.open('${page:webimHost}');return false;" href="${page:webimHost}">
			            	<img src="${page:ct.company.chatLogoURL}" border="0" alt="">
			            </a>
			        ${else:webimHost}
		            	<img src="${page:ct.company.chatLogoURL}" border="0" alt="">
			        ${endif:webimHost}
			    ${else:ct.company.chatLogoURL}
	    			${if:webimHost}
	        	    	<a onclick="window.open('${page:webimHost}');return false;" href="${page:webimHost}">
	        	    		<img src="${webimroot}/images/webimlogo.gif" border="0" alt="">
	        	    	</a>
				    ${else:webimHost}
				    	<img src="${webimroot}/images/webimlogo.gif" border="0" alt="">
				    ${endif:webimHost}
		        ${endif:ct.company.chatLogoURL}
			</td>
			<td nowrap style="padding-right:10px"><SPAN style="font-size:16px;font-weight:bold;color:#525252">${msg:leavemessage.sent.title}</SPAN></td>
		</tr>
		</table>
		<table cellspacing="0" cellpadding="0" border="0" id="header" class="bg_domain">
		<tr>
			<td style="padding-left:20px;color:white;" class="mmimg" width="770">
				${msg:leavemessage.sent.message}
			</td>
			<td align="right" style="padding-right:17px;">
				<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td><a href="javascript:window.close();" title="${msg:chat.mailthread.sent.close}"><img src='${webimroot}/images/buttons/back.gif' width="25" height="25" border="0" alt="" /></a></td>
					<td width="5"></td>
					<td class="button"><a href="javascript:window.close();" title="${msg:chat.mailthread.sent.close}">${msg:chat.mailthread.sent.close}</a></td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
	</td>
</tr>
</table>
</body>
</html>