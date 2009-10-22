Dado /^que eu tenho os ingredientes ([^\"]*)$/ do |nome|
  Ingredient.create! :name => nome
end

E /^eu estou na lista de ingredientes$/ do
  pending
end

Entao /^eu deveria poder visualizar o ingrediente "([^\"]*)"$/ do |arg1|
  pending
end

E /^eu deveria poder visualizar o ingrediente "([^\"]*)""$/ do |arg1|
  pending
end
