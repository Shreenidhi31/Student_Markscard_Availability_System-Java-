<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">Search Hotels</h4>
		<form>
			<div class="form-group form-row">
				<label class="col-sm-1 col-form-label">Check In</label>
				<div class="col-sm-2">
					<input type="date" name="checkin" id="checkin" value="${param.checkin }" required class="form-control">
				</div>
				<label class="col-sm-1 col-form-label">Check Out</label>
				<div class="col-sm-2">
					<input type="date" name="checkout" id="checkout" value="${param.checkout }" required class="form-control">
				</div>
				<div class="col-sm-2">
					<input type="number" min="1" name="rooms" value="${param.rooms }" placeholder="No of Rooms" required class="form-control">
				</div>
				<div class="col-sm-3">
					<input type="text" name="city" value="${param.city }" pattern="[A-Z][a-z]{3,25}" placeholder="City" required class="form-control">
				</div>
				<div class="col-sm-1">
			<button class="btn btn-success float-right">Search</button>
				</div>
			</div>
		</form>
	<c:if test="${found }">					
	<table class="table table-bordered table-sm">
		<thead class="table-dark">
			<tr>
				<th>Hotel Name</th>
				<th>City</th>
				<th>No of rooms</th>
				<th>Room type</th>
				<th>Total Amount</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="m">
			<tr>
				<td>${m.name }</td>
				<td>${m.city }</td>
				<td>${m.totalavailable }</td>
				<td>${m.roomtype }</td>
				<td>Rs.${m.price }</td>
				<td><a href="/booknow?hid=${m.id }&checkin=${param.checkin}&checkout=${param.checkout}&rooms=${param.rooms}" class="btn btn-success btn-sm">Book now</a></td>
			</tr>
		</c:forEach>		
		</tbody>		
	</table>
	</c:if>
	<script>
	$(function(){
		document.getElementById("checkin").min = new Date().toISOString().split("T")[0];
		document.getElementById("checkout").min = new Date().toISOString().split("T")[0];
	})
	</script>
<jsp:include page="footer.jsp"></jsp:include>
