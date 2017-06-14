class Home < SitePrism::Page
	
	element :logOut, "#usermenucollapsed" 
	element :logOutLink, "#logout_link" 

#MÉTODO PARA SAIR DO SISTEMA
	def sair_logout
		logOut.click
		logOutLink.click
	end
end