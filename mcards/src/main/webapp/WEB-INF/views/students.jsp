<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">Student List</h4>
	<c:if test="${msg ne null }">
		<div class="alert alert-success font-weight-bold text-center mt-2">
			${msg }
		</div>			
	</c:if>
	<table class="table table-bordered table-sm">
		<thead class="table-dark">
			<tr>
				<th>Regno</th>
				<th>Name</th>
				<th>Dob</th>
				<th>Course</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Password</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="m">
			<tr>
				<td>${m.regno }</td>
				<td>${m.sname }</td>
				<td>${m.dob }</td>
				<td>${m.course } ${m.semester }</td>
				<td>${m.phone }</td>
				<td>${m.gender }</td>
				<td>${m.email } </td>
				<td>${m.password }</td>
				<td>${m.status }</td>
				<td>
				<c:if test="${m.status eq null }">
				<a href="updatestatus/${m.regno }?status=Arrived" class="btn btn-primary btn-sm">Markcard Arrived</a>
				</c:if>
				<c:if test="${m.status eq 'Arrived' }">
				<a href="updatestatus/${m.regno }?status=Received" class="btn btn-success btn-sm">Received</a>
				</c:if>
				<c:if test="${m.status eq 'Received' }">
				<a href="updatestatus/${m.regno }?status=Deleted" class="btn btn-danger btn-sm">Delete</a>
				</c:if>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<jsp:include page="footer.jsp"></jsp:include>