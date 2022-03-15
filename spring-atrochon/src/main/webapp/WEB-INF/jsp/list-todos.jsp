<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	
	<div class="container">
		<table class="table table-striped">
			<caption>Twoje zadania to</caption>
			<thead>
				<tr>
					<th>Zadanie</th>
					<th>Docelowy czas</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
						<td><a type="button" class="btn btn-success"
							href="./update-todo?id=${todo.id}">Edytuj</a></td>
						<td><a type="button" class="btn btn-warning"
							href="./delete-todo?id=${todo.id}">Usuń</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="./add-todo">Dodaj zadanie</a>
		</div>
	</div>
<%@ include file="common/footer.jspf" %>