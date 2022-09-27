class TodoList
	
	def initialize()
		@list_of_tasks = Array.new
	end
	
	def add_new_task(task)
		fail "Task must be a string" unless task.class == String
		fail "Task cannot be empty" unless task != ''
		@list_of_tasks.push(task)
	end
	
	def show
		return @list_of_tasks
	end
	
	def complete_task(task)
		fail "Task cannot be an empty string" unless task != ''
		fail "Task must be a string" unless task.class == String
		if @list_of_tasks.include?(task)
			@list_of_tasks.delete(task)
		else
			fail "The task is not in your list"
		end
	end
end