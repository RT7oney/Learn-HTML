<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta charset="utf-8" />
  <title>{#block name=title#}{#/block#}</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="./public/assets/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/icon.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/font.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/app.css" type="text/css" />
<!-- weui -->
  <!-- <link rel="stylesheet" href="./public/assets/css/weui.css" /> -->
  <!-- <link rel="stylesheet" href="./public/assets/css/jquery-weui.css" /> -->
  <!-- <script src="./public/assets/js/jquery-weui.js"></script> -->
<!-- datepicker -->
  <link rel="stylesheet" href="./public/assets/js/calendar/bootstrap_calendar.css" type="text/css" />
  <link rel="stylesheet" href="./public/assets/css/jquery.datetimepicker.css" type="text/css" />
  <script src="./public/assets/js/jquery.min.js"></script>
  <script src="./public/assets/js/ajaxfileupload.js"></script>
<!-- layer -->
  <script src="./public/assets/js/layer/layer.js"></script>
  <!--[if lt IE 9]>
    <script src="./public/assets/js/ie/html5shiv.js"></script>
    <script src="./public/assets/js/ie/respond.min.js"></script>
    <script src="./public/assets/js/ie/excanvas.js"></script>
  <![endif]-->
  {#block name=head#}{#/block#}
</head>
<body class="" >
  <section class="vbox">
    <header class="bg-white header header-md navbar navbar-fixed-top-xs box-shadow">
      <div class="navbar-header aside-md dk">
        <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
          <i class="fa fa-bars"></i>
        </a>
        <a href="./index.php?do=index" class="navbar-brand">
          <img src="./public/assets/images/logo.png" class="m-r-sm" alt="scale">
          <span class="hidden-nav-xs">德浓商户管理系统</span>
        </a>
        <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
          <i class="fa fa-cog"></i>
        </a>
      </div>
      <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user user">
      	<li>
        		<a href="./index.php?do=coin&cmd=recharge">
            <i><img class="zy-t-img" src="./public/assets/images/dn-qd.jpg" height="18"></i>
            <span id="coin-balance" class="zy-money"><img src="./public/assets/images/loading.gif" style="height:20px;width:20px"></span>
            <span class="zy-money"></span>
            <b href="./index.php?do=coin&cmd=recharge" class="btn zy-h-btn">充值</b>
        		</a>
        </li>
        <!-- <li>
          <a href="#">
          <i class="fa fa-circle-o-notch"></i>
          <b href="#" class="btn zy-h-btn">冻结金额</b>
          <span class="zy-money">9800</span>
          </a>
        </li> -->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <span class="zy-name">{#$smarty.session.merchant.name#}</span>你好 <b class="caret"></b>
          </a>
          <ul class="dropdown-menu animated fadeInRight">
            <!-- <li>
              <a href="profile.html">个人信息</a>
            </li> -->
            <li class="divider"></li>
            <li>
              <a href="./index.php?do=index&cmd=logout" >注销</a>
            </li>
          </ul>
        </li>
      </ul>
    </header>
    <section>
      <section class="hbox stretch">
        <!-- .aside  add style='width:180px By Ryan'-->
        <aside class="bg-black aside-md hidden-print hidden-xs" id="nav" style="width:180px">
          <section class="vbox">
            <section class="w-f scrollable">
              <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                <!-- nav -->
                <nav class="nav-primary hidden-xs">
                  <ul class="nav nav-main" data-ride="collapse">
                    <li  {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'index'#}class="active"{#/if#}>
                      <a href="./index.php?do=index&cmd=index" class="auto">
                        <i class="i i-statistics icon">
                        </i>
                        <span class="font-bold">首页</span>
                      </a>
                    </li>

                    <!-- permission_menu -->
                    <li {#if isset($smarty.get.do) and $smarty.get.do eq 'coin'#}class="active"{#/if#} >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="i i-circle-sm-o text"></i>
                          <i class="i i-circle-sm text-active"></i>
                        </span>
                        <i class="i i-stack icon">
                        </i>
                        <span class="font-bold">账户管理</span>
                      </a>
                      <ul class="nav dk">
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'create'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=create" class="auto">
                            <i class="i i-dot"></i>
                            <span>生成小金二维码</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'qrlogs'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=qrlogs" class="auto">
                            <i class="i i-dot"></i>
                            <span>小金二维码管理</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'outlogs'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=outlogs" class="auto">
                            <i class="i i-dot"></i>
                            <span>账户支出记录</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'ratio'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=ratio" class="auto">
                            <i class="i i-dot"></i>
                            <span>返金比例</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <!-- permission_menu -->
                    <li {#if isset($smarty.get.do) and $smarty.get.do eq 'coin'#}class="active"{#/if#} >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="i i-circle-sm-o text"></i>
                          <i class="i i-circle-sm text-active"></i>
                        </span>
                        <i class="i i-stack icon">
                        </i>
                        <span class="font-bold">账户管理</span>
                      </a>
                      <ul class="nav dk">
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'create'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=create" class="auto">
                            <i class="i i-dot"></i>
                            <span>生成小金二维码</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'qrlogs'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=qrlogs" class="auto">
                            <i class="i i-dot"></i>
                            <span>小金二维码管理</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'outlogs'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=outlogs" class="auto">
                            <i class="i i-dot"></i>
                            <span>账户支出记录</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'ratio'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=ratio" class="auto">
                            <i class="i i-dot"></i>
                            <span>返金比例</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li {#if isset($smarty.get.do) and $smarty.get.do eq 'customer'#}class="active"{#/if#} >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="i i-circle-sm-o text"></i>
                          <i class="i i-circle-sm text-active"></i>
                        </span>
                        <i class="i i-stack icon">
                        </i>
                        <span class="font-bold">商户详情</span>
                      </a>
                      <ul class="nav dk">
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'all'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=customer&cmd=all" class="auto">
                            <i class="i i-dot"></i>
                            <span>客户列表</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'pos'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=customer&cmd=pos" class="auto">
                            <i class="i i-dot"></i>
                            <span>POS机列表</span>
                          </a>
                        </li>
                        <!-- <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'activity'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=customer&cmd=activity" class="auto">
                            <i class="i i-dot"></i>
                            <span>活动列表</span>
                          </a>
                        </li> -->
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'point'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=customer&cmd=point" class="auto">
                            <i class="i i-dot"></i>
                            <span>积分兑换</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'pointqr'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=customer&cmd=pointqr" class="auto">
                            <i class="i i-dot"></i>
                            <span>加入积分计划</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li {#if isset($smarty.get.do) and $smarty.get.do eq 'statistics'#}class="active"{#/if#} >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="i i-circle-sm-o text"></i>
                          <i class="i i-circle-sm text-active"></i>
                        </span>
                        <i class="i i-stack icon">
                        </i>
                        <span class="font-bold">数据统计</span>
                      </a>
                      <ul class="nav dk">
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'coin'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=statistics&cmd=coin" class="auto">
                            <i class="i i-dot"></i>
                            <span>小金支出</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'user'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=statistics&cmd=user" class="auto">
                            <i class="i i-dot"></i>
                            <span>用户数量</span>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <li {#if isset($smarty.get.do) and $smarty.get.do eq 'activity'#}class="active"{#/if#} >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="i i-circle-sm-o text"></i>
                          <i class="i i-circle-sm text-active"></i>
                        </span>
                        <i class="i i-stack icon">
                        </i>
                        <span class="font-bold">活动管理</span>
                      </a>
                      <ul class="nav dk">
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'index'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=activity&cmd=index" class="auto">
                            <i class="i i-dot"></i>
                            <span>活动列表</span>
                          </a>
                        </li>
                        <!-- <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'create'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=activity&cmd=create" class="auto">
                            <i class="i i-dot"></i>
                            <span>新建活动</span>
                          </a>
                        </li> -->
                        <!-- <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'outlogs'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=outlogs" class="auto">
                            <i class="i i-dot"></i>
                            <span>账户支出记录</span>
                          </a>
                        </li>
                        <li {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'ratio'#}style="background-color:#f9bc28"{#/if#}>
                          <a href="./index.php?do=coin&cmd=ratio" class="auto">
                            <i class="i i-dot"></i>
                            <span>返金比例</span>
                          </a>
                        </li> -->

                      </ul>
                    </li>
                    <li  {#if isset($smarty.get.cmd) and $smarty.get.cmd eq 'setinfo'#}class="active"{#/if#}>
                      <a href="./index.php?do=index&cmd=setinfo" class="auto">
                        <i class="i i-stack2 icon">
                        </i>
                        <span class="font-bold">资料设置</span>
                      </a>
                    </li>
                  </ul>
                </nav>
                <!-- / nav -->
              </div>
            </section>
            <!-- 修改不要底角 By Ryan -->
            <!-- <footer class="footer hidden-xs no-padder text-center-nav-xs">
              <a href="#nav" data-toggle="class:nav-xs" class="btn btn-icon icon-muted btn-inactive m-l-xs m-r-xs">
                <i class="i i-circleleft text"></i>
                <i class="i i-circleright text-active"></i>
              </a>
            </footer> -->
          </section>
        </aside>
            {#block name=body#}{#/block#}
      </section>
    </section>
  </section>
  <!-- Bootstrap -->
  <script src="./public/assets/js/bootstrap.js"></script>
  <!-- App -->
  <script src="./public/assets/js/app.js"></script>
  <script src="./public/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
  <script src="./public/assets/js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
  <script src="./public/assets/js/charts/sparkline/jquery.sparkline.min.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.min.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.tooltip.min.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.spline.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.pie.min.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.resize.js"></script>
  <script src="./public/assets/js/charts/flot/jquery.flot.grow.js"></script>
  <script src="./public/assets/js/charts/flot/demo.js"></script>
  <script src="./public/assets/js/calendar/bootstrap_calendar.js"></script>
  <script src="./public/assets/js/calendar/demo.js"></script>
  <script src="./public/assets/js/sortable/jquery.sortable.js"></script>
  <script src="./public/assets/js/app.plugin.js"></script>
  <!-- qrcode -->
  <script src="./public/assets/js/qrcode.js"></script>
  <!-- datepicker -->
  <script src="./public/assets/js/jquery.datetimepicker.js"></script>
  <!-- erchart -->
  <script src="./public/assets/js/echarts.min.js"></script>
  <!-- <script src="./public/assets/js/vintage.js"></script> -->
</body>
{#block name=script#}{#/block#}
{#if isset($msg['msg']) #}
<script type="text/javascript">
    var msg = '{#$msg['msg']#}';
    if(msg == 405){
      layer.msg('您的密码在另一地点被修改，请重新登陆，如果非您本人操作，请联系管理员',{time:5000},function(){
        window.location = './index.php?do=index&cmd=logout';
      });
    }else{
      layer.msg(msg,{time:4000});
    }
</script>
{#/if#}
<script type="text/javascript">
    $(document).ready(function(){
      $.ajax({
        type: "GET",
        url: "./index.php?do=index&cmd=coinbalance",
        dataType:"json",
        async: false,
        success: function(data) {
          // console.log(data);
          if(data.msg == 1){
            $("#coin-balance").html(data.coin_balance);
          }else{
            layer.msg(data.msg,{time:4000});
          }
          return false;
        },
        error:function(msg){
          layer.msg(msg,{time:4000});
          return false;
        }
      });
    });
</script>
</html>
