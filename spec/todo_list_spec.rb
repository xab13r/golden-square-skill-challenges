require 'todo_list'

RSpec.describe TodoList do
	it "constructs" do
		todo_list = TodoList.new
	end
	
	describe "#add" do
		context "when passed a string" do
			it "adds it to the list_of_tasks" do
				todo_list = TodoList.new
				todo_list.add_new_task("this is a new task")
				expect(todo_list.show).to eq ["this is a new task"]
			end
		end
		
		it "can add multiple tasks" do
			todo_list = TodoList.new
			todo_list.add_new_task("task1")
			todo_list.add_new_task("task2")
			todo_list.add_new_task("task3")
			expect(todo_list.show).to eq ["task1", "task2", "task3"]
		end
		
		context "when adding an empty string" do
			it "fails" do
				todo_list = TodoList.new
				expect { todo_list.add_new_task("") }.to raise_error "Task cannot be empty"
			end
		end
		
		context "when adding anyting but a string" do
			it "fails" do
				todo_list = TodoList.new
				expect { todo_list.add_new_task(1) }.to raise_error "Task must be a string"
			end
		end
	end
	
	describe "#show" do
		it "it will return a list of added tasks" do
			todo_list = TodoList.new
			todo_list.add_new_task("task1")
			todo_list.add_new_task("task2")
			todo_list.add_new_task("task3")
			expect(todo_list.show).to eq ["task1", "task2", "task3"]
		end
	end
	
	describe "#complete" do
		context "when called with a specific task" do
			it "will remove the specific task" do
				todo_list = TodoList.new
				todo_list.add_new_task("task1")
				todo_list.add_new_task("task2")
				todo_list.add_new_task("task3")
				todo_list.add_new_task("task4")
				todo_list.complete_task("task2")
				expect(todo_list.show).to eq ["task1", "task3", "task4"]
			end
		end
		
		context "if the task is not present" do
			it "fails" do
				todo_list = TodoList.new
				todo_list.add_new_task("task1")
				todo_list.add_new_task("task2")
				todo_list.add_new_task("task3")
				expect { todo_list.complete_task("task4") }.to raise_error "The task is not in your list"
			end
		end
		
		context "if task is not specified" do
			it "fails" do
				todo_list = TodoList.new
				expect { todo_list.complete_task("") }.to raise_error "Task cannot be an empty string"
			end
		end
		
		context "when passed anyting but a string" do
			it "fails" do
				todo_list = TodoList.new
				expect { todo_list.complete_task(3) }.to raise_error "Task must be a string"
			end
		end
	end
	
end