            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro no checkout do site EBAC-SHOP

            Cenário: Cadastro com dados válidos
            Quando eu preencher todos os campos com dados válidos
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de sucesso "Compra finalizada com sucesso!"

            Cenário: Cadastro com dados e-mail inválido
            Quando eu informar os dados com o e-mail inválido "simone.teste.com.br"
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de alerta "E-mail no formato inválido"

            Cenário: Cadastro com campo CEP vazio
            Quando eu digitar os dados com o CEP vazio
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de alerta "Campo cidade não informado"

            Esquema do Cenário: Cadastrar múltiplos usuários
            Quando eu digitar o <nome>
            E eu digitar o <sobrenome>
            E eu selecionar o <pais>
            E eu digitar o <endereco>
            E eu digitar a <cidade>
            E eu digitar o <cep>
            E eu digitar o <telefone>
            E eu digitar o <e-mail>
            E eu clicar em FINALIZAR COMPRA
            Então deve exibir a <mensagem de sucesso>

            Exemplos:
            | nome      | sobrenome                           | pais     | endereco            | cidade        | cep        | telefone      | e-mail                 | mensagem de sucesso              |
            | "João"    | "da Silva"                          | "Brasil" | "Rua Marte, 123"    | "Bauru"       | "06396250" | "11986985813" | "simone1@teste.com.br" | "Compra finalizada com sucesso!" |
            | "José"    | "dos Santos"                        | "Brasil" | "Rua Urano, 123"    | "São Paulo"   | "06396350" | "11986985814" | "simone2@teste.com.br" | "Compra finalizada com sucesso!" |
            | "Antônio" | "Magalhães"                         | "Brasil" | "Rua Saturno, 123"  | "Carapicuíba" | "06396850" | "11986985815" | "simone3@teste.com.br" | "Compra finalizada com sucesso!" |
            | "Paloma"  | "Oliveira da Silva Reis"            | "Brasil" | "Rua Jupter, 123"   | "Osasco"      | "06396270" | "11986985816" | "simone4@teste.com.br" | "Compra finalizada com sucesso!" |
            | "Valter"  | "Vasilijukus da Silva Kovalenkinas" | "Brasil" | "Rua Mercúrio, 123" | "Jandira"     | "06396290" | "11986985817" | "simone5@teste.com.br" | "Compra finalizada com sucesso!" |
