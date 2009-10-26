Funcionalidade: Manutencao de usuarios
    O sistema deve permitir o cadastro de usuarios

    Cenario: Registro de novo usuario
        Dado que estou na pagina de registro de novo usuario
        E preencho o formulario corretamente
        Entao devo visualizar a opcao "Criar perfil"
        
    Cenario: Registro de usuario com login duplicado
        Dado que estou na pagina de registro de novo usuario
        E ja possuo um usuario com o login dummy_user
        E preencho o formulario com o login dummy_user
        Entao devo visualizar uma mensagem de erro

    Cenario: Registro de usuario com email duplicado
        Dado que estou na pagina de registro de novo usuario
        E ja possuo um usuario utilizando o e-mail dummy_user@dummydomain.com
        E preencho o formulario com o e-mail dummy_user@dummydomain.com
        Entao devo visualizar uma mensagem de erro
