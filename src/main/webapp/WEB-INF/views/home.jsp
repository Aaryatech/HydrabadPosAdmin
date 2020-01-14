<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<c:url var="getAdvaceOrderDetail" value="/getAdvaceOrderDetail" />
<c:url var="getFrTotalSalesJson" value="/getFrTotalSalesJson" /> 

<body onload="drawAllCharts()">
	<jsp:include page="/WEB-INF/views/include/logout.jsp"></jsp:include>
	<!-- BEGIN Container -->



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
			<div class="page-title">
				<div>
					<h1>
						<i class="fa fa-file-o"></i> Dashboard
					</h1>
					<!--<h4>Overview, stats, chat and more</h4>-->
				</div>
			</div>
			<!-- END Page Title -->

			<!-- BEGIN Breadcrumb -->
			<div id="breadcrumbs">
				<ul class="breadcrumb">
					<li class="active"><i class="fa fa-home"></i> Home</li>
				</ul>
			</div>
			<!-- END Breadcrumb -->
			<form action="${pageContext.request.contextPath}/home"
				method="post" id="validation-form">
				<div class="container" id="main-container">
					
					<div class="form-group"></div>
					<div class="row">
						<div class="col-md-1">
							<div class="col1title">From Date:</div>
						</div>
						<div class="col-md-2">
							<input class="form-control datepicker22  date-picker"
								placeholder="From Date" name="from_date" style="border-radius: 25px;"
								id="from_date" type="text" value="${fromDate}" />
						</div>
						<div class="col-md-1">
							<div class="col1title">To Date:</div>
						</div>
						<div class="col-md-2">
							<input class="form-control datepicker22  date-picker"
								placeholder="To Date" name="to_date" style="border-radius: 25px;"
								id="to_date" type="text" value="${toDate }" />
						</div>

						<div class="col-md-1">
							<input type="submit" name="submit2" id="submit2" value="Search"
								class="btn btn-primary" />
						</div>
					</div>
				</div>
			</form>
			<br> <br>
			<!-- BEGIN Tiles -->
			<div class="row">


				<div class="col-md-12">
					<div class="row">

						<c:forEach items="${frSaleList}" var="frData">
							<!-- <a href="resoucres/index.php/orders/list_all"> -->
							<a href="${pageContext.request.contextPath}/showproduction/frId">
							<div class="col-md-3">
								<div class="tile tile-orange">
									<!-- <div class="img">
										<i class="fa fa-shopping-cart fa-5x"></i>
									</div> -->
									
									<div class="content">									
										<p class="medium" style="font-size: 20px;">
											<c:out value="${frData.frName}"></c:out>
										</p>
										
										<p class="title">
											<c:out value="${frData.grandTotal}"></c:out>
										</p>
										
										<%-- <a
											href="${pageContext.request.contextPath}/showproduction/frId">
											<button type="button" style="margin-bottom: 35px;"
												class="btn">Add Order to Prod</button>
										</a>  --%>
									</div>
								</div>

							</div></a>

						</c:forEach>

						<div class="clearfix"></div>
						<%-- <form method="post" id="modal-dialog_form1">
							<input type="hidden" id="ordHeaderIdForDel"
								name="ordHeaderIdForDel" value="0">
							
								
							<div id="table-scroll" class="table-scroll">

								<div id="faux-table">
									<table id="table2" class="table table-advance">

										<tr
											style="background-color: #f3b5db; font-size: 14; color: #fff"
											class="bgpink">
											<th style="background-color: #f3b5db; color: #fff"
												class="col-sm-1">Sr No</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Franchise Name</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Customer Name</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Customer Phone No.</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Delivery Date</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Delivery Time</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Grand Total</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Dairy Mart</th>
											<th style="background-color: #f3b5db; color: #fff"
												class="col-md-1">Action</th>

										</tr>


										<tbody>



											<c:forEach items="${frSaleList}" var="advList" varStatus="count">

												<tr>
													<td class="col-sm-1"><c:out value="${count.index+1}" /></td>
													<td class="col-md-2"><c:out value="${advList.frName}" /></td>

													<td class="col-md-2"><c:out
															value="${advList.custName}" /></td>
													<td class="col-md-1"><c:out
															value="${advList.phoneNumber}" /></td>

													<td class="col-md-2"><c:out
															value="${advList.deliveryDate}" /></td>
													<td class="col-md-1"><c:out value="${advList.exVar2}" /></td>
													<td class="col-md-1"><c:out value="${advList.total}" /></td>

													<td class="col-md-2"><c:choose>
															<c:when test="${advList.isDailyMart==1}">
 														No						
 												    </c:when>
															<c:otherwise>
												        Yes
												    </c:otherwise>
														</c:choose></td>

													<td class="col-md-2" style="white-space: nowrap;"><a
														href=""
														onclick="showDetailsForCp('${advList.advHeaderId}','${advList.frName}','${advList.custName}','${advList.total}','${advList.isDailyMart}','${advList.deliveryDate}','${advList.advanceAmt}','${advList.prodDate}','${advList.isBillGenerated}','${advList.exVar2}')"
														class="btn btn-default btn-rounded" data-toggle="modal"
														data-target="#elegantModalForm"><abbr title='Edit'><i
																class='fa fa-edit'></i></abbr></a> <c:if
															test="${advList.isBillGenerated==0}">
															<a href="#"
																onclick="DeleteOrder('${advList.advHeaderId}')"
																class="btn btn-default"><abbr
																title='Delete'><i class='fa fa-trash-o'></i></abbr></a>
														</c:if></td>
												</tr>
											</c:forEach>
										</tbody>


									</table>
									<div align="center" id="loader" style="display: none">

										<span>
											<h4>
												<font color="#343690">Loading</font>
											</h4>
										</span> <span class="l-1"></span> <span class="l-2"></span> <span
											class="l-3"></span> <span class="l-4"></span> <span
											class="l-5"></span> <span class="l-6"></span>
									</div>

								</div>

							</div>
						</form> --%>
					</div>
				</div>

					<div class="col-md-12">
						<div class="row">
						
								<div class="charts_bx">
									<div class="chart_l">
										<div id="donutchart" style="width: 100%; height: 400px;" ></div>
									
									</div>
									<div class="clearfix"></div>
								</div>
							<!-- </div> -->
							<!-- <div class="col-md-6"> -->
								<div class="charts_bx">
									<div class="chart_l">

										<div class="a"></div>

										<div id="chart_div" style="width: 100%; height: 400px;"></div>
										<!-- style="width: 900px; height: 500px;" -->


									</div>

									<div class="clearfix"></div>


								</div> 
							<!-- </div> -->

						</div>
					</div>
					
					<div class="col-md-12">
						<div class="row">
								<div class="charts_bx">
									<div class="chart_l">

										<div class="a"></div>

										<div id="chart_div" style="width: 100%; height: 300px;"></div>
										<!-- style="width: 900px; height: 500px;" -->
									</div>
									<div class="clearfix"></div>

								</div> 
						</div>
					</div>
				</div>


			<footer>
			<p>2020 © Mumbai Cafe.</p>
			</footer>

			<a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i
				class="fa fa-chevron-up"></i></a>

		</div>
		<!-- END Content -->
	</div>
	<!-- END Container -->
	<!--basic scripts-->

	<!------------------------------------------ MODEL 1-------------------------------------------------->
	<div class="modal fade" id="elegantModalForm" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

		<!--SAVE LOADER-->
		<div id="overlay">
			<div class="clock"></div>
		</div>

		<form method="post" id="modal-dialog_form">

			<input type="hidden" id="ordHeaderId" name="ordHeaderId" value="0">
			<input type="hidden" id="isMart" name="isMart" value="0">


			<div class="modal-dialog" role="document"
				style="width: 80%; height: 50%;">
				<!--Content-->
				<div class="modal-content form-elegant">
					<!--Header-->
					<div class="modal-header text-center">
						<h3 class="modal-title w-100 dark-grey-text font-weight-bold my-3"
							id="myModalLabel" style="color: #ea4973;">
							<strong>Advance Order Detail List</strong>
						</h3>
						<%-- <a href="#" class="close" data-dismiss="modal" aria-label="Close"
						id="closeHrefModel"> <img
						src="${pageContext.request.contextPath}/resources/img/close.png"
						alt="X" class="imageclass" />
					</a> --%>
						<div></div>
						<div class="modal-body mx-6">
	<div class="row">
							<label class="col-sm-2 col-lg-2 control-label"
								style="color: #e20b31;">Amount :<span id="billAmt"></span></label>

							<label class="col-sm-2 col-lg-2 control-label"
								style="color: #e20b31;">Delivery Date :<span
								id="devDate"></span>
							</label> <label class="col-sm-1 col-lg-1 control-label"
								style="color: #e20b31;"><span id="isMart"></span> </label> <label
								class="col-sm-2 col-lg-3 control-label" style="color: blue;">Franchise
								Name:<span id="frName"></span>
							</label> <label class="col-sm-2 col-lg-3 control-label"
								style="color: blue;">Customer Name :<span id="custName"></span></label>

