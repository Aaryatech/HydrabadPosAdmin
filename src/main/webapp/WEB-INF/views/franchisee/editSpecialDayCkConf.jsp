<%@page import="com.ats.adminpanel.model.franchisee.SubCategory"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page
	import="java.io.*, java.util.*, java.util.Enumeration, java.text.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Configure Franchisee</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<!--base css styles-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/data-tables/bootstrap3/dataTables.bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap-fileupload/bootstrap-fileupload.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/chosen-bootstrap/chosen.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap-timepicker/compiled/timepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/clockface/css/clockface.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/daterangepicker.css" />

<!--page specific css styles-->

<!--flaty css styles-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaty.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaty-responsive.css">

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/common.js"></script>




<!--basic scripts-->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script>
											window.jQuery
													|| document
															.write('<script src="${pageContext.request.contextPath}/resources/assets/jquery/jquery-2.0.3.min.js"><\/script>')
										</script>
<script
	src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/jquery-cookie/jquery.cookie.js"></script>

<!--page specific plugin scripts-->
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.resize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.pie.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.stack.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.crosshair.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.tooltip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/sparkline/jquery.sparkline.min.js"></script>

<!--flaty scripts-->
<script src="${pageContext.request.contextPath}/resources/js/flaty.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/flaty-demo-codes.js"></script>
<!--page specific plugin scripts-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/chosen-bootstrap/chosen.jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/clockface/js/clockface.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/date.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- http://forum.springsource.org/showthread.php?110258-dual-select-dropdown-lists -->
<!-- http://api.jquery.com/jQuery.getJSON/ -->


<jsp:include page="/WEB-INF/views/include/logout.jsp"></jsp:include>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/jquery-validation/dist/additional-methods.min.js"></script>

<style type="text/css">
select {
    width: 180px;
    height: 30px;
}
</style>


