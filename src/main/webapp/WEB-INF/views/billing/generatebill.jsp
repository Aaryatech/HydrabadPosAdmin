<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<body onload="getMenuListBySectionId()">

	<jsp:include page="/WEB-INF/views/include/logout.jsp"></jsp:include>


	<c:url var="getMenuListBySectionId" value="/getMenuListBySectionId"></c:url>
	<c:url var="getRouteListByDelType" value="/getRouteListByDelType"></c:url>
	<c:url var="getFrListByRouteId" value="/getFrListByRouteId"></c:url>
	<c:url var="getRouteMgmtByRouteId" value="/getRouteMgmtByRouteId"></c:url>

	<c:url var="getFrListofAllFr" value="/getFrListofAllFr"></c:url>
	<c:url var="getBillList" value="/generateNewBill"></c:url>


	<c:url var="getAdvOrderHeadList" value="/getAdvOrderHeadList"></c:url>
		<c:url var="findFranchiseeData" value="/findFranchiseeData" />
		<c:url var="editCustomerFromBill" value="/editCustomerFromBill" /><!-- no edit on this page only to get cust data  -->
	<c:url var="getCustIdFromOrderHeaderId" value="/getCustIdFromOrderHeaderId" />


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
		<%-- <div class="page-title">
			<div>
				<h1>
					<i class="fa fa-file-o"></i>Franchisee FR Invoice
				</h1>
				<h4>Bill for franchises</h4>
			</div>
		</div>
		<!-- END Page Title -->

		<!-- BEGIN Breadcrumb -->
		<div id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="fa fa-home"></i> <a
					href="${pageContext.request.contextPath}/home">Home</a> <span
					class="divider"><i class="fa fa-angle-right"></i></span></li>
				<li class="active">Franchise Bill</li>
			</ul>
		</div> --%>
		<!-- END Breadcrumb -->

		<!-- BEGIN Main Content -->
		<div class="box">
			<div class="box-title">
				<h3>
					<i class="fa fa-bars"></i>Generate Franchisee Bill
				</h3>

			</div>

			<div class="box-content">
				<div class="row">


					<div class="form-group">
						<label class="col-sm-3 col-lg-2	 control-label">Delivery
							Date</label>
						<div class="col-sm-6 col-lg-4 controls date_select">
							<input class="form-control date-picker" id="deliveryDate"
								name="deliveryDate" size="30" type="text" value="${todaysDate}" />
						</div>

						<!-- </div>

					<div class="form-group  "> -->

						<%-- <label class="col-sm-3 col-lg-2	 control-label">Select
							Menu</label>
						<div class="col-sm-6 col-lg-4 controls">
							<select data-placeholder="Choose Menu"
								class="form-control chosen" multiple="multiple" tabindex="6"
								id="selectMenu" name="selectMenu">

								<option value="-1"><c:out value="All"/></option>

								<c:forEach items="${unSelectedMenuList}" var="unSelectedMenu"
									varStatus="count">
									<option value="${unSelectedMenu.menuId}"><c:out value="${unSelectedMenu.menuTitle}"/></option>
								</c:forEach>


							</select>
						</div> --%>
					</div>

				</div>


				<br>

				<div class="row">


					<div class="form-group">
						<label class="col-sm-3 col-lg-2	 control-label">Select
							Section</label>
						<div class="col-sm-6 col-lg-4 controls date_select">
							<select data-placeholder="Choose Menu"
								class="form-control chosen" id="sectionId" name="sectionId"
								onchange="getMenuListBySectionId()">

								<c:forEach items="${sectionList}" var="sectionList">
									<option value="${sectionList.sectionId}"><c:out
											value="${sectionList.sectionName}" /></option>
								</c:forEach>


							</select>
						</div>

						<label class="col-sm-3 col-lg-2	 control-label">Select
							Menu</label>
						<div class="col-sm-6 col-lg-4 controls">
							<select data-placeholder="Choose Menu"
								class="form-control chosen" multiple="multiple" tabindex="6"
								id="selectMenu" name="selectMenu">

								<%-- <option value="-1"><c:out value="All"/></option>

								<c:forEach items="${unSelectedMenuList}" var="unSelectedMenu"
									varStatus="count">
									<option value="${unSelectedMenu.menuId}"><c:out value="${unSelectedMenu.menuTitle}"/></option>
								</c:forEach> --%>


							</select>
						</div>
					</div>

				</div>

				<br>

				<!-- <div class="col-sm-9 col-lg-5 controls">
 -->
				<%-- <div class="row">
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label">Delivery </label>
						<div class="col-sm-6 col-lg-2 controls">
							<select data-placeholder="Select Delivery"
								class="form-control chosen" name="delType" id="delType"
								onchange="onDeliveryChange(this.value)">
								<option value="">Select Delivery</option>
								<option value="1"><c:out value="First Delivery" />
								</option>
								<option value="2"><c:out value="Second Delivery" />
								</option>
							</select>

						</div>
						<label class="col-sm-3 col-lg-1 control-label">Route </label>
						<div class="col-sm-6 col-lg-3 controls">
							<select data-placeholder="Select Route"
								class="form-control chosen" name="selectRoute" id="selectRoute"
								onchange="onRouteChange(this.value)">
							
								<option value="0">Select Route</option> --%>
				<%-- <c:forEach items="${routeList}" var="route" varStatus="count">
									<option value="${route.routeId}"><c:out value="${route.routeName}"/> </option>

								</c:forEach> --%>
				<!-- 	</select>

						</div>


					</div> 
				</div>-->
				<br> <br>
				<div class="row">
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label">Franchisee
						</label>
						<div class="col-sm-6 col-lg-8" id="multiFr" style="display: none">

							<select data-placeholder="Choose Franchisee"
								class="form-control chosen" multiple tabindex="6" id="selectFr"
								name="selectFr" onchange="setAllFrSelected(this.value)">

								<option value="-2"><c:out value="All" /></option>

								<c:forEach items="${unSelectedFrList}" var="fr"
									varStatus="count">
									<option value="${fr.frId}"><c:out value="${fr.frName}" /></option>
								</c:forEach>
							</select>

						</div>

						<div class="col-sm-6 col-lg-8" id="singleFr" style="display: none">

							<select data-placeholder="Choose Franchisee"
								class="form-control chosen" tabindex="6" id="selectFr1"
								name="selectFr1" onchange="getAdvOrderHeaders()">

								<option selected disabled value="-2"><c:out
										value="Select Franchise" /></option>

								<c:forEach items="${unSelectedFrList}" var="fr"
									varStatus="count">
									<option value="${fr.frId}"><c:out value="${fr.frName}" /></option>
								</c:forEach>
							</select>

						</div>


						<div class="col-md-1">
							<button class="btn btn-info" onclick="generateNewBill()">Search</button>


						</div>
					</div>
				</div>
				<br>
				<div class="row">

					<div class="form-group" id="advOrdHeaderDiv" style="display: none">
						<label class="col-sm-3 col-lg-2 control-label">Select
							Order </label>

						<div class="col-sm-3 col-lg-8">

							<select data-placeholder="Choose Order"
								class="form-control chosen" tabindex="6" id="advOrdHeaderId"
								name="advOrdHeaderId">

							</select>

						</div>

						<!-- 
						<div class="col-md-1">
							<button class="btn btn-info" onclick="generateAdvOrderBill()">Search
								By Order</button>

						</div> -->
					</div>


				</div>
				<!--	</div>
				 </div> -->


				<%-- <div class="form-group col-md-9">
					<label class=" col-md-2">Select
						Franchise </label>
					<div class=" col-md-7">
						<select data-placeholder="Choose Franchisee"
							class="form-control chosen " multiple="multiple" tabindex="6"
							id="selectFr" name="selectFr">

							<option value="-1"><c:out value="All"/></option>

							<c:forEach items="${unSelectedFrList}" var="fr" varStatus="count">
								<option value="${fr.frId}"><c:out value="${fr.frName}"/></option>
							</c:forEach>
						</select>
					</div>

				</div> --%>

				<!-- 
				<br>
				<div class="row"> -->



				<div align="center" id="loader" style="display: none">

					<span>
						<h4>
							<font color="#343690">Loading</font>
						</h4>
					</span> <span class="l-1"></span> <span class="l-2"></span> <span
						class="l-3"></span> <span class="l-4"></span> <span class="l-5"></span>
					<span class="l-6"></span>
				</div>

			</div>
		</div>


		<div class="box">
			<!-- <div class="box-title">
				<h3>
					<i class="fa fa-list-alt"></i>Bill
				</h3>

			</div>
 -->
			<form id="submitBillForm"
				action="${pageContext.request.contextPath}/submitNewBill"
				method="post"
				onsubmit="submitBill.disabled = true; return confirm('Do you want to Generate Bill ?');">

				<input type="hidden" name="sectionId" id="postSectionId" />
				<div class=" box-content">
					<div class="row">
						<div class="col-md-12 table-responsive">
							<table class="table table-bordered table-striped fill-head "
								border="1" style="width: 100%" id="table_grid">
								<thead style="background-color: #f3b5db;">
									<tr>
										<th>Sr</th>
										<th>Franchise</th>
										<th>Menu</th>
										<th>Item</th>
										<th>Order Qty</th>
										<th>Bill Qty</th>
										<th>Base Rate</th>
										<th>Disc %</th>
										<th>Disc</th>
										<th>Taxable</th>
										<th>Tax %</th>
										<th>SGST Rs</th>
										<th>CGST Rs</th>
										<!-- <th>IGST Rs</th> -->
										<th>Total</th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div id="billTo" style="display: none">

							<label class="col-sm-3 col-lg-2 control-label">Cust Name</label>
							<div class="col-sm-9 col-lg-2 controls">
								<input type="text" name="billToName" value="CASH"
									id="billToName" class="form-control" />

							</div>
							<label class="col-sm-3 col-lg-1 control-label">GSTIN</label>
							<div class="col-sm-9 col-lg-2 controls">
								<input type="text" name="billToGstin" value="" id="billToGstin"
									class="form-control" />
							</div>
							<label class="col-sm-3 col-lg-1 control-label">Address</label>
							<div class="col-sm-9 col-lg-3 controls">
								<input type="text" name="billToAddress" value=""
									id="billToAddress" class="form-control" />
							</div>
						</div>
					</div>
					<div class="form-group"></div>
					<div class="row">
						<div id="shipTo" style="display: none">

							<label class="col-sm-3 col-lg-2 control-label">Party Name</label>
							<div class="col-sm-9 col-lg-2 controls">
								<input type="text" name="shipToName" value="" id="shipToName"
									class="form-control" />

							</div>
							<label class="col-sm-3 col-lg-1 control-label">GSTIN</label>
							<div class="col-sm-9 col-lg-2 controls">
								<input type="text" name="shipToGstin" value="" id="shipToGstin"
									class="form-control" />
							</div>
							<label class="col-sm-3 col-lg-1 control-label">Address</label>
							<div class="col-sm-9 col-lg-3 controls">
								<input type="text" name="shipToAddress" value=""
									id="shipToAddress" class="form-control" />
							</div>
						</div>
					</div>

					<div class="form-group"></div>

					<div class="row">
						<label class="col-sm-3 col-lg-1 control-label">Veh-No: </label>
						<div class="col-sm-6 col-lg-2 controls">
							<input type="text" name="vehNo" class="form-control" id="vehNo"
								value="-" />
						</div>
						<label class="col-sm-3 col-lg-1 control-label">Time </label>
						<div class="col-sm-6 col-lg-2 controls">
							<input type="text" name="time" id="time" class="form-control"
								value="${time}" />
						</div>
						<div class="col-md-offset-3 col-md-1">
							<!-- 							<button class="btn btn-info pull-right">Submit & PDF</button>
 -->
							<%-- <a href="${pageContext.request.contextPath}/pdf?url=showBillPdf"
								target="_blank">PDF</a> --%>
							<button class="btn btn-info pull-right"
								style="margin-right: 5px;" id="submitBill" name="submitBill"
								disabled="disabled">Submit Bill</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- END Main Content -->

	<footer>
		<p>2019 © MADHAVI.</p>
	</footer>

	<a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i
		class="fa fa-chevron-up"></i></a>

	<script type="text/javascript">
			function submitBill() {

				//submitBillForm.submit();
				 //window.open("${pageContext.request.contextPath}/pdf?url=showBillPdf");
				 
				// window.open("${pageContext.request.contextPath}/showBillListForPrint");
			}
		</script>


	<script type="text/javascript">
		
	function getMenuListBySectionId() {
		
		var sectionId = $("#sectionId").val();
		//alert("sectionId "+sectionId);
		 $('#table_grid td').remove();
		 if(sectionId==1){
			   document.getElementById("billTo").style.display="none";
			   document.getElementById("shipTo").style.display="none";
			 document.getElementById("multiFr").style="display:block"
					 document.getElementById("singleFr").style.display = "none";
			 document.getElementById("advOrdHeaderDiv").style.display = "none";


		}else{
			document.getElementById("singleFr").style.display="block"
				 document.getElementById("multiFr").style.display = "none";
			
		} 
		
			 if(sectionId=="" || sectionId==null){
					$('#selectMenu')
				    .find('option')
				    .remove()
				    .end()
				    $("#selectMenu").trigger("chosen:updated");
			 }else{
					$.getJSON('${getMenuListBySectionId}', {
						sectionId : sectionId,
						ajax : 'true'
					}, function(data) {
					 	var html = '<option value="">Select Section</option>';
						var len = data.length;
						$('#selectMenu')
					    .find('option')
					    .remove()
					    .end()
						
						for ( var i = 0; i < len; i++) {
				            $("#selectMenu").append(
				                    $("<option selected></option>").attr(
				                        "value", data[i].menuId).text(data[i].menuTitle)
				                );
						}
						   $("#selectMenu").trigger("chosen:updated");
						   //$("#selectFr").trigger("chosen:updated");
					}); 
			 }
		 
	}
	
	
		function generateNewBill() {
 
			var isValid = validate();

			if (isValid) {
				var selectedFr="";
var advOrdHeaderId=0;
				var routeId=$("#selectRoute").val();
				var sectionId=$("#sectionId").val();
				if(sectionId==1){
					selectedFr = $("#selectFr").val();
				}else{
					selectedFr = $("#selectFr1").val();
					advOrdHeaderId=document.getElementById("advOrdHeaderId").value
				}
				
				var selectedMenu = $("#selectMenu").val();
				var deliveryDate = $("#deliveryDate").val();
				
				document.getElementById("postSectionId").value=sectionId;
				$('#loader').show();

				$
						.getJSON(
								'${getBillList}',

								{
									fr_id_list : JSON.stringify(selectedFr),
									menu_id_list : JSON.stringify(selectedMenu),
									deliveryDate : deliveryDate,
									route_id:routeId,
									advOrdHeaderId : advOrdHeaderId,
									ajax : 'true'

								},
								function(data) {
									
									
									
									$('#table_grid td').remove();
									$('#loader').hide();
									document.getElementById("submitBill").disabled = false;

									if (data == "") {
										alert("No records found !!");
										document.getElementById("submitBill").disabled = true;

									}

									$
											.each(
													data,
													function(key, bill) {
														
														if(bill.orderQty>0){
															var cls ="";
															if(bill.isOwnFr==1)
																{
																cls="color:green;";
																}else
																{
																cls="";
																}	

														var index = key + 1;
													
															var tr ;
															tr="<tr>";
														

														var index = "<td style="+cls+">&nbsp;"
																+ index
																+ "</td>";

																
														var frName = "<td style="+cls+">&nbsp;"
																+ bill.frName
																+ "</td>";

														var menuTitle = "<td >&nbsp;"
																+ bill.menuTitle
																+ "</td>";

														/* var itemId = "<td>&nbsp;&nbsp;&nbsp;"
																+ bill.itemId
																+ "</td>"; */
															
																
																if(bill.menuId==67){
																var itemName = "<td style='background-color:pink' >&nbsp;"
																		+ bill.itemName
																		+ "</td>";	
																}else{
																	var itemName = "<td  >&nbsp;"
																		+ bill.itemName
																		+ "</td>";	
																	
																}
																

														var orderQty = "<td>&nbsp;<input type=hidden name=sgstPer"+bill.catId+""+bill.orderId+" id=sgstPer"+bill.catId+""+bill.orderId+" value="+bill.itemTax1+" /><input type=hidden name=cgstPer"+bill.catId+""+bill.orderId+" id=cgstPer"+bill.catId+""+bill.orderId+" value="+bill.itemTax2+" /><input type=hidden name=igstPer"+bill.catId+""+bill.orderId+" id=igstPer"+bill.catId+""+bill.orderId+" value="+bill.itemTax3+" /> "
																+ bill.orderQty
																+ "</td>";

														 var billQty = "<td align=center><input type='text' min=0 style='width: 5em' class=form-control   onkeyup= updateTotal("
																+ bill.catId+","+bill.orderId + ","
																+ bill.orderRate + ","+ bill.orderMrp + ","+ bill.isOwnFr + ") onchange= updateTotal("+ bill.catId+","+bill.orderId+ ","+ bill.orderRate+","+ bill.orderMrp + ","+ bill.isOwnFr + ")  id=billQty"+ bill.catId+""+bill.orderId+ " name=billQty"+bill.catId+""+bill.orderId+" value = "+ bill.orderQty+ "></td>"; 
														
												 var discPer = "<td align=center><input type=text  style='width: 5em' class=form-control   onkeyup= updateTotal("
																		+ bill.catId+","+bill.orderId + ","
																		+ bill.orderRate + ","+ bill.orderMrp + ","+ bill.isOwnFr + ") onchange= updateTotal("+ bill.catId+","+bill.orderId+ ","+ bill.orderRate+ ","+ bill.orderMrp + ","+ bill.isOwnFr + ")  id=discPer"+ bill.catId+""+bill.orderId+ " name=discPer"+bill.catId+""+bill.orderId+" value ="+bill.isPositive+" ></td>"; 
																	
																//var billQty = "<td align=center><input name=newId id=newId value=21 type=number ></td>";
                                                   
															var baseRateAmt	;
															if(bill.isOwnFr==1){
																if(bill.isSameState==1)	{
																	 baseRateAmt=(bill.orderMrp*100)/(100+bill.itemTax1+bill.itemTax2);	
																}
																else{
																	baseRateAmt=(bill.orderMrp*100)/(100+bill.itemTax3);	
																}
															}else{
																	if(bill.isSameState==1)	{
																		 baseRateAmt=(bill.orderRate*100)/(100+bill.itemTax1+bill.itemTax2);	
																	}
																	else{
																		baseRateAmt=(bill.orderRate*100)/(100+bill.itemTax3);	
																	}
															}
																
														//var baseRateAmt=(bill.orderRate*100)/(100+bill.itemTax1+bill.itemTax2);
														//alert("base Rate Amt ="+baseRateAmt);
														baseRateAmt=baseRateAmt.toFixed(2);
														var baseRate = "<td align=center>&nbsp;"
															+ baseRateAmt+ "</td>";
															
															
														/* var orderRate = "<td align=center id=billRate"+bill.orderId+"  value="
																+ bill.orderRate
																+ ">"
																+ bill.orderRate
																+ "</td>" */;
																var t1=parseFloat(bill.itemTax1);
																var t2=parseFloat(bill.itemTax2);
																var t3=parseFloat(bill.itemTax3);
																//alert("taxes ="+t1+"-"+t2+"-"+t3);

																var taxableAmt= baseRateAmt * bill.orderQty;
																var disCalAmt=(taxableAmt * bill.isPositive) /100;//alert(discAmt+"discAmt");
																disCalAmt=disCalAmt.toFixed(2);
																var discAmt = "<td align=center  id=discAmt"+bill.catId+""+bill.orderId+">"+disCalAmt+"</td>"; //new
																
																taxableAmt=taxableAmt-disCalAmt;
																taxableAmt=taxableAmt.toFixed(2);
																//var taxableAmount = "<td align=center"+taxableAmt+">"+"</td>";
																var taxableAmount ="<td align=center id=taxableAmount"+bill.catId+""+bill.orderId+">&nbsp;"
																+ taxableAmt+ "</td>";
																//alert("taxable amt "+taxableAmt);
																
																var sgstRS=0;
																var cgstRS=0;
																var igstRS=0;
																var totalTax=0;
																if(bill.isSameState==1)	{
																	
																	 sgstRS=(t1*taxableAmt)/100;
																	 cgstRS=(t2*taxableAmt)/100;
																	 igstRS=0;
																	 
																	 totalTax=sgstRS+cgstRS;
																}
																else{
																	
																	 sgstRS=0;
																	 cgstRS=0;
																	 igstRS=(t3*taxableAmt)/100;
																	 totalTax=igstRS;
																}
																//var sgstRS=(t1*taxableAmt)/100;
																//var cgstRS=(t2*taxableAmt)/100;
																//var igstRS=(t3*taxableAmt)/100;
																sgstRS=sgstRS.toFixed(2);
																cgstRS=cgstRS.toFixed(2);
																igstRS=igstRS.toFixed(2);
																
																//alert("rs 1"+sgstRS);
																//alert("rs 2 "+cgstRS);
																//alert("rs 3 "+igstRS);
																//var totalTax=sgstRS+cgstRS+igstRS;
																//alert(totalTax);

																var sgst = "<td align=center id=sgstRs"+bill.catId+""+bill.orderId+">&nbsp;"
																	+ sgstRS+ "</td>";

																var cgst = "<td align=center id=cgstRs"+bill.catId+""+bill.orderId+">&nbsp;"
																	+ cgstRS+ "</td>";
																var igst ="<td align=center id=igstRs"+bill.catId+""+bill.orderId+">&nbsp;"
																	+ igstRS+ "</td>";
																var totTaxP;
																
																if(bill.isSameState==1)	{
																	 totTaxP=t1+t2;
																	
																}else{
																	
																	totTaxP=t3;
																}
																
																var totTaxPer = "<td align=center>&nbsp;"
																	+ totTaxP+ "</td>";
																
																	
														var total = parseFloat(taxableAmt)+parseFloat(totalTax);
																
														total=total.toFixed(2);
														
														var totaLBill = "<td align=center id=billTotal"+bill.catId+""+bill.orderId+">"
																+ total
																+ "</td>";

														var trclosed = "</tr>";

														$('#table_grid tbody')
																.append(tr);
														$('#table_grid tbody')
																.append(index);
														$('#table_grid tbody')
																.append(frName);
														$('#table_grid tbody')
																.append(
																		menuTitle);
														/* $('#table_grid tbody')
																.append(itemId); */
														$('#table_grid tbody')
																.append(
																		itemName);
														$('#table_grid tbody')
																.append(
																		orderQty);
														$('#table_grid tbody')
																.append(billQty);
														$('#table_grid tbody')
																.append(
																		baseRate);
														
														$('#table_grid tbody')
														.append(
																discPer);
														$('#table_grid tbody')
														.append(
																discAmt);
														$('#table_grid tbody')
														.append(
																taxableAmount);
														 $('#table_grid tbody')
															.append(
																	totTaxPer); 
														 
														 $('#table_grid tbody')
															.append(
																	sgst); 
														 
														 $('#table_grid tbody')
															.append(
																	cgst); 
														 
													/* 	 $('#table_grid tbody')
															.append(
																	igst); 
														  */
													
														 
														
														$('#table_grid tbody')
																.append(
																		totaLBill);

														$('#table_grid tbody')
																.append(
																		trclosed);
														
													}

													})

								});

			}
			getAdvOrHeader(advOrdHeaderId);
		}
		
		function getAdvOrHeader(advOrdHeaderId)
		{
			//alert("advOrdHeaderId" +advOrdHeaderId)
			$.post(
					'${getCustIdFromOrderHeaderId}',
					{
						advOrdHeaderId : advOrdHeaderId,
						ajax : 'true'
					},
					function(data) {
						   //alert(data);
						getCustData(data);
					});
			
		}
		
	</script>

	<script type="text/javascript">
	function validate() {
		var selectedFr="";

		var sectionId=$("#sectionId").val();
		
		if(sectionId==1){
			selectedFr = $("#selectFr").val();
		}else{
			selectedFr = $("#selectFr1").val();
		}
		
		var selectedMenu = $("#selectMenu").val();
		var selectedRoute = $("#selectRoute").val();


		var isValid = true;
		if (selectedMenu == "" || selectedMenu == null) {

			isValid = false;
			alert("Please select Menu");

		}else
		if ((selectedFr == "" || selectedFr == null ) && (selectedRoute==0)) { 

				alert("Please Select Route  Or Franchisee");
				isValid = false;
		
		}
		return isValid;

	}
	</script>

	<script type="text/javascript">
		function updateTotal(catId,orderId, rate,mrp,isOwnFr) {
			
			var baseRate=0;
			var qty= parseFloat($("#billQty" +catId+""+orderId).val());//alert(qty+"qty");
			var discPer=parseFloat($("#discPer" + catId+""+orderId).val());//alert(discPer+"discPer");
			var sgstPer=parseFloat($("#sgstPer" + catId+""+orderId).val());// alert(sgstPer+"sgstPer");
			var cgstPer=parseFloat($("#cgstPer" + catId+""+orderId).val());//alert(cgstPer+"cgstPer");
    		if(isOwnFr==1){
			        baseRate = ((mrp * 100) / (100 + sgstPer+cgstPer));//alert(baseRate+"baseRate");
    		}else
    			{
    			    baseRate = ((rate * 100) / (100 + sgstPer+cgstPer));//alert(baseRate+"baseRate");
    			}

			var taxableAmt = parseFloat(qty) * parseFloat(baseRate);//alert(taxableAmt+"taxableAmt");
			 if(discPer>0){
           	   var discAmt=((parseFloat(taxableAmt) * parseFloat(discPer)) /100);//alert(discAmt+"discAmt");
           	  document.getElementById("discAmt" + catId+""+orderId).innerHTML=discAmt.toFixed(2);
           	 
           	  taxableAmt=parseFloat(taxableAmt) - parseFloat(discAmt);//alert(taxableAmt+"taxableAmt");
           	  var sgstRs=((parseFloat(taxableAmt) * parseFloat(sgstPer))/100);//alert(sgstRs+"sgstRs");
              var cgstRs=((parseFloat(taxableAmt) * parseFloat(cgstPer))/100);//alert(cgstRs+"cgstRs");
         	 var taxAmt=(parseFloat(sgstRs) + parseFloat(cgstRs));//alert(taxAmt+"taxAmt");
         	 
           	  var total=parseFloat(taxableAmt) + parseFloat(taxAmt);//alert("total"+total);
           	  
      		 document.getElementById("sgstRs"+catId+""+orderId).innerHTML=sgstRs.toFixed(2);
     		 document.getElementById("cgstRs"+catId+""+orderId).innerHTML=cgstRs.toFixed(2);

           	 $('#billTotal'+catId+""+orderId).html(total.toFixed(2));
           	 $('#taxableAmount'+catId+""+orderId).html(taxableAmt.toFixed(2));
           	 }
           	 else
           		 {
           		  var discAmt=0.0;
           		  document.getElementById("discAmt" + catId+""+orderId).innerHTML=discAmt;
           		 var sgstRs=((parseFloat(taxableAmt) * parseFloat(sgstPer))/100);
                 var cgstRs=((parseFloat(taxableAmt) * parseFloat(cgstPer))/100);
                 
           		 var taxAmt=(parseFloat(sgstRs) + parseFloat(cgstRs));
           		 var total=parseFloat(taxableAmt)+ parseFloat(taxAmt);//alert("total"+total);
           		 
           		 document.getElementById("sgstRs"+catId+""+orderId).innerHTML=sgstRs.toFixed(2);
         		 document.getElementById("cgstRs"+catId+""+orderId).innerHTML=cgstRs.toFixed(2);

               	 $('#billTotal'+catId+""+orderId).html(total.toFixed(2));
               	 $('#taxableAmount'+catId+""+orderId).html(taxableAmt.toFixed(2));
           		 }

			
		}
	</script>

	<script>
