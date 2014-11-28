# Classes

### Exercise 1

#### Notes

* Classes are objects too.
* All objects must belong to a class.
* As a convention, a particular type of Ruby variable, the Named Constant is used for class names.
* Class can be assigned to any kind of variable and passed around.

#### Problems

1. What is the class of 1

        1.class # => Fixnum
1. What is the class of nil?
        
        nil.class # => NilClass
        
1. What is the class of Class?

        Class.class # => Class
        
### Exercise 2

#### Notes

* Class#superclass gives us the superclass

#### Problems

1. What is the superclass of 1's class

        1.class.superclass # => Integer
1. What is the superclass of nil's class?
        
        nil.class.superclass # => Object
        
1. What is the superclass of Class' class?

        Class.class.superclass # => Module
        
        
### Exercise 3

#### Notes

* Now force use of class and superclass as investigative tools
* BasicObject is the ultimate superclass
* Beyond basic object, the superclass "chain" ends with a nil.
 
#### Problems

1. What is the ultimate superclass of 1's class?

        1.class.superclass.superclass.superclass.superclass # => Object

1. What lies at the end of the superclass "chain"?

        1.class.superclass.superclass.superclass.superclass.superclass # => nil             

1. Use class and superclass to work out the relationship between Object, Module and Class. Draw it.

        Class.superclass # => Module
        Module.superclass # => Object

### Exercise 4

#### Notes

* Named Constants are just variables

#### Problems

1. How do you create a constant in Ruby?
                Variable = 1
                VARIABLE = 1
2. What happens when you change the value of a constant?
                Variable = 1
                Variable = 2 # => (irb):2: warning: already initialized constant Name

#### Exercise 5

#### Notes

* Re-inforce the fact that a class is an object too.

#### Problems

1. Create a method named "instantiator" that instantiates any class passed to it with no arguments. <code>instantiator(Array)</code> should return <code>[]</code>

        def instantiator(klass)
          klass.new
        end

### Exercise 6

#### Notes

* Using a class to create objects
* We cover 
    * constructors
    * instance variables
    * inheritance
 
#### Problems

1. Create a class that models a Rectangle, with state length and breadth and the ability to calculate its perimeter.

        class Rectangle
          def initialize(length, breadth)
            @length = length
            @breadth = breadth
          end
            
          def perimeter
            2 * @length + 2 * @breadth
          end
        end

1. Write a program to model a Quadrilateral and a Triangle, each of which has the length of each of its sides as state and the ability to calculate its perimeter. Refactor to extract out common logic using inheritance.

        class Polygon
          def initialize(sides)
            @sides = sides
          end
          
          def perimeter
            @sides.inject(0){|sum, n| sum + n}
          end
        end
        
        class Quadrilateral < Polygon
          def initialize(a, b, c, d, e)
            super([a, b, c, d, e])
          end
        end
        
        class Trianagle < Polygon
          def initialize(a, b, c)
            super([a, b, c])
          end
        end
        

