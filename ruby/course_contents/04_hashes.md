# Hashes

### Exercise 1

#### Notes
* Creating an empty Hash - {} or Hash.new. 
* Creating an hash with data - { "a" => "b", 1 => "x" }
* Lookup by key equality - { "a" => "b", 1 => "x" }["a"]
* Both keys and values are objects.

#### Problems

1. Create a hash storing the following pairs of information and look them up by key:
    *  "1" => 23
    * 1 => "Hello"
  
            hash = {
                "1" => 23,
                1 => "Hello"
            }
            hash[1]
            hash["1"]

1. Add the following key value pair to the previous hash
    * "New" => Object.new
  
            hash["New"] = Object.new

### Exercise 2

#### Notes

* Iteration
* Access to keys and values using Hash#keys and Hash#values

#### Problems

1. Print all key-value pairs in the hash { "1" => 23, 1 => "Hello", "New" => Object.new } using both <code>for</code>.

        hash = { "1" => 23, 1 => "Hello", "New" => Object.new }
        for key in hash.keys
          puts key, hash[key]
        end

1. Print all key-value pairs in the hash { "1" => 23, 1 => "Hello", "New" => Object.new } using <code>each</code>.

        hash = { "1" => 23, 1 => "Hello", "New" => Object.new }
        
        hash.each do |key, value|
          puts key, hash[key]
        end        


