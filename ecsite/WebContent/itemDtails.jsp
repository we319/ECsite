<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script=Type" content="text/javaxcript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>itemList画面</title>
</head>
<style type="text/css">
body{
 margin:0;
 padding:0;
 line-height:1.6;
 letter-spacing:1px;
 font-family:Verdana,Helvetica,sans-serif;
 font-size:12px;
 color:#333;
 background:#fff;
}

table{
 margin:0 auto;
 text-align:center;
}
#header{
 width:100%;
 height:80px;
 background-color:gray;
}

#top{
 margin:30px auto;
 width:780px;
 border:1px solid #333;
}

#main{
 width:100%;
 height:500px;
 text-align:center;
}

#footer{
 width:100%;
 height:80px;
 background-color:gray;
}
</style>
<body>
    <div id="header">
        <div id="pr">
        </div>
    </div>
    <div id="main">
        <div id="top">
        <p>Item Details</p>
        </div>
        <div>
            <s:iterator value="itemList">
                <tr>
                    <td><s:property value="id"/>
                    <td><s:property value="itemName"/></td>
                    <td><s:property value="itemPrice"/></td>
                    <td><s:property value="itemStock"/></td>
                    <td><s:property value="insert_date"/></td>
                </tr>
            </s:iterator>

            <p>前の画面へ
            <a href='<s:url action="ItemListAction"/>'>もどる</a></p>

        </div>
    </div>
    <div id="footer">
        <div id="pr">
        </div>
    </div>

</body>
</html>