</head>
<body>





 <c:url var="getItemListByMenuId" value="/getItemsByMenuId"></c:url>
 <c:url var="getCatidByMenuId" value="/getCatidByMenuId"></c:url>


	<c:url var="setAllItemSelected" value="/setAllItemSelected" />

	<c:url var="findItemsByCatId" value="/getCommonByMenuId" />
	<c:url var="findAllMenus" value="/getAllMenus" />
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>


	<div class="container" id="main-container">

		<!-- BEGIN Sidebar -->
		<div id="sidebar" class="navbar-collapse collapse">

			<jsp:include page="/WEB-INF/views/include/navigation.jsp"></jsp:include>

			<div id="sidebar-collapse" class="visible-lg">
				<i class="fa fa-angle-double-left"></i>
			</div>
			<!-- END Sidebar Collapse Button -->
		</div>
		<!-- END Sidebar -->


		<!-- BEGIN Content -->
		<div id="main-content">
			<!-- BEGIN Page Title -->
		<!-- 	<div class="page-title">
				<div>
					<h1>
						<i class="fa fa-file-o"></i> Edit Configured Special Day Cake
					</h1>
				</div>
			</div> -->
			<!-- END Page Title -->


			<!-- BEGIN Main Content -->
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
								<div class="box-title">
									<h3>
										<i class="fa fa-bars"></i> Edit Configured Special Day Cake
									</h3>
									<div class="box-tool">
										<a href="${pageContext.request.contextPath}/configureSpecialDayCkList">Back to
											List</a> <a data-action="collapse" href="#"><i
											class="fa fa-chevron-up"></i></a>
									</div>
								</div>


								<c:set var="allFranchiseeAndMenuList"
									value="${allFranchiseeAndMenuList}" />
								<div class="box-content">
									<form action="${pageContext.request.contextPath}/addFrSpDayCkProcess" class="form-horizontal"
										id="validation-form" method="post">

                                  <div class="form-group">
									<label class="col-sm-3 col-lg-2 control-label" for="event_name">Event
										Name</label>
									<div class="col-sm-9 col-lg-10 controls">
										<input type="text" name="event_name" id="event_name"
											placeholder="Event Name" class="form-control" value="${getConfiguredSpDayCk.getSpdayName()}"
											data-rule-required="true" data-rule-minlength="3" />
									</div>
								</div>

                                        	<input type="hidden" name="sp_day_id" id="sp_day_id"  value="${spdayId}">      
                                         <%--  <input type="hidden" name="menu_id" id="menu_id" value="${menuId}">  --%>
                                            <input type="hidden" name="cat_id" id="cat_id" value="${catId}">
                             										 
                                <div class="form-group">
											<label class="col-sm-3 col-lg-2 control-label">Franchisee</label>
											<div class="col-sm-9 col-lg-10 controls">
												<select data-placeholder="Select Franchisee" name="frId[]"
													class="form-control chosen" tabindex="-1" id="frId" multiple="multiple"
													data-rule-required="true">
                                                   <option value=""> </option>
													<optgroup label="All Franchisee">
														<option value=""></option>
														<c:forEach
															items="${selectedFrList}"
															var="selectedFr">
															<option selected value="${selectedFr.frId}">${selectedFr.frName}</option>

														</c:forEach>
														<c:forEach
															items="${remFrList}"
															var="remFr">
															<option value="${remFr.frId}">${remFr.frName}</option>

														</c:forEach>
													</optgroup>
												</select>
												
											</div>
										</div>
												   <div class="form-group">
											<label class="col-sm-3 col-lg-2 control-label">Menu List</label>
											<div class="col-sm-9 col-lg-10 controls">
												<select data-placeholder="Select Menu" name="menu_id"
													class="form-control chosen"  id="menu_id" onchange="getItemsByMenuId()"
													>
                                                   <option value=""> </option>
													<optgroup label="All Menu">
														
														<c:forEach
															items="${menuList}"
															var="menuList">
															<c:choose>
															<c:when test="${menuList.menuId==getConfiguredSpDayCk.menuId}">
															<option value="${menuList.menuId}" selected>${menuList.menuTitle}</option>
															</c:when>
															<c:otherwise>
															<option value="${menuList.menuId}">${menuList.menuTitle}</option>
															</c:otherwise>
															</c:choose>
															

														</c:forEach>
													</optgroup>
												</select>
												
											</div>
										</div>						
											<div class="form-group">
											<label class="col-sm-3 col-lg-2 control-label">Items</label>
											<div class="col-sm-9 col-lg-10 controls">
												<select data-placeholder="Select Items" name="items[]"
													class="form-control chosen" tabindex="-1" id="item" multiple="multiple"
													data-rule-required="true">
                                                      <option value=""> </option>
													<optgroup label="All FItems">
														<option value=""></option>
														<c:forEach
															items="${selectedItemList}"
															var="selectedItem">
															<option selected value="${selectedItem.id}">${selectedItem.itemName}</option>

														</c:forEach>
														<c:forEach
															items="${remItemList}"
															var="remItem">
															<option value="${remItem.id}">${remItem.itemName}</option>

														</c:forEach>
													</optgroup>
												</select>
												
											</div>
										</div>
										
	                             	
                               <div class="form-group">
									  <label class="col-sm-3 col-lg-2 control-label">From Order
										Date</label>
									    <div class="col-sm-3 col-lg-3 controls">
										  <input class="form-control date-picker" id="from_order_date" size="16"
											type="text" name="from_order_date"  data-rule-required="true" value="${getConfiguredSpDayCk.getOrderFromDate()}" placeholder="From Order"/>
									   </div>
							
									<label class="col-sm-3 col-lg-2 control-label">To Order Date</label>
									<div class="col-sm-3 col-lg-3 controls">
										<input class="form-control date-picker" id="to_order_date" size="16"
											type="text" name="to_order_date"  data-rule-required="true"  placeholder="To Order"value="${getConfiguredSpDayCk.getOrderToDate()}"/>
									</div>
								</div>
										
                            <div class="form-group">
									  <label class="col-sm-3 col-lg-2 control-label">Delivery From
										Date</label>
									    <div class="col-sm-3 col-lg-3 controls">
										  <input class="form-control date-picker" id="from_delivery_date" size="16"
											type="text" name="from_delivery_date"  data-rule-required="true"  placeholder="From Date" value="${getConfiguredSpDayCk.getDeliveryFromDate()}"/>
									   </div>
							
									<label class="col-sm-3 col-lg-2 control-label">Delivery To Date</label>
									<div class="col-sm-3 col-lg-3 controls">
										<input class="form-control date-picker" id="to_delivery_date" size="16"
											type="text" name="to_delivery_date"  data-rule-required="true" placeholder="To Date" value="${getConfiguredSpDayCk.getDeliveryToDate()}"/>
									</div>
								</div>
										

										<div class="form-group">
											<label class="col-sm-3 col-lg-2 control-label">From
												Time</label>
											<div class="col-sm-3 col-lg-3 controls">
												<select data-placeholder="From Time" name="frm_time"
													class="form-control chosen" tabindex="-1" id="frm_time"
													data-rule-required="true" >
													<option value=""> </option>
													<optgroup label="Select From Time">
													<option value=""> </option>
													
										<option selected value="${fromTime}">${fromTime}</option>



														<%
	                     DateFormat tipe = new SimpleDateFormat("hh:mm a");

	                     Date date = new Date();                      // timestamp now
	                     Calendar cal = Calendar.getInstance();       // get calendar instance
	                     cal.setTime(date);                           // set cal to date
	                     cal.set(Calendar.HOUR_OF_DAY, 23);            // set hour to midnight
	                     cal.set(Calendar.MINUTE,45);                 // set minute in hour
	                     cal.set(Calendar.SECOND, 0);                 // set second in minute
                       	cal.set(Calendar.MILLISECOND, 0);  

                        %>
														<c:forEach var="i" begin="1" end="32">
															<c:set var="time" value="${i}" />
															<c:forEach var="j" begin="1" end="3">


																<% 
                                    cal.add(Calendar.MINUTE, 15);
                                   //out.print(tipe.format(cal.getTime()));
                                   String time=tipe.format(cal.getTime());
                           

                              %>




																<option value="<%=time%>"><%=time%></option>

															</c:forEach>

														</c:forEach>
													</optgroup>

												</select>
											</div>
										
											<label class="col-sm-3 col-lg-2 control-label">To
												Time</label>
											<div class="col-sm-3 col-lg-3 controls">
												<select data-placeholder="To Time" name="to_time"
													class="form-control chosen" tabindex="-1" id="to_time"
													data-rule-required="true" value="${toTime}">
													<optgroup label="Select To Time">
														<option value=""></option>
														<option selected value="${toTime}">${toTime}</option>

														<%
	                     DateFormat tipe1 = new SimpleDateFormat("hh:mm a");

	                     Date date1 = new Date();                      // timestamp now
	                     Calendar cal1 = Calendar.getInstance();       // get calendar instance
	                     cal.setTime(date1);                           // set cal to date
	                     cal.set(Calendar.HOUR_OF_DAY, 23);            // set hour to midnight
	                     cal.set(Calendar.MINUTE,45);                 // set minute in hour
	                     cal.set(Calendar.SECOND, 0);                 // set second in minute
                       	cal.set(Calendar.MILLISECOND, 0);  

                        %>
														<c:forEach var="i" begin="1" end="32">
															<c:set var="time" value="${i}" />
															<c:forEach var="j" begin="1" end="3">


																<% 
                                    cal.add(Calendar.MINUTE, 15);
                                   //out.print(tipe.format(cal.getTime()));
                                   String time=tipe.format(cal.getTime());
                           

                              %>




																<option value="<%=time%>"><%=time%></option>


															</c:forEach>

														</c:forEach>
													</optgroup>

												</select>
											</div>
										</div>


										<div class="form-group">
											<div
												class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
												<input type="submit" class="btn btn-primary"
													value="Configure">
												<button type="button" class="btn">Cancel</button>
											</div>
										</div>



									</form>




								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END Main Content -->

			<footer>
				<p>2019 � MADHAVI.</p>
			</footer>
