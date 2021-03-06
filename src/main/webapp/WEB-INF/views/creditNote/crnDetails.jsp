<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<body onload="placeValue()">

	<jsp:include page="/WEB-INF/views/include/logout.jsp"></jsp:include>
	<c:url var="insertGateGrnProcessAgree"
		value="/insertGateGrnProcessAgree" />

	<c:url var="insertAccGrnProcessAgree" value="/insertAccGrnProcessAgree" />

	<c:url var="insertAccGrnProcessDisAgree"
		value="/insertAccGrnProcessDisAgree" />

	<c:url var="getDateForGrnAcc" value="/getDateForGrnAcc" />

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
						<i class="fa fa-file-o"></i>CRN LIST
					</h1>

				</div>
			</div>
			<!-- END Page Title -->



			<!-- BEGIN Main Content -->
			<div class="row">
				<div class="col-md-12">
					<%-- <div class="box">
						<div class="box-title">
							<h3>
								<i class="fa fa-bars"></i> Credit Note
							</h3>
							<div class="box-tool">
								<a href="${pageContext.request.contextPath}/showCreditNotes">Back to List</a> <a data-action="collapse" href="#"><i
									class="fa fa-chevron-up"></i></a>
							</div>
							<!-- <div class="box-tool">
								<a data-action="collapse" href="#"><i
									class="fa fa-chevron-up"></i></a> <a data-action="close" href="#"><i
									class="fa fa-times"></i></a>
							</div> -->
						</div> --%>


						<div class="box-content">

							<form action="${pageContext.request.contextPath}/updateCreditNote"
				class="form-horizontal" method="post" id="validation-form" onsubmit="return confirm('Do you want to update Credit Note ?');">

              <input type="hidden" name="crnId" id="crnId" value="${creditNoteHeaders.crnId}" />
             <input type="hidden" name="fromDate" id="fromDate" value="${fromDate}" />
              <input type="hidden" name="toDate" id="toDate" value="${toDate}" />
               <input type="hidden" name="selectFr" id="selectFr" value="${selectFr}" />
								<div class="box">
									<div class="box-title">
										<h3>
											<i class="fa fa-table"></i> Credit Note Details List for Credit Note Id : ${creditNoteHeaders.crnId}
										</h3>
										<div class="box-tool">
								<a href="${pageContext.request.contextPath}/showCreditNotes">Back to List</a> <a data-action="collapse" href="#"><i
									class="fa fa-chevron-up"></i></a>
							</div>
									</div>

									<div class="box-content">