$('.datepicker').datepicker({
    format: {
        /*
         * Say our UI should display a week ahead,
         * but textbox should store the actual date.
         * This is useful if we need UI to select local dates,
         * but store in UTC
         */
    	 format: 'mm/dd/yyyy',
    	    startDate: '-3d'
    }
});

</script>

	<script type="text/javascript">

function disableFr(){

	//alert("Inside Disable Fr ");
document.getElementById("selectFr").disabled = true;

}

function disableRoute(){

	//alert("Inside Disable route ");
	var x=document.getElementById("selectRoute")
	//alert(x.options.length);
	var i;
	for(i=0;i<x;i++){
		document.getElementById("selectRoute").options[i].disabled;
		 //document.getElementById("pets").options[2].disabled = true;
	}
//document.getElementById("selectRoute").disabled = true;

}

</script>
	<script type="text/javascript">
function onDeliveryChange(delType)
{
	$.getJSON('${getRouteListByDelType}', {
		
		delType : delType,
		ajax : 'true'
	}, function(data) {

		var len = data.length;
		
		$('#selectRoute')
	    .find('option')
	    .remove()
	    .end()
	    $("#selectRoute").append($("<option value='0'>Select Route</option>"));
		for ( var i = 0; i < len; i++) {
            $("#selectRoute").append($("<option></option>").attr("value", data[i].routeTrayId).text(data[i].routeName));
		}
		   $("#selectRoute").trigger("chosen:updated");
	});
	
}
function onRouteChange(routeId)
{
	$.getJSON('${getRouteMgmtByRouteId}', {
		routeId : routeId,
		ajax : 'true'
	}, function(data) {
		document.getElementById("vehNo").value=data.exVar1;
		document.getElementById("time").value=data.exVar2;
		
	});
$.getJSON('${getFrListByRouteId}', {
		
	    routeId : routeId,
		ajax : 'true'
	}, function(data) {

		var len = data.length;
		
		
		var selectedFr="";

		var sectionId=$("#sectionId").val();
		
		if(sectionId==1){
			
			$('#selectFr')
		    .find('option')
		    .remove()
		    .end()
		    $("#selectFr").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr").append($("<option ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr").trigger("chosen:updated");
			   
			   
		}else{
			$('#selectFr1')
		    .find('option')
		    .remove()
		    .end()
		   // $("#selectFr1").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr1").append($("<option ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr1").trigger("chosen:updated");
			   $('#table_grid td').remove();
		}
		
		
	});
	
}
</script>
	<script>
