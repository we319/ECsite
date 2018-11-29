<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script=Type" content="text/javaxcript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>admin画面</title>
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

#itemAdmin{
 width:300px;
 margin:0px 25px 0px 25px;
 padding:25px 25px;
 border:1px solid #333;
 display:inline-block;
}
#userAdmin{
 width:300px;
 margin:0px 25px 0px 25px;
 padding:25px 25px;
 border:1px solid #333;
 display:inline-block;
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
            <p>ADMIN</p>
        </div>
        <div id="itemAdmin">
            <h3>商品管理</h3>
            <s:form action="ItemCreateAction">
            <s:submit value="新規登録"/>
            </s:form>
            <s:form action="ItemListAction">
            <s:submit value="一覧"/>
            </s:form>
        </div>
        <div id="userAdmin">
            <h3>ユーザー管理</h3>
            <s:form action="UserCreateAction">
            <s:submit value="新規登録"/>
            </s:form>
            <s:form action="UserListAction">
            <s:submit value="一覧"/>
            </s:form>
        </div>
        <p>ユーザー用画面は
            <a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
    </div>
    <div id="footer">
        <div id="pr"></div>
    </div>
</body>
</html>