<div class="col-md-9" ></div> 
				<div class="col-md-3" >	<label for="search" class="col-md-3" id="search">
   
									<input type="text"  id="myInput" onkeyup="myFunction()" placeholder=" Search By Item Name.." title=" Search" style="padding-left:10px;height:25px;border-radius: 25px;">
										</label></div>
									<table style="width: 100%; border: 1px dashed;font-size: 14px;">
										<tbody>
											<tr >
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;CREDIT NOTE NO: </td><td style="border: 1px dashed;">&nbsp; <b> ${creditNoteHeaders.crnNo} </b></td>
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;DATE:</td><td style="border: 1px dashed;"><b>
											<input class="form-control date-picker" id="date" size="19" style="width:170px;" placeholder="dd-mm-yyyy" type="text" name="date" value="${creditNoteHeaders.crnDate}" required/>
											  </b></td>
											</tr>
											<tr style="border: 1px dashed;">
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;INVOICE NO:</td><td style="border: 1px dashed;">&nbsp;<b> ${creditNoteHeaders.exVarchar1} </b></td>
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;FRANCHISEE NAME:</td><td style="border: 1px dashed;">&nbsp;<b> ${creditNoteHeaders.frName} </b></td>
											</tr>
											<tr>
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;TAXABLE AMOUNT:</td><td style="border: 1px dashed;">&nbsp;<b> ${creditNoteHeaders.crnTaxableAmt} </b></td>
											<td style="border: 1px dashed;font-weight: bold;">&nbsp;TAX AMOUNT:</td><td style="border: 1px dashed;">&nbsp;<b> ${creditNoteHeaders.crnTotalTax} </b></td>
											</tr>
											<tr><td colspan="2" style="border: 1px dashed;" >&nbsp;</td>
												<td style="border: 1px dashed;font-weight: bold;" >&nbsp;TOTAL:</td><td style="border: 1px dashed;">&nbsp;<b> ${creditNoteHeaders.crnGrandTotal}</b></td>
											</tr>
											
										</tbody>
									</table>
									<br>
										<div class="clearfix"></div>
										<div class="table-responsive" style="border: 0">
											<table width="100%"
												class="table table-advance table-responsive table-position"
												id="table1">
												<thead style="background-color:#f3b5db; ">
													<tr>

														<th>Sr No</th>
														<th>GrnGvn Sr No</th>
														<th>GrnGvn Date</th>
														<th>Invoice No</th>
														<th>Item Name</th>
														<th>Type</th>
														<th>GrnBaseRate</th>
														<th>Quantity</th>
														<th>Tax %</th>
														<th>Taxable Amt</th>
														<th>Tax Amt</th>
														<th>Amount</th>
													</tr>

												</thead>
												<tbody>
													<c:forEach items="${crnDetailList}" var="crnDetail"
														varStatus="count">

														<tr>

															<td><c:out value="${count.index+1}" /></td>

															<td align="left"><c:out
																	value="${crnDetail.grngvnSrno}" /></td>

															<td align="left"><c:out
																	value="${crnDetail.grnGvnDate}" /></td>


															<td align="left"><c:out
																	value="${crnDetail.refInvoiceNo}" /></td>
																	
															<td align="left"><c:out
																	value="${crnDetail.itemName}" /></td>
															
															
															<c:set var="type" value="aa"></c:set>

															<c:choose>
																<c:when test="${crnDetail.isGrn==1}">

																	<c:choose>
																		<c:when test="${crnDetail.grnType==0}">
																			<c:set var="type" value="GRN -(1)"></c:set>
																		</c:when>

																		<c:when test="${crnDetail.grnType==1}">
																			<c:set var="type" value="GRN -(2)"></c:set>
																		</c:when>

																		<c:when test="${crnDetail.grnType==2}">
																			<c:set var="type" value="GRN -(3)"></c:set>
																		</c:when>

																		<c:when test="${crnDetail.grnType==4}">
																			<c:set var="type" value="GRN -(3)"></c:set>
																		</c:when>

																	</c:choose>

																</c:when>
																<c:when test="${crnDetail.isGrn==0}">

																	<c:set var="type" value="GVN"></c:set>

																</c:when>
															</c:choose>
  
															<td align="left"><c:out value="${type}"></c:out></td>
															<c:choose>
															<c:when test="${crnDetail.grnGvnQty==0}">
															<c:choose>
															<c:when test="${crnDetail.isGrn==0}">
																 <fmt:formatNumber type = "number" maxFractionDigits = "2" minFractionDigits = "2" value = "${(crnDetail.baseRate)*0.99}" var="grnBaseRate"   groupingUsed="false" />
															</c:when>
															<c:otherwise>
															 <fmt:formatNumber type = "number" maxFractionDigits = "2" minFractionDigits = "2" value = "${(crnDetail.baseRate)*0.79}" var="grnBaseRate"  groupingUsed="false" />
															</c:otherwise>
															</c:choose>
															</c:when>
															<c:otherwise>
															 <fmt:formatNumber type = "number"       maxFractionDigits = "2" minFractionDigits = "2" value = "${crnDetail.taxableAmt/crnDetail.grnGvnQty}" var="grnBaseRate"  groupingUsed="false" />
															</c:otherwise>
															</c:choose>
                                                         
                                                           
                                                            <td align="left">${grnBaseRate}
                                                            <input type="hidden" name="grnBaseRate${crnDetail.crndId}" id="grnBaseRate${crnDetail.crndId}" value="${grnBaseRate}" />
                                                            </td>
															<td align="left"><input type="text" class="form-control"  style="width:80px;" name="grnGvnQty${crnDetail.crndId}" id="grnGvnQty${crnDetail.crndId}"  value="${crnDetail.grnGvnQty}"      onchange="calCrnValues(${crnDetail.crndId},${grnBaseRate})"/>
																</td>
                                                            	<td align="left"><input type="text" class="form-control"  style="width:80px;" name="totalTaxPer${crnDetail.crndId}" id="totalTaxPer${crnDetail.crndId}"  value="${crnDetail.cgstPer+crnDetail.sgstPer}" onchange="calCrnValues(${crnDetail.crndId},${grnBaseRate})"/> </td>
															<td align="left" id="taxableAmt${crnDetail.crndId}"><c:out
																	value="${crnDetail.taxableAmt}"></c:out></td>

															<td align="left" id="totalTax${crnDetail.crndId}"><c:out
																	value="${crnDetail.totalTax}"></c:out></td>

															<td align="left"  id="grnGvnAmt${crnDetail.crndId}"><c:out
																	value="${crnDetail.grnGvnAmt}"></c:out></td>
														</tr>

													</c:forEach>

												</tbody>

											</table>
										</div>

									</div>
								</div>
                          <center>   <input type="submit" class="btn btn-primary" value="Update CRN" id="submitCRNote"/></center>
							</form>
						</div>
				<!-- 	</div> -->
				</div>
			</div>
			<!-- END Main Content -->
			<footer>
				<p>2019 © MADHAVI.</p>
			</footer>


			<a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i
				class="fa fa-chevron-up"></i></a>
		</div>
		<!-- END Content -->
	</div>
	<!-- END Container -->

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

<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("table1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[4];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<script type="text/javascript">
function calCrnValues(crndId,grnBaseRate)
{
	
    var grnGvnQty=parseFloat(document.getElementById("grnGvnQty"+crndId).value);
    var totalTaxPer=parseFloat(document.getElementById("totalTaxPer"+crndId).value);
    var grnBaseRate=parseFloat(document.getElementById("grnBaseRate"+crndId).value);
   
	var taxableAmt=grnGvnQty*grnBaseRate;
	
	var taxAmt=(taxableAmt * totalTaxPer) / 100;
	
	var grandAmt=taxableAmt+taxAmt;
	 $('#taxableAmt'+crndId).html(taxableAmt.toFixed(2));
	 $('#totalTax'+crndId).html(taxAmt.toFixed(2));
	 $('#grnGvnAmt'+crndId).html(grandAmt.toFixed(2));

}
</script>

</body>
</html>