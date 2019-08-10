<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp">
		<c:param name="styleSheet">css/site.css</c:param>
</c:import>

       <div>
       
       		<img src="<c:url value="img/recipe0.jpg" />" />
       		
       		<c:url var="recipeDetailHref" value="/recipeDetails">
       			<c:param name="recipeId">${recipes[0].recipeId}</c:param>
       		</c:url>
       		
       		<h2><a href="${recipeDetailHref}">${recipes[0].getName()}</a></h2>
       		
       		<footer>
       			<img src="<c:url value="img/3-star.png" />" />
       			<p>${recipes[0].getIngredients().size()} ingredients</p>
       		</footer>
       		
       
       </div>
       
       <div>
       
       		<img src="<c:url value="img/recipe1.jpg" />" />
       		
       		<c:url var="recipeDetailHref" value="/recipeDetails">
       			<c:param name="recipeId">${recipes[1].recipeId}</c:param>
       		</c:url>
       		
       		<h2><a href="${recipeDetailHref}">${recipes[1].getName()}</a></h2>
       		
       		<footer>
       			<img src="<c:url value="img/4-star.png" />" />
       			<p>${recipes[1].getIngredients().size()} ingredients</p>
       		</footer>
       
       </div>
       
       <div>
       
       		<img src="<c:url value="img/recipe2.jpg" />" />
       		
       		<c:url var="recipeDetailHref" value="/recipeDetails">
       			<c:param name="recipeId">${recipes[2].recipeId}</c:param>
       		</c:url>
       		
       		<h2><a href="${recipeDetailHref}">${recipes[2].getName()}</a></h2>
       		
       		<footer>
       			<img src="<c:url value="img/2-star.png" />" />
       			<p>${recipes[2].getIngredients().size()} ingredients</p>
       		</footer>
       
       </div>

<c:import url="/WEB-INF/jsp/footer.jsp"/>