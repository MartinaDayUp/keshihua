<html xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8"/>
  <meta name="renderer" content="webkit|ie-comp|ie-stand"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="Bookmark" th:href="@{/favicon.ico}"/>
  <link rel="Shortcut Icon" th:href="@{/favicon.ico}"/>

  <link rel="stylesheet" type="text/css" th:href="@{/h-ui/css/H-ui.min.css}" />
  <link rel="stylesheet" type="text/css" th:href="@{/h-ui.admin/css/H-ui.admin.css}"/>
  <link rel="stylesheet" type="text/css" th:href="@{/h-ui.admin/css/H-ui.login.css}"/>
  <link rel="stylesheet" type="text/css" th:href="@{/lib/Hui-iconfont/1.0.8/iconfont.css}"/>
  <link rel="stylesheet" type="text/css" th:href="@{/h-ui.admin/skin/default/skin.css}" id="skin"/>
  <link rel="stylesheet" type="text/css" th:href="@{/h-ui.admin/css/style.css}"/>
  <script type="text/javascript"  th:src="@{/lib/jquery.1.9.1/jquery.min.js}"></script>
  <script type="text/javascript"  th:src="@{/h-ui/js/H-ui.min.js}"></script>

<title>后台登录</title>
</head>
<body>
<div class="header"><h2>&nbsp;&nbsp我的单车管理系统</h2></div>
<div class="loginWraper">
  <div id="loginform" class="loginBox">
    <form class="form form-horizontal" action="/login" method="POST">
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <input id="account" name="account" type="text" placeholder="账户" class="input-text size-L" />
        </div>
      </div>
      <br/>
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <input id="password" name="password" type="password" placeholder="密码" class="input-text size-L" />
        </div>
      </div>
      <br/>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-4">
          <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;&nbsp;登&nbsp;&nbsp;录&nbsp;&nbsp;" />
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;&nbsp;取&nbsp;&nbsp;消&nbsp;&nbsp;" />
        </div>
      </div>
    </form>
  </div>
</div>
<div class="footer">学大数据，来数通教育！</div>

</body>
</html>