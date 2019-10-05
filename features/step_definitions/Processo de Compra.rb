#Fluxo de Compra
  Dado("que eu acesse o sistema com email {string} e senha {string}") do |email, senha|                     
    visit"http://automationpractice.com/index.php?controller=authentication&back=my-account"
    @email = email
    @senha = senha
    login = LoginPage.new
    login.realiza_login(email, senha)
    
  end                                                                           
                                                                                
  Quando("acessa a tela do produto desejado") do                                
    visit "http://automationpractice.com/index.php?id_product=5&controller=product"
   
  end                                                                           
                                                                                
  Quando("clica no botão Adicionar ao Carrinho") do                             
    click_button 'Add to cart' 
  end                                                                           
                                                                
  Quando("clica no botão Concluir Compra") do                                   
    find_link(href: "http://automationpractice.com/index.php?controller=order").click 
  end                                                                           
                                                                                
  Quando("clica no botão Prosseguir Checkout") do                               
    find_link(href: "http://automationpractice.com/index.php?controller=order&step=1").click
  end                                                                           

  Quando("clica no botão Prosseguir Checkout Endereço") do                               
    click_button "Proceed to checkout"
  end   

  Quando("aceita os termos") do
    check('I agree to the terms of service and will adhere to them unconditionally.', allow_label_click: true)
end

  Quando("clica no botão Prosseguir Checkout Entrega") do                               
    click_button "processCarrier"
  end    
  
  Quando("seleciono pagamento via Boleto") do
    find_link(href: "http://automationpractice.com/index.php?fc=module&module=bankwire&controller=payment").click
  end

  Quando("confirmo a compra") do
    click_button "I confirm my order"
  end

  Então("será exibido {string}") do |mensagem2|
    @mensagem2= mensagem2
    expect(page).to have_content mensagem2
    
  end