</div>
							<div class="component">

								<table width="80%" id="modeltable" class="table table-advance"
									style="font-size: 13px; font-weight: bold; border: 1px solid; border-color: #91d6b8;">
									<!-- class="table table-advance" -->
									<thead>
										<tr class="bgpink" style="background-color: red">

											<th class="col-sm-1" align="right">Sr No</th>
											<th class="col-md-2" align="center">Item Name</th>
											<th class="col-md-1" align="center">Mrp</th>
											<th class="col-md-1" align="center">Rate</th>

											<th class="col-md-1" align="center">Qty</th>
											<th class="col-md-1" align="center">Disc %</th>
											<th class="col-md-1" align="center">Subtotal</th>

										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
							<div class="form-group"></div>
							<div class="row">
								<label class="col-sm-1 control-label" style="color: blue;" 	>Advance
									Amt: </label>
									<div class="col-sm-2">
									<input type="text" id="advanceAmt" name="advanceAmt" class="form-control"
									style="width: 70%" value="0"></div>
								<label class="col-sm-1 control-label" style="color: blue;">Production Date</label>
								<div class="col-sm-2 controls date_select">
									<input class="form-control datepicker22  date-picker"
										id="prod_date" name="prod_date" size="15" type="text" />
								</div>
								 <label class="col-sm-1 control-label" style="color: blue;">Delivery Date</label>
								<div class="col-sm-2 controls date_select">
									<input class="form-control datepicker22  date-picker"
										id="deliveryDate" name="deliveryDate" size="25" type="text" />
								</div>
								
								 <label class="col-sm-1 control-label" style="color: blue;">Delivery
									Time:</label> <!-- <input type="time" id=delTime name="delTime" value="0"> -->
							<div class="col-sm-2"><input type="text"   id="clockface_1" name="delTime"  data-format="hh:mm A" class="form-control small clockface-open">
									</div>
								</div>
								<div class="form-group"></div>
								<div   class="col-md-6">
								<input type="button" id="saveEditAdvOrderBtn"
									class="button btn-success" onclick="saveEditAdvOrder()"
									value="Save/Update"></div>
									
