 <%@ page language="java" pageEncoding="UTF-8"%>
 <%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改专业组</title>
<meta charset="UTF-8"/>
<link rel="stylesheet" href="css/buttons.css">

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px
}

.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}

a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}

a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}

a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.STYLE7 {
	font-size: 15px;
	font-weight: bold;
}

-->
.firTd{
height:35px;
background-color:#FFFFFF;
text-align:right;
padding:0 10px;
width:35%;
}
.secTd{
height:35px;
background-color:#FFFFFF;
text-align:left;
padding:0 10px;
}

.secTd input{
	width:200px;
}
</style>

<script>
function CheckSelect()  
{  
  // 遍历 form  
	 var aCheckbox=document.getElementsByName("zjgl_infoList_checkbox");
	 if (aCheckbox[0].checked == true)  
	 {
	 		 
	  	for ( var i = 1; i < aCheckbox.length; i++)  
	  	{  
	     aCheckbox[i].checked = true;  
		}
	 }
	else  
	{  
		for ( var i = 1; i < aCheckbox.length; i++)  
	  	{  
	     aCheckbox[i].checked = false;  
		}
	} 
}

function deletion()
{
	var msg = "您真的确定要删除吗？";
	if (confirm(msg)==true){
		return true;
	}else{
		return false;
	}
}

var  highlightcolor='#eafcd5';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(var i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(var i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(var i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(var i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

</script>
</head>

<body>
	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="30">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="15" height="30"><img src="images/tab_03.gif"
							width="15" height="30" /></td>
						<td width="1101" background="images/tab_05.gif"><img
							src="images/311.gif" width="16" height="16" /> <span
							class="STYLE4">修改专业组</span></td>
						<td  background="images/tab_05.gif"></td>
						<td width="15"><img src="images/tab_07.gif" width="16"
							height="30" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
			<form name="" id="" action="updateGroup.action" method="post" style="margin:0">  
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="9" background="images/tab_12.gif">&nbsp;</td>
						<td bgcolor="#f3ffe3" align="center">
						 	
						<br>
						<br>
						
							<table width="97%" border="0" align="center" cellpadding="0"
								cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"
								onmouseout="changeback()">
								<tr>
									<td class="firTd">
										<span class="STYLE7">专业组编号</span>
									</td>
									<td class="secTd" >
										<input type="text"  name="objGroup.Group_no"value="<s:property value="objGroup.Group_no"/>" readonly="readonly"/>
									</td>
								</tr>
								<tr>
									<td class="firTd">
										<span class="STYLE7">专业组名称</span>
									</td>
									<td class="secTd" >
										<input type="text"  name="objGroup.Group_name" value="<s:property value="objGroup.Group_name"/>" readonly="readonly" />
									</td>
								</tr>
								<tr>
									<td class="firTd">
										<span class="STYLE7">专业组设立时间</span>
									</td>
									<td class="secTd" >
										<input  type="date" value="<s:property value="objGroup.Group_date"/>" name="objGroup.Group_date"/>
									</td>
								</tr>
								<tr>
									<td class="firTd">
										<span class="STYLE7">基本信息</span>
									</td>
									<td class="secTd" >
										<textarea name="objGroup.Group_comm"   maxlength="90" rows="4" cols="45" ><s:property value="objGroup.Group_comm"/></textarea>
									</td>
								</tr>
								
							</table>
						
						
						<div style="width:97%"align="right">
									<input style="font-size:15px;margin-top:10px;line-height: 27px; height: 27px;" class="button button-action button-rounded"  type="submit"   value="保存" />
						</div>
						</td>
						<td width="9" background="images/tab_16.gif">&nbsp;</td>
					</tr>
				</table>
				</form>
			</td>
		</tr>
		<tr>
			<td height="29">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="15" height="29"><img src="images/tab_20.gif"
							width="15" height="29" /></td>
						<td background="images/tab_21.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="25%" height="29" nowrap="nowrap"><span
										class="STYLE1"></span></td>
									<td width="75%" valign="top" class="STYLE1">
										<div align="right">
											<table width="352" height="20" border="0" cellpadding="0"
												cellspacing="0">

											</table>
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td width="14"><img src="images/tab_22.gif" width="14"
							height="29" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>