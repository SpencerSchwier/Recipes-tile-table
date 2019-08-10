<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="/WEB-INF/jsp/header.jsp">
		<c:param name="styleSheet">css/site2.css</c:param>
</c:import>

       <table>
       
	       	<tr id="headers">
	       		<th></th>
	       		<th><img src="<c:url value="img/recipe0.jpg" />" /></th>
	       		<th><img src="<c:url value="img/recipe1.jpg" />" /></th>
	       		<th><img src="<c:url value="img/recipe2.jpg" />" /></th>
	       	</tr>
	       	
	       	<tr id="names">
	       		<td>Name</td>
	       		<c:forEach var="recipe" items="${recipes}">
	       		
	       			<td id="name-row">${recipe.name}</td>
	       		
	       		</c:forEach>
	       	</tr>
	       	
	       	<tr id="types">
	       		<td>Type</td>
	       		<c:forEach var="recipe" items="${recipes}">
	       		
	       			<td>${recipe.recipeType}</td>
	       		
	       		</c:forEach>
	       	</tr>
	       	
	       	<tr id="ingredients">
	       		<td>Ingredients</td>
	       		<c:forEach var="recipe" items="${recipes}">
	       		
	       			<td id="ingredient-row">${recipe.ingredients.size()} Ingredients</td>
	       		
	       		</c:forEach>
	       	</tr>
	       	
	       	<tr id="cook-times">
	       		<td>Cook Time</td>
	       		<c:forEach var="recipe" items="${recipes}">
	       		
	       			<td>${recipe.cookTimeInMinutes} Minutes</td>
	       		
	       		</c:forEach>
	       	</tr>
	       	
	       	<tr id="ratings">
	       		<td>Rating</td>
	       		<c:forEach var="recipe" items="${recipes}">
	       		
	       			<fmt:formatNumber var="rating" maxFractionDigits="0" value="${recipe.averageRating}"/>
	       			<td id="rating-row"><img src="<c:url value="img/${rating}-star.png" />" /></td>
	       		
	       		</c:forEach>
	       	</tr>
       
       </table>

<c:import url="/WEB-INF/jsp/footer.jsp"/>