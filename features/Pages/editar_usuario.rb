
class Editar < SitePrism::Page

	element :create, "#quickcreatetop"
	element :createtask, " .last"
	element :viewTask, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'
	element :filtro, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a'
	elements :filtros, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a'
	element :nameBasic, "#name_basic"
	element :search,"#search_form_submit"
	element :registroLista, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
	element :actions, :xpath, '//*[@id="tab-actions"]/a'	
	element :edit, "#edit_button"
	element :subject, "#name"
	element :status, "#status"
	element :startDate, "#date_start_date"
	element :hora, "#date_start_hours"
	element :minutos, "#date_start_minutes"
	element :related, "#parent_type"
	element :dueDate, "#date_due_date"	
	element :dueHoras, "#date_due_hours"	
	element :dueMinutos, "#date_due_minutes"
	element :priority, "#priority"
	elements :save, "#SAVE"	


#MÉTODO EDITAR USUÁRIO
	def editar_usuario(nome_usuario)
		create.click
		createtask.click
		viewTask.click
		
		if (defined?(filtro)).nil?
			filtro.click
		else
			filtros[0].click
			
		end	
		nameBasic.set('Samanta')
		search.click
		registroLista.click
		actions.click
		edit.click
		subject.set(nome_usuario)
		status.select('Completed')
		startDate.set('10/02/2002')	
		hora.select('11')
		minutos.select('15')
		related.select('Opportunity')
		dueDate.set('10/08/2002')
		dueHoras.select('10')
		dueMinutos.select('00')
		priority.select('Low')
		save[1].click
	end
end