function setAllFrSelected(frId)
{
	
	var sectionId=$("#sectionId").val();

	if(frId>0){
	var routeId = $("#selectRoute").val();
	$.getJSON('${getFrListofAllFr}', {
		
	  //  routeId : routeId,
		ajax : 'true'
	}, function(data) {

		var len = data.length;
		
		
		if(sectionId==1){
			/* $('#selectFr')
		    .find('option')
		    .remove()
		    .end()
		    $("#selectFr").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr").append($("<option selected ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr").trigger("chosen:updated"); */	
			
		}else{
			//alert("Hi")
			$('#selectFr1')
		    .find('option')
		    .remove()
		    .end()
		   // $("#selectFr1").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr1").append($("<option selected ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr1").trigger("chosen:updated");
			   
			   //get Adv Order Header for selected fr by passing delDate,frId
			   
				//alert("sectionId "+sectionId);
				
				 if(sectionId==1){
					// alert("a")
					
							 document.getElementById("advOrdHeaderDiv").style.display = "none";

				}else{
					//alert("b")
					document.getElementById("advOrdHeaderDiv").style.display="block"
					
						
				} 
		}
		
	});
	
	}
	else if(frId==-2){
		$.getJSON('${getFrListofAllFr}', {
			 
			ajax : 'true'
		}, function(data) {

			var len = data.length;
			
			//alert(len);
			var sectionId=$("#sectionId").val();
		
		if(sectionId==1){
			$('#selectFr')
		    .find('option')
		    .remove()
		    .end()
		    $("#selectFr").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr").append($("<option selected ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr").trigger("chosen:updated");
				 document.getElementById("advOrdHeaderDiv").style.display = "none";

		}else{
			$('#selectFr1')
		    .find('option')
		    .remove()
		    .end()
		   // $("#selectFr1").append($("<option value='-1'>All</option>"));
			for ( var i = 0; i < len; i++) {
	            $("#selectFr1").append($("<option selected ></option>").attr("value", data[i].frId).text(data[i].frName));
			}
			   $("#selectFr1").trigger("chosen:updated");
		}
			
		});
	}
}

