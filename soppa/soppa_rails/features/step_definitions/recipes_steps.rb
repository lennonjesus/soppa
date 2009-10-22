# coding: utf-8

Dado /^que eu tenho receitas com o nome ([^\"]*)$/ do |nomes|
  nomes.split(',').each do |nome|
    Recipe.create!(:name => nome, :description => "Lorem ipsum", :prepare_mode => "Lorem Ipsum")
  end
end

E /^estou na lista de receitas$/ do
  visit recipes_path
end

Entao /^eu deveria ver a receita "([^\"]*)"$/ do |nome|
  response.should contain "Pizza de Calabresa"
end

Entao /^entao eu deveria ver a receita "([^\"]*)"$/ do |nome|
  response.should contain "Ovo Frito"
end

#======================

Dado /^que estou na pagina de receitas$/ do
  visit recipes_path
end

E /^clico no link "([^\"]*)"$/ do |link|
  click_link link
end

E /^preencho o formulario$/ do
  fill_in "recipe[name]", :with => "Feijao de corda"
  fill_in "recipe[description]", :with => "Feijao de corda do Bar do Arnaudo"
  fill_in "recipe[prepare_mode]", :with => "Peca um Feijao de corda e espere o garçom trazer"
  click_button "Save"
end

Entao /^eu deveria ver a receita cadastrada na lista$/ do
  response.should contain "Feijao de corda"
end

# ==========================

Dado /^que eu tenho uma receita com o nome ([^\"]*)$/ do |nome|
  Recipe.create! :name => nome, :description => "Antiga pizza de calabresa", :prepare_mode => "Lorem Ipsum"
end

Dado /^estou na pagina de receitas$/ do
  visit recipes_path
end

Dado /^altero o nome da receita para "([^\"]*)"$/ do |nome|
  fill_in "recipe[name]", :with => nome
  click_button "Save"
end

Entao /^eu deveria ver a receita com seu novo nome na lista$/ do
  response.should contain "Pizza da Vovo"
end

#================

Entao /^eu nao deveria mais ver a receita ([^\"]*) na lista$/ do |nome|
  response.should_not contain nome
end



