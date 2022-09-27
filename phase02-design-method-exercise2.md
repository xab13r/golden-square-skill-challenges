# Method Design

## The Problem

Given a block of text, the method checks if the text starts with a capital letter and ends with punctuation mark from the group !?.;

## The Method Signature

```
# Name of the method
is_text_correct?(text)

is_text_correct = is_text_correct?(text)

text: a string of characters
is_text_correct: return true if correct, returns error message if text doesn't start with capital letter, returns error message if text doesn't end with punctuation mark

```

## Examples as Test

```
is_text_correct?("Hello, world!") => true
is_text_correct?("") => false
is_text_correct?("hello, world!") => false
is_text_correct?("Hello, world,") => false
it_text_correct?("hello, world") => false
is_text_correct?(nil) => throws an error
```