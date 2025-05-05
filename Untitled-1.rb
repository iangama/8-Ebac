#language: pt



Funcionalidade: Configuração de produto
    Como aluno do portal EBAC
    Selecionar um produto
    Para fazer uma compra

    Contexto:
        Dado que eu queira comprar um produto


    Cenario: Autenticação válida Size
        Quando eu selecionar "XS, S , M, L, XL"
        Resultado válido
        Cenario: Autenticação invalida Size
        Quando eu selecionar "none"
        Resultado invalido


    Cenario: Autenticação válida cor
        Quando eu selecionar "Blue, Orange, Red"
        Resultado válido
        Cenario: Autenticação invalida Size
        Quando eu selecionar "none"
        Resultado invalido


         Cenario: Autenticação quantidade
        Quando eu selecionar "1..10"
        Resultado válido
        Cenario: Autenticação invalida Size
        Quando eu selecionar "0"
        Resultado invalido
        Quando eu selecionar "1"
        Resultado invalido


    Esquema do Cenário: Limpar
        Quando eu digitar o <Limpar>
            
        Então deve exibir a <Limpo> de sucesso

        Exemplos:
            | carinho              | Comando   | Resultado      |
            | "Blusa" | "Orange, L" | "Limpar" | Limpo
            | "Blusa" | "Blue XL" | "Limpar" |   Limpo
            | "Blusa" | "Red S" | "Limpar" |     Limpo