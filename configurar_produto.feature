#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a tela de configurar produto da EBAC-SHOP

Cenário: Configuração válida
Quando eu configuro o meu produto por cor e quantidade
Então o botão COMPRAR deve ficar habilitado

Cenário: Configuração inválida
Quando eu não não clico em nenhuma opção de configuração
Então o botão COMPRAR deve ficar desabilitado 

Cenário: Comprar quantidade dentro do limite permitido
Quando eu escolha a quantidade no contador "5"
Então o botão COMPRAR deve ficar habilitado

Cenário: Comprar quantidade acima do limite permitido
Quando eu escolha a quantidade no contador "11"
Então o contador deve limitar a quantidade de "10" na tela

Cenário: Limpar configuração de compra do produto na tela
Quando clico no botão Limpar
Então o produto deve voltar à configuração original