</script>
	<script type="text/javascript">

function getAdvOrderHeaders(){
	var selectedFr = $("#selectFr1").val();
	  var deliveryDate = $("#deliveryDate").val();
	//  alert("JSON.stringify(selectedFr)" +JSON.stringify(selectedFr))
	 //  alert("JSON.stringify(deliveryDate)" +deliveryDate)
	 
	  document.getElementById("shipToName").value="";
						     document.getElementById("shipToGstin").value="";
							 document.getElementById("shipToAddress").value="";
	  var frId=0;
		$.getJSON('${getAdvOrderHeadList}',
				{
					fr_id_list : JSON.stringify(selectedFr),
					deliveryDate : deliveryDate,
					ajax : 'true'
				},
				function(data) {
					document.getElementById("advOrdHeaderDiv").style.display="block";
					var len = data.length;
					$('#advOrdHeaderId')
				    .find('option')
				    .remove()
				    .end()
				    $("#advOrdHeaderId").append($("<option disabled selected value='-1'>Select Order</option>"));
					for ( var i = 0; i < len; i++) {
						var custData=data[i].custName+" Ph: "+data[i].phoneNumber+" Rs: "+data[i].total;
			            $("#advOrdHeaderId").append($("<option></option>").attr("value", data[i].advHeaderId).text(custData));
					}
					   $("#advOrdHeaderId").trigger("chosen:updated");
						document.getElementById("billTo").style.display="block";
					    document.getElementById("shipTo").style.display="block";
					    findShipFranchiseeData(data[0].frId);
					    //getCustData(data[0].custId);
				});
		}

