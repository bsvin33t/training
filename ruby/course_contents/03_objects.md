# Objects

### Exercise 1

#### Notes
* Everything is an object.
* Object#object_id is a unique id.

#### Problems
1. How do you reference the current object when within it? 

        self

1. What is the "current" object when a Ruby program is starting? 

        main

### Exercise 2

#### Notes
* Objects can be inspected and examined.
* Calling methods on objects.

#### Problems

1. List all methods on the integer 1.
    
    1.methods

### Exercise 3

#### Notes

* Ruby allows weirder methods names than is the norm.
* Allows you to create more expressive methods names because syntax rules are bent.
* You can still choose to use correct method invocation syntax.
* Method names with special syntax:

            +   -   *   /   =   ==    !=    >   <   >=    <=    []
* The following special characters can end an alphanumeric method name:

        !, ?, =
* What constitutes truish object and falsish objects in Ruby.

#### Problems

1. Take an array a = ["hello", "world"] and look up an element using two different syntaxes.

        a[0]
        a.[](0)        

1. Add 1 and 2 using explicit syntax.

        1 + 2
        1.+(2)
    
1. Write a method <code>truism?</code> that accepts objects and converts truish to <code>true</code> and falsish to <code>false</code>.
    * truism?(1) = true 
    * truism?(true) = true
    * truism?(Object.new) = true    
    * truism?(nil) = false
    * truism?(false) = false

            def truism?(object)
              !!object
            end
            
Be careful about <code>object && true</code> because by contract the result for nil will be nil, not false.
