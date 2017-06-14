class Cadastrar < SitePrism::Page

	element :create, "#quickcreatetop"
	element :createtask, " .last"
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

	#MÉTODO CADASTRAR USUÁRIO
	def cadastrar_usuario(nome_usuario)
		create.click
		createtask.click
		subject.set(nome_usuario)
		status.select('In Progress')
		startDate.set('07/07/2002')	
		hora.select('09')
		minutos.select('15')
		related.select('Opportunity')
		dueDate.set('09/08/2002')
		dueHoras.select('11')
		dueMinutos.select('00')
		priority.select('High')
		save[0].click
	end

end