function findShipFranchiseeData(frId)
{
	$.getJSON(
					'${findFranchiseeData}',
					{
						fr_id:frId,
						ajax : 'true'
					},
					function(data) {
						if(data.length!=0)
							{
							 document.getElementById("shipToName").value=data.frName;
						     document.getElementById("shipToGstin").value=data.frGstNo;
							 document.getElementById("shipToAddress").value=data.frAddress;
							}
					});
}

function getCustData(custId) {
	if (custId != 0) {
		$
				.post(
						'${editCustomerFromBill}',
						{
							custId : custId,
							ajax : 'true'
						},
						function(data) {
							    document.getElementById("billToName").value = data.custName;
								document.getElementById("billToGstin").value = data.gstNo;
								document.getElementById("billToAddress").value = data.address;
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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/chosen-bootstrap/chosen.jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/jquery-tags-input/jquery.tagsinput.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/jquery-pwstrength/jquery.pwstrength.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-duallistbox/duallistbox/bootstrap-duallistbox.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/dropzone/downloads/dropzone.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/clockface/js/clockface.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-switch/static/js/bootstrap-switch.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/ckeditor/ckeditor.js"></script>

	<!--flaty scripts-->
	<script src="${pageContext.request.contextPath}/resources/js/flaty.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/flaty-demo-codes.js"></script>
</body>
</html>