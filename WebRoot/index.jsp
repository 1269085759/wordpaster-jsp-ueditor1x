<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ 
	page contentType="text/html;charset=utf-8"%><%@
	page import="org.apache.commons.lang.StringUtils" %><%
/*	
	更新记录：
		2013-01-25 取消对SmartUpload的使用，改用commons-fileupload组件。因为测试发现SmartUpload有内存泄露的问题。
*/
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String clientCookie = request.getHeader("Cookie");
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;"/>
	<title>编辑器完整版实例-1.2.6.0</title>
	<script type="text/javascript" src="ueditor.config.js"></script>
	<script type="text/javascript" src="ueditor.all.js" ></script>
	<link type="text/css" rel="Stylesheet" href="WordPaster/css/WordPaster.css"/>
    <link type="text/css" rel="Stylesheet" href="WordPaster/js/skygqbox.css" />
    <script type="text/javascript" src="WordPaster/js/json2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/jquery-1.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.edge.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.app.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.file.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/WordPaster.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/skygqbox.js" charset="utf-8"></script>
</head>
<body>
	<textarea name="后台取值的key" id="myEditor">这里写你的初始化内容</textarea>
	<script type="text/javascript">
        var pasterMgr = new WordPasterManager();
    	pasterMgr.Config["PostUrl"] = "http://localhost:8080/WordPaster2UEditor1x/upload.jsp"
    	pasterMgr.Config["Cookie"] = '<%=clientCookie%>';
    	pasterMgr.Load();//加载控件
		
		 UE.getEditor('myEditor',{onready:function(){//创建一个编辑器实例
			 pasterMgr.SetEditor(this);
		 }});
	</script>
</body>
</html>