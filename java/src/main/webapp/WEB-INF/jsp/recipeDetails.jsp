<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="/WEB-INF/jsp/header.jsp">
		<c:param name="styleSheet">css/site3.css</c:param>
</c:import>

<!DOCTYPE html>

<html>

<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Detail View</title>

</head>

<body>

	<div id="image"> 
		<img src="<c:url value="img/recipe${recipe.recipeId}.jpg" />" />
	</div>
	
	<div id="basic-info">
		<h3>${recipe.name}</h3>
		<a>${recipe.recipeType}</a>
		<h4>Cook Time ${recipe.cookTimeInMinutes} Minutes</h4>
		<a>${recipe.description}</a>
	</div>
	
	<div id="ingredients">
		<ol>
			<h4>Ingredients</h4>
			<c:forEach var="ingredient" items="${recipe.ingredients}">
				<li>${ingredient.quantity} ${ingredient.name}</li>
			</c:forEach>
		</ol>
	</div>
	
	<div id="steps">
		<ol>
			<h4>Preparation</h4>
			<c:forEach var="step" items="${recipe.preparationSteps}">
				<li>${step}</li>
			</c:forEach>
		</ol>
	</div>



</body>

</html>
<c:import url="/WEB-INF/jsp/footer.jsp"/>