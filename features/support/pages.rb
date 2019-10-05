class LoginPage
    include Capybara::DSL

	def realiza_login(email, senha)
		find("#email").set email
        find('#passwd').set senha
        click_button 'SubmitLogin'
    end    
end