Dado /^que eu tenho os ingredientes ([^\"]*)$/ do |nomes|
  ingredient = IngredientType.create!(:name => "Teste", :description => "Teste")
  nomes.split(',').each do |nome|
    Ingredient.create! :name => nome, :description => nome + " Lorem ipsum", :ingredient_type => ingredient
  end
end

E /^eu estou na lista de ingredientes$/ do
  visit ingredients_path
end

Entao /^eu deveria poder visualizar o ingrediente "([^\"]*)"$/ do |nome|
  response.should contain nome
end


Dado /^que estou na pagina de ingredientes$/ do
  visit ingredients_path
end

Dado /^clico na opcao "([^\"]*)"$/ do |link|
  click_link link
end

Dado /^preencho o formulario com o ingrediente ([^\"]*)$/ do |nome|
  fill_in "ingredient[name]", :with => nome
  fill_in "ingredient[description]", :with => "Lorem ipsum"
  fill_in "ingredient[ingredient_type_id]", :with => IngredientType.create!(:name => "Nome de teste", :description => "Descricao de teste").id
  click_button "Save"
end

