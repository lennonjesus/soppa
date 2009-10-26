Dado /^que estou na pagina de registro de novo usuario$/ do
  visit new_user_path
end

Dado /^preencho o formulario corretamente$/ do
  fill_in "user[login]", :with => "dummy_user"
  fill_in "user[email]", :with => "dummy_user@dummydomain.com"
  fill_in "user[login]", :with => "dummy_user"
  fill_in "user[password]", :with => "dummy_pass"
  fill_in "user[password_confirmation]", :with => "dummy_pass"
  click_button "Registrar"
end

Entao /^devo visualizar a opcao "([^\"]*)"$/ do |link|
  response.should contain link
end


E /^ja possuo um usuario com o login ([^\"]*)$/ do |login|
  User.create! :login => login , :email => login + "@email.com" , :password => login + "pass", :password_confirmation => login + "pass"
end

E /^preencho o formulario com o login ([^\"]*)$/ do |login|
  fill_in "user[login]", :with => login
  fill_in "user[email]", :with => "dummy_user@dummydomain.com"
  fill_in "user[password]", :with => "dummy_pass"
  fill_in "user[password_confirmation]", :with => "dummy_pass"
  click_button "Registrar"
end

Entao /^devo visualizar uma mensagem de erro$/ do
  response.should contain "erro"
end


Dado /^ja possuo um usuario utilizando o e\-mail ([^\"]*)$/ do |email|
  User.create! :login => "test.user" , :email => email , :password => email + "pass", :password_confirmation => email + "pass"
end

Dado /^preencho o formulario com o e\-mail ([^\"]*)$/ do |email|
  fill_in "user[login]", :with => "dummy.user"
  fill_in "user[email]", :with => email
  fill_in "user[password]", :with => "dummy_pass"
  fill_in "user[password_confirmation]", :with => "dummy_pass"
  click_button "Registrar"
end
