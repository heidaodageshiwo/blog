<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap分页实例</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/jQueryUI/jquery-ui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/select2/select2.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/buttons.bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/select.dataTables.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/select.bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/messenger/messenger.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/plugins/messenger/messenger-theme-air.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticfenye1/css/efence.css">










</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- <div class="wrapper">
 -->
    <!-- Content Wrapper. Contains page content -->
<!--     <div class="content-wrapper">
 -->        <!-- Content Header (Page header) -->
       <!--  <section class="content-header">
            <h1>
                设备管理
                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active"><a href="###"> 设备管理</a></li>
                <li class="active">设备管理</li>
            </ol>
        </section> -->

        <!-- Main content -->
<!--         <section class="content">
 -->


            <!-- <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">查询参数</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <form>
                                        <div class="row">


                                           <div class="col-sm-4">
                                               <div class="form-group" >
                                                   <label>IMSI:</label>
                                                   <div class="input-group">
                                                       <div class="input-group-addon">
                                                           <i class="fa fa-mobile-phone"></i>
                                                       </div>
                                                       <input name="imsi" type="text" maxlength="16" class="form-control pull-right" id="imsi">
                                                   </div>
                                               </div>
                                           </div>




                                            <div class="col-sm-4">
                                                <div class="form-group" >
                                                    <label>上号天数:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-university"></i>
                                                        </div>

                                                        <input name="daycount" type="text" maxlength="16" class="form-control pull-right" id="daycount">
                                                    </div>
                                                </div>
                                            </div>

                                           <div class="col-sm-4">
                                               <div class="form-group" >
                                                   <label>上号次数:</label>
                                                   <div class="input-group">
                                                       <div class="input-group-addon">
                                                           <i class="fa  fa-street-view"></i>
                                                       </div>

                                                       <input name="datacount" type="text" maxlength="16" class="form-control pull-right" id="datacount">
                                                   </div>
                                               </div>
                                           </div>



                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group" >
                                                    <label>周期:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa  fa-cubes"></i>
                                                        </div>
                                                        <select id="period" name="period" class="form-control select2" style="width: 100%;">
                                                            <option value="0" selected="selected">请选择</option>
                                                            <option value="1">近一周</option>
                                                            <option value="2">近一月</option>
                                                            <option value="3">近半年</option>
                                                        </select>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group" >
                                                    <label>时间范围:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-clock-o"></i>
                                                        </div>
                                                        <input name="captureRangeTime" type="text" class="form-control pull-right" id="capture-range-time">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="padding-top: 23px;">
                                                <div class="form-group" >
                                                      <button type="button" class="btn btn-primary" id="query-condition-OK" >应用</button>
                                                      <div class="btn-group">
                                                          <button type="button" class="btn btn-primary" id="export-data-btn" >导出</button>
                                                          <button type="button" class="btn btn-primary btn-flat dropdown-toggle" data-toggle="dropdown" id="export-data-dropdown-btn">
                                                              <span class="caret"></span>
                                                              <span class="sr-only">Toggle Dropdown</span>
                                                          </button>
                                                          <ul class="dropdown-menu" role="menu">
                                                              <li><a href="javascript:void(0);" id="export-data-xls-btn">导出XLS</a></li>

                                                          </ul>
                                                      </div>


                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        /.box-body
                    </div>
                    /.box
                </div>
            </div> -->

            <div class="row">
               <!--  <div class="col-xs-12"> -->
                    <div class="nav-tabs-custom" >
                        <div class="tab-content">
                            <div class="chart tab-pane active" id="sites-list" >
                                <table id="sites-table" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <th style="width: 80px">文件编号</th>
                                    <th>名称</th>
                                    <th>备注</th>
                                    <th>文件下载次数</th>
                                   <!--  <th>第1可能位置</th>
                                    <th>第2可能位置</th>
                                    <th>上号天数</th>
                                    <th>上号总数</th> -->
                                   <!--  <th>操作</th> -->
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                 </div>
            <!-- </div> -->
<!--         </section>
 -->        <!-- /.content -->
<!--     </div>
 -->    <!-- /.content-wrapper -->


<!-- </div> -->
<!-- <div class="modal fade" id="site-dlg1">
    <div class="modal-dialog">
        <div class="modal-content" style="width:auto;">
            <div class="tab-content">
                <div class="chart tab-pane active" id="sites-list" >
                    <table id="sites-table1" class="table table-striped table-bordered table-hover">
                        </br>

                       &nbsp;&nbsp;<tr class="active" ><font size="5px;">IMSI详情信息</font></tr></br>
                        &nbsp;&nbsp;<tr>IMSI: <input type="text"   style="background:transparent;border:0;width: 130px;"  id="imsi1" name="imsi1"  value=""></tr>&nbsp;&nbsp;&nbsp;&nbsp;<tr>运营商: <input type="text"   style="background:transparent;border:0;width: 60px;"  id="operator" name="operator"  value=""></tr>&nbsp;&nbsp;&nbsp;&nbsp;<tr>归属地: <input type="text"   style="background:transparent;border:0"  id="cityname" name="cityname"  value=""></tr></br>
                        &nbsp;&nbsp;<tr class="active"><font size="5px;">上号历史</font></tr>
                        <thead>
                        <th style="width: 80px">编号</th>

                        <th>站点位置</th>


                        <th>采集时间</th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
        /.modal-content
    </div>
    /.modal-dialog
</div> -->


<div class="modal fade" id="export-progress-dlg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title center-block">数据导出</h4>
            </div>
            <div class="modal-body">
                <div class="progress" id="export-progress-bar">
                    <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                        <span class="sr-only">0% Complete (success)</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jQueryUI/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jquery-idleTimeout/store.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jquery-idleTimeout/jquery-idleTimeout.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/sockjs/sockjs.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/js/notifyHandle.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/fastclick/fastclick.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/select2/select2.full.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/select2/i18n/zh-CN.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/daterangepicker/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/daterangepicker/daterangepicker.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/dataTables.buttons.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/buttons.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/datatables/dataTables.select.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/messenger/messenger.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/bootbox/bootbox.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jqueryValidation/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jqueryValidation/localization/messages_zh.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/plugins/jqueryValidation/additional-methods.min.js"></script>
<script src="<%=request.getContextPath()%>/staticfenye1/js/validatorMethod.js"></script>
<%-- <script src="<%=request.getContextPath()%>/staticfenye1/js/efence.js"></script>
 --%><script src="<%=request.getContextPath()%>/staticfenye1/js/page/filedown.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap/js/bootstrap-paginator.min.js"></script>












</body>
</html>
