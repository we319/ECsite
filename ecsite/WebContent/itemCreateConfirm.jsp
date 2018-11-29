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
<title>itemCreateConfirm画面</title>
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
</head>
<body>
    <div id="header">
       <div id="pr">
       </div>
    </div>
    <div id="main">
        <div id="top">
            <p>ItemCreateConfirm</p>
        </div>
        <div>
            <h3>登録内容は以下でよろしいでしょうか。</h3>
            <s:form action="ItemCreateCompleteAction">
                <table>
                    <tr>
                        <td><label>商品名：</label></td>
                        <td><s:property value="itemName"/></td>
                    </tr>
                    <tr>
                        <td><label>価格：</label></td>
                        <td><s:property value="itemPrice"/><span>円</span></td>
                    </tr>
                    <tr>
                        <td><label>在庫数：</label></td>
                        <td><s:property value="itemStock"/><span>個</span></td>
                    </tr>
                    <tr>
                        <td><s:submit value="完了"/></td>
                    </tr>
                </table>
            </s:form>
         </div>
    </div>
    <div id="footer">
        <div id="pr">
        </div>
    </div>
</body>
</html>