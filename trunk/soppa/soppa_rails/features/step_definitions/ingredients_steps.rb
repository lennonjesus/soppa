Dado /^que eu tenho os ingredientes ([^\"]*)$/ do |nome|
  Ingredient.create! :name => nome, :description => nome + " Lorem ipsum"
end

E /^eu estou na lista de ingredientes$/ do
  visit ingredients_path
end

Entao /^eu deveria poder visualizar o ingrediente "([^\"]*)"$/ do |nome|
  response.should contain nome
end

