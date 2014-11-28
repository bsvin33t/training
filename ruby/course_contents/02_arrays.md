# Arrays

### Exercise 1

#### Notes

* First exercise is only 101, get your feet wet.
* Creating an empty Array - [] or Array.new. 
* There are more special constructors - look them up.
* Creating an array with data - [1, 2, 3]
* Appending to an array - <<
* Reading an array by index - [1, 2, 3][0]
* Array#delete deletes from an array based on object equality.
* Lots of interesting methods beyond what we talk about. Look it up.

#### Problems

1. List 3 different methods we can use to add an element to a set of data in an array. Say 4 to [1, 2, 3]
        
        [1, 2, 3] << 4
        [1,2,3].push(4)
        [1,2,3] + [4]

1. Delete 3 from the array [1, 2, 3]

        [1, 2, 3].delete(3)

### Exercise 2

#### Notes

* Iteration.
* for vs each; why each is better.
* Styleguide: do-end vs {} and multiline vs single blocks.

#### Problems

1. Print all the elements in ['a', 'b', 'c'] using as many different approaches to looping as you can find. (There may be others using while and until too - we only care about making sure that <code>each</code> is one of them.)
    
        for i in [1,2,3]; puts i; end
        [1,2,3].each { |i| puts i }
        [1,2,3].each do |i|
          puts i
        end
        

### Exercise 3

#### Notes

* Transformation.
* Selection/Filtration.

#### Problems

1. Transform a set of numbers using f(x) = x^2
    
        [1, 2, 3].map {|i| i**2 }
        [1, 2, 3].collect {|i| i**2 }

1. Select all even numbers from a given array [1, 2, 3, 4, 5]
    
        [1, 2, 3, 4, 5].select {|i| i.even? }
