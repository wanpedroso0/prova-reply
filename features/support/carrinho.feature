#language:pt

Funcionalidade: Adicionar ao carrinho
 Para que eu possa adicionar itens ao carrinho
 Sendo um usuario
 Posso acessar o sistema com meu email e senha previamente cadastrados

    @temp
    Cenario: Usuario insere item no carrinho

        Dado que eu acesse o sistema com email "provateste5@hotmail.com" e senha "12345"
        Quando acessa a tela do produto desejado
	    E clica no botão Adicionar ao Carrinho
        E clica no botão Concluir Compra
	    E clica no botão Prosseguir Checkout
        E clica no botão Prosseguir Checkout Endereço
        E aceita os termos
        E clica no botão Prosseguir Checkout Entrega
        E seleciono pagamento via Boleto
        E confirmo a compra
        Então será exibido "Your order on My Store is complete."

