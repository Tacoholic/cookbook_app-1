
axios.get("http://localhost:3000/api/recipes")
  .then(function(response) {
    var divElement = document.querySelector('div');

    var newContent = "";

    response.data.forEach(function(recipe) {
      newContent += '<h1>' + recipe.title + '</h1>'
      newContent += '<h4>Prep Time: ' + recipe.formatted.prep_time + '</h4>'
      newContent += '<h2>Ingredients: </h2>'
      newContent += '<ul>'

      recipe.formatted.ingredients.forEach(function(ingredient) {
          newContent += '<li>' + ingredient + '</li>'
      });

      newContent += '</ul>'
      newContent += '<br>'
    });


    divElement.innerHTML = newContent;
  });