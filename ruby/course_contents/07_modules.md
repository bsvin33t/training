# Modules

### Exercise 1

#### Notes

* Modules are bundles of methods that can be "mixed into" (added to) a particular class of objects (using include).
* For now, leave <code>extend</code> out of the conversation and stick to <code>include</code>.
* Modules have no state and can't be instantiated - any variables created in a Module method are part of current object it is mixed into.
* Best practice: Never integrate through instance variables, only through public API methods of target class.

#### Problems

1. Is Module a superclass of Class?

        Class.superclass # => Module
        Class.is_a?(Module) # => true 

1. Write a program to model a Pentagon, a Quadrilateral and a Triangle, each of which has the length of each of its sides as state and the ability to calculate its perimeter. Refactor to extract out common logic using mixins. Use the method <code>sides</code> as the contract.

        module Polygon
          def perimeter
            sides.inject(0){|sum, n| sum + n}
          end
        end
        
        class Quadrilateral
          include Polygon
          
          def initialize(a, b, c, d)
            @sides = [a, b, c, d]
          end
          
          def sides
            @sides
          end
        end
        
        class Trianagle < Polygon
          def initialize(a, b, c)
            @a = a
            @b = b
            @c = c
          end
          
          def sides
            [@a, @b, @c]
          end
        end

#### Exercise 2

#### Notes

* Modules as namespaces.
* Since Classes are Modules too, Classes can also be used as namespaces.
* This is a hack - Modules are *not* namespaces.
* There is no good way to include a namespace. Including a module has an entirely different effect.
* There is no limit on nesting, but because we are forced to use the full set of namespaces to reference a constant, too much nesting can be a pain.

#### Problems

1. Create two empty classes, both called Controller. Access and instatiate them both by namespacing them under two separate modules, "API" and "Web".

        module API
          class Controller
          end
        end
        
        module Web
          class Controller
          end
        end
        
        API::Controller.new
        Web::Controller.new
        
