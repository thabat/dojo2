class LoginSite < SitePrism::Page

	set_url "https://demo.suiteondemand.com"
	element :username, '#user_name'
	element :password, '#user_password'
	element :login, '#bigbutton'

#MÉTODO LOGIN 
	def login_usuario(usuario, senha)
		username.set(usuario)
		password.set(senha)
		login.click
	end
end


