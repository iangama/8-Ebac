#language: pt

Funcionalidade: Tela de Login
    Como aluno do portal EBAC
    Quero me cadastrar
    Para que eu posso finalizar a comprar

    Contexto:
        Dado que eu acesse ao cadastro ebac


    Cenario: Autenticação válida Nome e sobrenome
        Quando eu inseir um nome "Ian "
        válido
        Quando eu inseir um nome "17823404"
        invalido
        Cenario: Autenticação válida
        Quando eu inseir um sobrenome "Gama "
        válido
        Quando eu inseir um nome "19794"
        invalido
        
        
        
        Cenario: Autenticação válida Pais
        Quando eu inseir um nome "Brazil "
        válido
        Quando eu inseir um nome "Fone de ouvido"
        invalido

           Cenario: Autenticação válida Pais
        Quando eu inseir um nome "Manhuaçu "
        válido
        Quando eu inseir um nome "Mouse"
        invalido

        
          Cenario: Autenticação válida CEP
        Quando eu inseir um número "30220150 "
        válido
        Quando eu inseir um nome "28746"
        invalido

        Cenario: Autenticação válida Telefone
        Quando eu inseir um número "+55 31 988073894"
        válido
        Quando eu inseir um nome "896244"
        invalido

         Cenario: Autenticação válida Email
        Quando eu inseir um número "Joãocleber@outlook.com"
        válido
        Quando eu inseir um nome "Rógerioroberto"
        invalido tente com o email válido


         Quando finalizar com campos vazios 
          invalido tente com o todos os campos preenchidos


          Cadastro correto 
          Finalizar comprar válido





        
        
        

        
        



    Cenario: Usuário ineistente
        Quando eu digitar o usuário "aaaaquintiliano@ebac.com.br"
            E digitar a senha "123456"
        Então deve exibir uma mensagem de alerta "Usuário inesistente"

    Cenario: Senha inválida
        Quando eu digitar o usuário "aaaaquintiliano@ebac.com.br"
            E digitar a senha "abvcsssd"
        Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

    Esquema do Cenário: Autenticar múltiplos usuários
        Quando eu digitar o <usuario>
            E a <senha>
        Então deve exibir a <mensagem> de sucesso

        Exemplos:
            | usuario               | senha    | mensagem       |
            | "aluno01@ebac.com.br" | "123456" | "Olá Aluno 01" |
            | "aluno02@ebac.com.br" | "123456" | "Olá Aluno 02" |
            | "aluno03@ebac.com.br" | "123456" | "Olá Aluno 03" |