            #languafe: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login do site EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuario "valtersilva"
            E a senha "r@diokppx123"
            Então deve direcionar o cliente à tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "waltersilvah"
            E a senha "r@diokppx123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "valtersilva"
            E a senha "dasdsadsad15115"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> na Tela de checkout

            Exemplos:
            | usuario              | senha       | mensagem               |
            | "simonekovalenkinas" | "teste@123" | "Finalize sua compra!" |
            | "valerialima"        | "abc@123"   | "Finalize sua compra!" |
            | "vanessalima"        | "123@abc"   | "Finalize sua compra!" |
            | "marialima"          | "teste@abc" | "Finalize sua compra!" |
            | "milubarrica"        | "osso@123"  | "Finalize sua compra!" |