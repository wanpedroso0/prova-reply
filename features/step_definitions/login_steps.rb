Dado("que eu acesso a pagina principal") do
    visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
end

  Quando("eu faço login com {string}") do |email|
    @email = email
    find("#email_create").set email
    click_button 'SubmitCreate'
end

  Quando("selecionar o Title {string}") do |string|
    choose("id_gender1", allow_label_click: true)
end

  Quando("informar o First name {string}") do |string|                         
    find('#customer_firstname').set("Carlos")
end                                                                          
                                                                             
  Quando("informar o Last name {string}") do |string|                          
    find('#customer_lastname ').set("Adão")
end                                                                          
                                                                             
  Quando("informar o Password {string}") do |string|                           
    find('#passwd').set("12345")
end                                                                          

  Quando("informar o Date of Birth - dia {string}") do |string|                
  select "10", from: "days", visible: false
  
end                                                                          
                                                                             
  Quando("informar o Date of Birth - mes {string}") do |string|                
    select "July", from: "months", visible: false
  
end                                                                          
                                                                             
  Quando("informar o Date of Birth - ano {string}") do |string|                
    select "1991", from: "years", visible: false
     
end                                                                                                                                      
                                                                             
  Quando("informar o Company {string}") do |string|                            
    find('#company').set("Test")
end                                                                          
                                                                             
  Quando("informar o Address {string}") do |string|                            
    find('#address1').set("Sunrise Drive")  
end                                                                          
                                                                             
Quando("informar o Address{int} {string}") do |int, string|
  find('#address2').set("Ap 15") 
end                                                                       

Quando("informar o City {string}") do |string|                               
  find('#city').set("Ashville")
end                                                                          
                                                                             
Quando("informar o State {string}") do |string|                              
  select "Alabama", from: "id_state", visible: false
end                                                                          
                                                                          
Quando("informar o ZipPostal Code {string}") do |string|                   
  find('#postcode').set("35953")
end                                                                          
                                                                             
Quando("informar o Country {string}") do |string|                            
  select "United States", from: "id_country", visible: false
end                                                                          
                                                                             
Quando("informar o Additional information {string}") do |string|             
  find('#other').set("Próximo a praça XPTO")
end                                                                          
                                                                             
Quando("informar o Home phone {string}") do |string|                         
  find('#phone').set("1137665544") 
end                                                                          
                                                                             
Quando("informar o Mobile phone {string}") do |string|                       
  find('#phone_mobile').set("1193445566")
end                                                                          
                                                                             
Quando("informar o Assign an address alias for future reference.") do        
  find('#alias').set("teste123@teste321.com")
  
end                                                                          
 
Quando("clicar em Registrar") do
  click_button 'Register'
  sleep(4)
end

Então("será exibido a tela {string}") do |mensagem|
  @mensagem = mensagem
  expect(page).to have_content mensagem
end