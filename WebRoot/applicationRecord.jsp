<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>E&nbsp;R&nbsp;P&nbsp;配&nbsp;&nbsp;置</title>
<meta name="renderer" content="webkit">
 
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app2.css">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
   <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
     <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="findByOrdName.do" class="nav-link">Home</a>
      </li>
      
    </ul>
   
   <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    
     <li class="nav-item dropdown">
       <c:choose>
				<c:when test="${sex.equals('0') }">
		<div class="user-panel dropdown-toggle" data-toggle="dropdown">			
      
      <div class="image">
          <img src="${pageContext.request.contextPath}/img/avatar5.png" class="img-circle elevation-2" alt="User Image"
          style="opacity:.8">
        </div>
      ${person.name }
    </div>
    
    <ul class="dropdown-menu dropdown-menu-right" role="menu">
		
		<li><a href="findByIdApply.do?sqId=${person.jobId }" class="nav-link">
			<i class="fa fa-circle"></i>
				<span>&nbsp;&nbsp;申请历史</span></a></li>
	</ul>
				</c:when>
				<c:otherwise>
				<div class="user-panel dropdown-toggle" data-toggle="dropdown">
					 
      <div class="image">
          <img src="${pageContext.request.contextPath}/img/avatar3.png" class="img-circle elevation-2" alt="User Image"
          style="opacity:.8">
        </div>
      ${person.name }
    
    </div>
    <ul class="dropdown-menu dropdown-menu-right" role="menu">
		
		<li><a href="findByIdApply.do?sqId=${person.jobId }" class="nav-link">
			<i class="fa fa-circle"></i>
				<span>&nbsp;&nbsp;申请历史</span></a></li>
	</ul>
				</c:otherwise>
	</c:choose>
     
      </li>
		</ul>			
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
   <a href="#" class="brand-link">
      <img src="${pageContext.request.contextPath}/img/logo.png"  alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="background-color: white;">
      <span class="brand-text font-weight-light">恒&nbsp;赛&nbsp;特</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="${pageContext.request.contextPath}/img/erp.png" class="img-circle elevation-2" alt="User Image"
          style="opacity:.8">
        </div>
        <div class="info">
          <a href="#" class="d-block">ERP-项目配置管理</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
           
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="findByOrdName.do" class="nav-link ">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>到期列表</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="listApply.do" class="nav-link ">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>待审核</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="select.do" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>项目表</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="tologin.do" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>退出系统</p>
                </a>
              </li>
            </ul>
          </li>
      
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">试用码申请记录</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="findByOrdName.do">Home</a></li>
              <li class="breadcrumb-item active">试用码申请记录</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
      
      <div  style="position: relative;">
    <div class="input-group tpl-portlet-input tpl-fz-ml" >
    <table >
    <tr>
    	<td>
    		<input type="text" id="ordId" name="ordId" class="form-control " value="${ordId }" readonly="true">
    	</td>
    	
    	<td>
    		<input type="text"  id="xmName" name="xmName" class="form-control "  value="${xmName }" readonly="true">
    	</td>
    	
    </tr>
	    </table>
	  	  </div>
			</div> 
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">

            <!-- TABLE: LATEST ORDERS -->
            <div class="card">
             
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                                        <tr>
                                           <th style="display: none;">id</th>
                                            <!--  <th class="table-title am-hide-sm-only">项目编号</th>
                                             <th class="table-title">项目名</th> -->
                                            <th class="table-title">设备名称</th>
                                            <th class="table-title ">机器码</th>
                                            <th class="table-title am-hide-sm-only">申请人id</th>
                                            <th class="table-title ">申请人</th>
                                            <th class="table-title ">申请时间</th>
                                            <th class="table-title am-hide-sm-only">申请理由</th>
                                            <th class="table-title am-hide-sm-only">审核人id</th>
                                            <th class="table-title ">审核人</th>
                                            <th class="table-title ">审核时间</th>
                                            <th class="table-title am-hide-sm-only">备注</th>
                                            <th class="table-title am-hide-sm-only">到期时间</th>
                                           
                                            <th class="table-title am-hide-sm-only">审核状态</th>
                                                                                    
                            <%--  <c:if test="${person.getZhiwu().equals('总经理&销售部部门经理&销售员') ||person.getZhiwu().equals('总工程师&程序员')||person.getDepartment().equals('项目部') }">
                  					 <th class="table-set">操作</th>
                    </c:if>      --%>          
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listApplyByOrderName }" var="list">
                                        <tr>
                                        <td style="display: none;">${list.id}</td>
                                            <%-- <td class="am-hide-sm-only">${list.ordId }</td>
                                            <td>${list.ordName }</td> --%>
                                            <td>${list.orderName }</td>
                                            <td class="table-title ">${list.machineCode }</td>
                                            <td class="table-title am-hide-sm-only">${list.sqId }</td>
                                            <td class="table-title ">${list.sqName }</td>
                                            
                                            <td class="table-title ">
                                            <fmt:formatDate value="${list.sqTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
                                            </td>
                                            <td class="table-title am-hide-sm-only">${list.sqReason }</td>
                                            <td class="table-title am-hide-sm-only">${list.shId }</td>
                                            <td class="table-title ">${list.shName }</td>
                                            <td class="table-title ">
                                            <fmt:formatDate value="${list.shTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
                                            </td>
                                            <td class="table-title am-hide-sm-only">${list.remark }</td>
                                            <td class="table-title am-hide-sm-only">
                                            <fmt:formatDate value="${list.expirationTime }" pattern="yyyy-MM-dd"/>
                                           </td>
                                            
                                           <c:choose>
												<c:when test="${list.state==0 }">
													<td class="am-hide-sm-only" >待审核</td>
												</c:when>
												<c:otherwise>
													<td class="am-hide-sm-only" >审核完成</td>
												</c:otherwise>
											</c:choose>
                                             
                                        </tr>
                                        </c:forEach>
                                        
                                   </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
               <div class="card-footer clearfix breadcrumb-item" style="text-align: center;" >
              
                        <c:choose>
									<c:when test="${pageInfo.size > 0 }">
									
									
									<span>显示${pageInfo.startRow }到${pageInfo.endRow}共${pageInfo.total}条</span> <input
									type="hidden" id="page" name="page"> <input type="hidden"
									id="pageSize" name="pageSize"> <a
									href="listApplyByOrderName.do?PageNum=1">首页 </a>
									<c:choose>
									<c:when test="${pageInfo.hasPreviousPage }">
									<a href="listApplyByOrderName.do?PageNum=${pageInfo.pageNum-1}">上一页
									</a>
									</c:when>
									<c:otherwise>
									<span>上一页</span>
									</c:otherwise>
									</c:choose>
									<c:forEach var="item" items="${pageInfo.navigatepageNums}">
									<c:choose>
									<c:when test="${pageInfo.pageNum == item }">
									<span class="current">${pageInfo.pageNum }</span>
									</c:when>
									<c:otherwise>
									<a href="listApplyByOrderName.do?PageNum=${item}">${item}</a>
									</c:otherwise>
									</c:choose>
									</c:forEach>
									<c:choose>
									<c:when test="${!pageInfo.isLastPage }">
									<a href="listApplyByOrderName.do?PageNum=${pageInfo.pageNum+1}">下一页
									</a>
									<a href="listApplyByOrderName.do?PageNum=${pageInfo.lastPage}">尾页</a>
									</c:when>
									<c:otherwise>
									<span>下一页</span>
									<span>尾页</span>
									</c:otherwise>
									</c:choose>
									
									
									</c:when>
									
									</c:choose>
                                
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->

         </div><!--/. container-fluid -->
    </section>


<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="${pageContext.request.contextPath}/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- SparkLine -->
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jVectorMap -->
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.2 -->
<script src="${pageContext.request.contextPath}/plugins/chartjs-old/Chart.min.js"></script>


    <script src="./js/jquery.min.js"></script>
    <script src="./js/amazeui.min.js"></script>
    <script src="./js/app.js"></script>
</body>

</html>