<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>no title</title>
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

<script language="javascript" type="text/javascript">

function checkform()
{
	 
	
	 if (document.getElementById('nameid').value=="")
	{
		alert("Department name cannot be empty");
		return false;
	}
	 
	 if (document.getElementById('contentid').value=="")
	{
		alert("Department introduction should not be empty");
		return false;
	}

	return true;
	
}
</script>
</head>

<body>
<form action="method!keshiadd2" method="post"  onsubmit="return checkform()">
<table width="70%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="95%" class="STYLE1"><span class="STYLE3"></span>Add Department</td>
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
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Department</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <select style="width:100px" name="name" id="nameid">
              <option value="">--Choose--</option>
              <option value="Nephrology">Nephrology</option>
              <option value="bb">bb</option>
              <option value="cc">cc</option>
              <option value="dd">dd</option>
              <option value="ee">ee</option>
              <option value="ff">ff</option>
               <option value="gg">gg</option>
                <option value="other">other</option>
            </select>
            </span></div></td>
          </tr>
          
          <tr>
            <td width="30%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Department Introduction</span></div></td>
            <td width="70%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
           <textarea  cols="40" rows="8" class="STYLE6" name="content" id="contentid" ></textarea>
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
