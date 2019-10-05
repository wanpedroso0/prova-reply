#language:pt
Funcionalidade: Criar login
 

    Cenario: Usuario cria uma nova conta no sistema

        Dado que eu acesso a pagina principal
        Quando eu faço login com "provateste5@hotmail.com"
        E selecionar o Title "Mr"
        E informar o First name "Carlos"
	    E informar o Last name "Adão"
	    E informar o Password "12345"
        E informar o Date of Birth - dia "10"
	    E informar o Date of Birth - mes "Julho"
	    E informar o Date of Birth - ano "1991"
        E informar o Company "Test"
	    E informar o Address "Sunrise Drive"
	    E informar o Address2 "Ap 15"
        E informar o City "Ashville"
	    E informar o State "Alabama" 
	    E informar o ZipPostal Code "35953"
	    E informar o Country "United States" 
	    E informar o Additional information "Próximo a praça XPTO"
	    E informar o Home phone "1137665544"
	    E informar o Mobile phone "1193445566"
	    E informar o Assign an address alias for future reference.
        E clicar em Registrar
        Então será exibido a tela "MY ACCOUNT"

    
