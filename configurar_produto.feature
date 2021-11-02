#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a tela de configurar produto da EBAC-SHOP

Cenário: Configuração válida
Quando eu clico na opção de tamanho "S"
And eu clico na opção de cor "Blue"
And eu escolha a quantidade no contador "2"
Então o botão COMPRAR deve ficar habilitado

Cenário: Configuração inválida
Quando eu não clico em nenuma opção de tamanho
And eu não clico em nenhuma opção de cor
And eu não escolha nehuma quantidade no contador
Então o botão COMPRAR deve ficar desabilitado

Cenário: Comprar quantidade dentro do limite permitido
Quando eu clico na opção de tamanho "S"
And eu clico na opção de cor "Blue"
And eu escolha a quantidade no contador "5"
Então o botão COMPRAR deve ficar habilitado

Cenário: Comprar quantidade acima do limite permitido
Quando eu clico na opção de tamanho "S"
And eu clico na opção de cor "Blue"
And eu escolha a quantidade no contador "11"
Então o contador deve limitar a quantidade de "10" na tela

Cenário: Limpar configuração de compra do produto na tela
Quando eu clico na opção de tamanho "S"
And eu clico na opção de cor "Blue"
And eu escolha a quantidade no contador "5"
And clique no botão Limpar
Então o produto deve voltar à configuração original