<!-- 									<input type="text" id="clockface_1" value="2:30 PM" data-format="hh:mm A" class="form-control small clockface-open">
 -->									

							</div>
							<div align="center" id="loader1" style="display: none">

								<span>
									<h4>
										<font color="#343690">Loading</font>
									</h4>
								</span> <span class="l-1"></span> <span class="l-2"></span> <span
									class="l-3"></span> <span class="l-4"></span> <span class="l-5"></span>
								<span class="l-6"></span>
							</div>
						</div>
						<!--Body-->

						<!--Footer-->
					</div>
					<!--/.Content-->
				</div>
			</div>
	</div>
	<style>
.datepicker {
	z-index: 999999;
}
</style>
<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ba-throttle-debounce.min.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery.stickyheader.js"></script> --%>
	<!----------------------------------------------End MODEL 1------------------------------------------------>


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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>


<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>

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
		
		<!-- for timepicker  -->
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/clockface/js/clockface.js"></script>
		
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/chosen-bootstrap/chosen.jquery.min.js"></script>

	<script type="text/javascript">
		function showDetailsForCp(headId, frName, custName, amount, isMart,
				devDate, advanceAmt, prodDate, isBillGenerated,delivTime) {

			$("#billAmt").css("color", "red");
			$("#devDate").css("color", "red");
			$("#isMart").css("color", "red");
			$("#custName").css("color", "red");
			$("#frName").css("color", "red");
			var x;
			if (parseInt(isMart) == 1) {
				x = "Adv Order";
			} else {
				x = "DM Order";
			}

			document.getElementById("ordHeaderId").value = headId;
			document.getElementById("isMart").value = isMart;
			document.getElementById("advanceAmt").value = advanceAmt;

			document.getElementById("billAmt").innerHTML = amount;
			document.getElementById("devDate").innerHTML = devDate;
			document.getElementById("isMart").innerHTML = x;
			document.getElementById("frName").innerHTML = frName;
			document.getElementById("custName").innerHTML = custName;
			document.getElementById("deliveryDate").value = devDate;
			document.getElementById("clockface_1").value=delivTime;
			$
					.post(
							'${getAdvaceOrderDetail}',
							{
								headId : headId,
								ajax : 'true'
							},
							function(data) {

								//alert(JSON.stringify(data));
								$('#modeltable td').remove();
								document.getElementById("saveEditAdvOrderBtn").disabled = false;
								document.getElementById("saveEditAdvOrderBtn").style.display = "block";
								document.getElementById("prod_date").value = prodDate;
								$
										.each(
												data,
												function(key, data) {

													var tot;

													if (parseInt(isMart) == 1) {
														tot = parseInt(data.orderQty)
																* parseFloat(data.orderRate);
													} else {
														tot = parseInt(data.orderQty)
																* parseFloat(data.orderMrp);
													}
													tot = tot
															- (parseFloat(tot)
																	* parseFloat(data.isPositive) / 100);

													var tr = $('<tr></tr>');
													var tb_qty = '<input type="number" class="form-control" min="0" max="99999"  style="width: 70% color:red" id="tb_qty'
															+ data.orderId
															+ '" name="tb_qty'
															+ data.orderId
															+ '" value="'
															+ data.orderQty
															+ '">';
													var disc_per = '<input type="number" class="form-control"  min="0" max="99999" style="width: 70%" id="disc_per'
															+ data.orderId
															+ '" name="disc_per'
															+ data.orderId
															+ '" value="'
															+ data.isPositive
															+ '">';
													var tb_rate = '<input type="number" class="form-control" min="0" max="99999"  style="width: 70%" id="tb_rate'
															+ data.orderId
															+ '" name="tb_rate'
															+ data.orderId
															+ '" value="'
															+ data.orderRate
															+ '">';

													tr
															.append($(
																	'<td class="col-sm-1" align="left" ></td>')
																	.html(
																			key + 1));
													tr
															.append($(
																	'<td class="col-md-2" align="left"  ></td>')
																	.html(
																			data.itemName));
													tr
															.append($(
																	'<td class="col-md-1" align="left"  ></td>')
																	.html(
																			data.orderMrp));
													tr
															.append($(
																	'<td class="col-md-1" align="left" ></td>')
																	.html(
																			tb_rate));

													tr
															.append($(
																	'<td class="col-md-1" align="left"></td>')
																	.html(
																			tb_qty));
													tr
															.append($(
																	'<td class="col-md-1" align="left" ></td>')
																	.html(
																			disc_per));
													tr
															.append($(
																	'<td class="col-md-1" align="left" ></td>')
																	.html(tot));

													$('#modeltable tbody')
															.append(tr);
													if (isBillGenerated == 1) {
														document
																.getElementById("saveEditAdvOrderBtn").disabled = true;
														document
																.getElementById("saveEditAdvOrderBtn").style.display = "none";
													}
												});

							});

		}

		function saveEditAdvOrder() {
			$('#loader1').show();
			document.getElementById("saveEditAdvOrderBtn").disabled = true;
			$
					.ajax({
						type : "POST",
						url : "${pageContext.request.contextPath}/editAdvanceOrderSubmit",
						data : $("#modal-dialog_form").serialize(),
						dataType : 'json',
						success : function(data) {
							// alert(JSON.stringify(data));
							$('#loader1').hide();

							location.reload(true);

						}
					})
		}
		function DeleteOrder(ordHeadId) {

			var x = confirm("Are you sure to delete? ");
			//alert(x)
			if (x) {
				//alert("Yes");
				$('#loader').show();

				document.getElementById("ordHeaderIdForDel").value = ordHeadId;

				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/deleteAdvOrder",
					data : $("#modal-dialog_form1").serialize(),
					dataType : 'json',
					success : function(data) {
						$('#loader').hide();
						// alert(JSON.stringify(data));
						location.reload(true);

					}
				})
			}

		}
		/* $("#submit1").click(function(){
			
		var form1=document.getElementById("validation-form");
		form1.action="searchOrdersCount";
		form1.method="post";
		form1.submit();
			
			}) */
	</script>
