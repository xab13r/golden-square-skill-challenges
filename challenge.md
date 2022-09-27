# Method Design

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string `#TODO`.

## The Problem

Given a block of text, the method checks if the text contains the string "#TODO".

## The Method Signature

```
# Name of the method
check_todos(text)

todos = check_todos(text)

text: a string of characters
todos: return true if a `#TODO` comments is present.

```

## Examples as Test

```
check_todos("") => false
check_todos("a simple string") => false
check_todos("#TODO this needs to be done") => true
check_todos(120) => throws an error
check_todos([1,2,2,"sample string", "#TODO a new todo"]) => throws an error
check_todos({todo => "this is a #TODO"}) => throws an error
```