# Test-driven Development

In this approach, you read the problem and think about it for a bit.

Then you write a small example of how your code might be used in the form of a 'test' or 'specification' ('spec'). You run the test and see that it fails with an error. This is called the 'red' phase.

Then you write just enough of your program so that it can behave like the example (test) you wrote. Then you run the test again. If it still fails you fix it. Eventually you get it to pass. This is called the 'green' phase.

After this, you improve the readability, structure, and other qualities of the code you wrote without changing its behavior This is called the 'refactor' stage.

Then you write another small example, and continue in a cycle until your program is complete and you have a full set of examples to prove it.

This approach is much more structured and, at times, it can even feel boring. However because it forces us to break down large problems into clearly specified and small examples that you focus on one by one, it helps our brains manage the complexity of a codebase by taking things 'one at a time'.

## Test Drive a Single-Method Program

## Exercise

> A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

- [Test](./spec/make_snippet_spec.rb)
- [Code](./lib/make_snippet.rb)

## Challenge

> A method called count_words that takes a string as an argument and returns the number of words in that string.

- [Test](./spec/count_words_spec.rb)
- [Code](./lib/count_words.rb)

## Design a Single-Method Program

## Exercise

### Exercise One

- [Design](https://github.com/xab13r/golden-square-skill-challenges/blob/main/exercise1.md)
- [Test](https://github.com/xab13r/golden-square-skill-challenges/blob/main/spec/reading_time_spec.rb)
- [Code](https://github.com/xab13r/golden-square-skill-challenges/blob/main/lib/reading_time.rb)

### Exercise Two

- [Design](https://github.com/xab13r/golden-square-skill-challenges/blob/main/exercise2.md)
- [Test](https://github.com/xab13r/golden-square-skill-challenges/blob/main/spec/is_text_correct_spec.rb)
- [Code](https://github.com/xab13r/golden-square-skill-challenges/blob/main/lib/is_text_correct.rb)