<script
	src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script> 
			<a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i
				class="fa fa-chevron-up"></i></a>
		</div>
		<!-- END Content -->
	</div>
	<!-- END Container -->
	<!-- END Container -->
<script type="text/javascript">


function getItemsByMenuId() {
	
	var menuId = $("#menu_id").val();
	
	// alert(menuId);
		 if(menuId=="" || menuId==null){
			 
			  
				$('#item')
			    .find('option')
			    .remove()
			    .end()
			    $("#item").trigger("chosen:updated");
		 }else{
				$.getJSON('${getItemListByMenuId}', {
					
					menuId : menuId,
					ajax : 'true'
				}, function(data) {
				 	var html = '<option value="">Select Item</option>';
				
					var len = data.length;
					
					$('#item')
				    .find('option')
				    .remove()
				    .end()
				    
				
					
					for ( var i = 0; i < len; i++) {
			            $("#item").append(
			                    $("<option selected></option>").attr(
			                        "value", data[i].id).text(data[i].itemName)
			                );
					}
					   $("#item").trigger("chosen:updated");
				}); 
		 }
		 getCatIdByMenuId();
}
</script>
<script type="text/javascript">


	function selectDate() {
		//alert(to_delivery_date);
		var to_delivery_date = $("#from_delivery_date").val();
		document.getElementById("to_delivery_date").setAttribute("value",to_delivery_date);
		}
		
function getCatIdByMenuId() {
	
	
	var menuId = $("#menu_id").val();
	
	// alert(menuId);
		 if(menuId=="" || menuId==null){
			 
			  
				$('#cat_id')
			    .find('option')
			    .remove()
			    .end()
			    $("#cat_id").trigger("chosen:updated");
		 }else{
				$.getJSON('${getCatidByMenuId}', {
					
					menuId : menuId,
					ajax : 'true'
				}, function(data) {
				 
					var len = data.length;
					
				    
				
					
					for ( var i = 0; i < len; i++) {
						document.getElementById("cat_id").setAttribute("value",data[i].catId);
						
					}
					
					
					//document.getElementById("menu_id").setAttribute("value",menuId);
					
					
					
				}); 
		 }
	 
}
	
	</script>
	<!--basic scripts-->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="${pageContext.request.contextPath}/resources/assets/jquery/jquery-2.0.3.min.js"><\/script>')
	</script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-cookie/jquery.cookie.js"></script>

	<!--page specific plugin scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.crosshair.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/sparkline/jquery.sparkline.min.js"></script>


	<!--page specific plugin scripts-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/jquery-validation/dist/additional-methods.min.js"></script>

	<!--flaty scripts-->
	<script src="${pageContext.request.contextPath}/resources/js/flaty.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/flaty-demo-codes.js"></script>
	<!--page specific plugin scripts-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/chosen-bootstrap/chosen.jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/clockface/js/clockface.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/daterangepicker.js"></script>



</body>
</html>