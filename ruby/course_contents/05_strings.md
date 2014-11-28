# Strings

### Notes

* This is introductory

### Exercise 1

#### Notes

* "abc" vs 'abc' (the latter being the literal form)
* "The number #{a} is less than #{b}"

#### Problems

1. Accept a name, print "Hello, <name>" and then print "Your name has <n> characters".
  
        puts "Enter name:"
        name = gets
        puts "Hello #{name}"
        puts "Your name has #{name.length} characters"

### Exercise 2

#### Notes

* String#include?
* String#start_with?
* String#end_with?

#### Problems

1. For any given string, determine if the string contains the sub-string "ll", begins with "H" and ends with "!". Print true or false for each.

        string = "Hello world!"
        puts string.include?("ll")
        puts string.start_with?("H")
        puts string.end_with?("!")

### Exercise 3

#### Notes

* String#split
* String#each_char

#### Problems

1. Take any string and write 2 separate solutions that will split the string and print its characters.

        "aaaa".split(//).each{|c| puts c}
        "aaaa".each_char{|c| puts c}


### Exercise 4

#### Notes

* String#+
* String#<<
* Mutation vs. Non-mutation and tradeoffs.

#### Problems

1. Combine strings "a" and "b" using two different approaches.

        "a" + "b"
        "a" << "b"

1. Slight stretch goal problem - tell us which is faster. Why? Discuss which is better.
    
        require 'benchmark'
        n = 99999
        Benchmark.bm do |x|
          x.report("Non-mutating") { n.times { "a" + "b" } }
          x.report("Mutating") { n.times { "a" << "b" } }
        end
