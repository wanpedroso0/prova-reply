#language:pt

Funcionalidade: Realizar Compra
  
    Cenario: Realizar compra de produto

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