<script type="text/javascript">
	 	function drawAllCharts() {

			google.charts.load("current", {
				packages : [ "corechart" ]
			});
			google.charts.setOnLoadCallback(drawDonutChart);

			google.charts.load('current', {
				'packages' : [ 'corechart', 'bar' ]
			});
			google.charts.setOnLoadCallback(drawStuff);
			
			
			//var type=${type};
			
			/* if (type == 4) {
				document.getElementById("ihide").style = "visible"
				document.getElementById("fromdatepicker").required = true;
				document.getElementById("todatepicker").required = true;
			} else {
				document.getElementById("ihide").style = "display:none"
				document.getElementById("fromdatepicker").required = false;
				document.getElementById("todatepicker").required = false;
			} */
			
		} 
		
		function drawDonutChart() {			
			//to draw donut chart
			var chart;
			var datag = '';
			var fromDate = document.getElementById("from_date").value;
			var toDate = document.getElementById("to_date").value;
			var a = "";
			var dataSale = [];
			var Header = [ 'Franchisee', 'Amount', 'ID' ];
			dataSale.push(Header);
			$.get('${getFrTotalSalesJson}', {
				fromDate : fromDate,
				toDate : toDate,
				ajax : 'true'
			}, function(chartsdata) {	
				if(chartsdata == ""){
					alert("No records found !!");
				}else{
				
				//alert(JSON.stringify(chartsdata));
				var len = chartsdata.length;
			datag = datag + '[';
			 $.each(chartsdata, function(key, chartsdata) {
					var temp = [];
					temp.push(chartsdata.frName + " ("
							+ (parseFloat(chartsdata.grandTotal).toFixed(2))
							+ ")", (parseFloat(chartsdata.grandTotal)),
							parseInt(chartsdata.frId));
					dataSale.push(temp);

				}); 

				//console.log(dataSale);
				var data1 = google.visualization.arrayToDataTable(dataSale);

				var options = {
					title : 'Franchisee Sell(%)',
					pieHole : 0.4,
					backgroundColor : 'transparent',
					pieSliceText : 'none',
					sliceVisibilityThreshold : 0,
					/*  legend: {
					        position: 'labeled',
					        labeledValueText: 'both',
					        textStyle: {
					            color: 'red', 
					            fontSize: 10
					        }
					    }, */
					is3D : true,
				};
				//  alert(222);
				chart = new google.visualization.PieChart(document
						.getElementById('donutchart'));

				function selectQtyHandler() {
					// alert("hii");
					var selectedItem = chart.getSelection()[0];
					if (selectedItem) {
						// alert("hii selectedItem");
						i = selectedItem.row, 0;

						//alert("hii selectedItem" + chartsdata[i].catId);
						itemSellBillCal(chartsdata[i].catId);

					}
				}

				google.visualization.events.addListener(chart, 'select',
						selectQtyHandler);
				chart.draw(data1, options);
			}//else end
			});

		}
		
		function drawStuff() {
			var fromDate = document.getElementById("from_date").value;
			var toDate = document.getElementById("to_date").value;
			var chartDiv = document.getElementById('chart_div');
			//document.getElementById("chart_div").style.border = "thin dotted red";
			var dataTable = new google.visualization.DataTable();
			
			dataTable.addColumn('string', 'Franchisees'); // Implicit data column.
			dataTable.addColumn('number', 'Amount'); // Implicit domain column.

			$.get('${getFrTotalSalesJson}', {
				fromDate : fromDate,
				toDate : toDate,
				ajax : 'true'
			}, function(chartsBardata) {

				if(chartsBardata == ""){
					alert("No records found !!");
				}else{
			//	alert(JSON.stringify(chartsBardata));
				$.each(chartsBardata, function(key, chartsBardata) {

					dataTable.addRows([ [ chartsBardata.frName,
						parseInt(chartsBardata.grandTotal)] ]);

				});

				//alert(11);

				var materialOptions = {
					width : 600,
					height : 450,
					chart : {
						title : 'Sell Amount per Franchisee',
						subtitle : ' '
					},
					series : {
						0 : {
							axis : 'distance'
						}, // Bind series 0 to an axis named 'distance'.
						1 : {
							axis : 'brightness'
						}
					// Bind series 1 to an axis named 'brightness'.
					},
					axes : {
						y : {
							distance : {
								label : 'Sell Amount'
							}, // Left y-axis.
							brightness : {
								side : 'right',
								label : 'Total Tax'
							}
						// Right y-axis.
						}
					}
				};

				var materialChart = new google.charts.Bar(chartDiv);

				function drawMaterialChart() {
					// var materialChart = new google.charts.Bar(chartDiv);
					// google.visualization.events.addListener(materialChart, 'select', selectHandler);    
					materialChart.draw(dataTable, google.charts.Bar
							.convertOptions(materialOptions));
					// button.innerText = 'Change to Classic';
					// button.onclick = drawClassicChart;
				}

				drawMaterialChart();
			}
			});

		}
	</script>

</body>
</html>
