<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>No title</title>
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>

<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
 <script type="text/javascript">
	   function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","File upload");
	            pop.build();
	            pop.show();
	           
		    }
	</script>
</head>

<body>
<form action="method!y_userupdate2" method="post"  onsubmit="return checkform()" enctype="multipart/form-data">
<input type="hidden" name="id" value="${bean.id }"/>
<table width="50%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="95%" class="STYLE1"><span class="STYLE3"></span>Edit Doctor Profile</td>
              </tr>
            </table></td>
            
           
            
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
       
          
           <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Name</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <input style="width:50%"  type="text" name="truename"  id="truenameid" value="${bean.truename }" />
            </span></div></td>
          </tr>
          
          <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Phone</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <input style="width:50%"  type="text" name="telephone"  id="telephoneid" value="${bean.telephone }" />
            </span></div></td>
          </tr>
          
            <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Title</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <input style="width:50%"  type="text" name="zhicheng"  id="zhichengid" value="${bean.zhicheng }" />
            </span></div></td>
          </tr>
          
          <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Department</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <select style="width:100px"  name="keshi" id="keshiid"> 
               <c:forEach items="${list}" var="bean2">
               <option value="${bean2.id }" <c:if test="${bean2.id==bean.keshi.id }">selected</c:if>>${bean2.name}</option>
               </c:forEach> 
            </select>
            </span></div></td>
          </tr>
          
           <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Details</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
           <textarea  cols="40" rows="7" class="STYLE6" name="content" id="contentid" >${bean.content } </textarea>
            </span></div></td>
          </tr>
          
            <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Speciality</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
           <textarea  cols="40" rows="7" class="STYLE6" name="shangchang" id="shangchangid" >${bean.shangchang }</textarea>
            </span></div></td>
          </tr>

         
         
        </table></td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          
          
          <tr>
            <td width="100%" class="STYLE4" height="22"  bgcolor="#FFFFFF"><div align="center">
           <input type="submit" value="Submit"/>
               <input type="reset" value="Reset"/>
            </div></td>
          </tr>
          
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
