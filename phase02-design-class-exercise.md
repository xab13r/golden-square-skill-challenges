# Class Design

Design a single class based on these two use cases:

> As a user  
> So that I can keep track of my tasks  
> I want a program that I can add todo tasks to and see a list of them.

> As a user  
> So that I can focus on tasks to complete  
> I want to mark tasks as complete and have them disappear from the list.

## The Problem

Implement a class that will allow the user to:
- add todos
- see a list of todos
- remove completed todos from the list

## The Class Signature

```
class TodoList
	
	def initialize()
	end
	
	def add_new_task(task) # task is a string
		# Return error if task is an empty string
	end
	
	def show
		# Returns a list of tasks
	end
	
	def complete_task(task)
	end
end
```

## Tests

```
#1
todo_list = TodoList.new
todo_list.add_new_task("this is a new task")
todo_list.show => ["this is a new task"]

#2
todo_list = TodoList.new
todo_list.add_new_task("task1")
todo_list.add_new_task("task2")
todo_list.add_new_task("task3")
todo_list.show => ["task1", "task2", "task3"]

#3
todo_list = TodoList.new
todo_list.add_new_task("") => throws an error

#4
todo_list = TodoList.new
todo_list.add_new_task(1) => throws an error

#5
todo_list = TodoList.new
todo_list.add_new_task("task1")
todo_list.add_new_task("task2")
todo_list.add_new_task("task3")
todo_list.add_new_task("task4")
todo_list.complete_task("task2")
todo_list.show => ["task1", "task3", "task4"]

#6
todo_list = TodoList.new
todo_list.add_new_task("task1")
todo_list.add_new_task("task2")
todo_list.add_new_task("task3")
todo_list.complete_task("task4") => throws an error

#7
todo_list = TodoList.new
todo_list.complete_task("") => throws an error

#8
todo_list = TodoList.new
todo_list.complete_task(3) => throws an error
```