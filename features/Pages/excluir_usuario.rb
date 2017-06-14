class Excluir< SitePrism::Page
	
	element :create, "#quickcreatetop"
	element :createtask, " .last"
	element :viewTask, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'
	#element :filtro, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a'
							#//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a

	#element :nameBasic, "#name_basic"	
	#element :search,"#search_form_submit"
	elements :registroLista, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[4]/b/a'		

	element :actions, :xpath, '//*[@id="tab-actions"]/a'	
	element :delete, "#delete_button"	

#MÉTODO EXCLUIR USUÁRIO
	def excluir_usuario
		create.click
		createtask.click
		viewTask.click
		#sleep 10
		#filtro.click		
		#nameBasic.set('Nicolas')
		#search.click
		registroLista[0].click		
		sleep 5	
		actions.click
		sleep 5
		delete.click
		sleep 5
		page.driver.browser.switch_to.alert.accept
	end
end