#
# inspired by Ryan Bates screencast
#
/*
* I can comment this way
*/
# and this way
// and this way
Funcionalidade: Manutencao de receitas
    # Main goal of this project
    Para que os usuarios possam interagir com as receitas
    Devo possuir meios de cadastrar, visualizar e editar receitas.

    Cenario: Lista de receitas
        Dado que eu tenho receitas com o nome Pizza de Calabresa, Ovo Frito
        E estou na lista de receitas
        Entao eu deveria ver a receita "Pizza de Calabresa"
        E entao eu deveria ver a receita "Ovo Frito"

    Cenario: Cadastro de receita
        Dado que estou na pagina de receitas
        E clico no link "New Recipe"
        E preencho o formulario
        Entao eu deveria ver a receita cadastrada na lista

    Cenario: Edicao de receita
        Dado que eu tenho uma receita com o nome Pizza de Calabresa
        E estou na pagina de receitas
        E clico no link "Edit"
        E altero o nome da receita para "Pizza da Vovo"
        Entao eu deveria ver a receita com seu novo nome na lista

    Cenario: Exclusao de receita
        Dado que eu tenho uma receita com o nome Pizza de Calabresa
        E estou na pagina de receitas
        E clico no link "Destroy"
        Entao eu nao deveria mais ver a receita Pizza de Calabresa na lista

#    Scenario: Create Valid Article
#        Given I have no articles
#        And I am on the list of articles
#        When I follow "New Article"
#        And I fill in "Title" with "Spuds"
#        And I fill in "Content" with "Delicious potato wedges!"
#        And I press "Create"
#        Then I should see "New article created."
#        And I should see "Spuds"
#        And I should see "Delicious potato wedges!"
#        And I should have 1 article
