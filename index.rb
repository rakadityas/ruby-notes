# print shape
puts "Raka" #print new line afterward
print "\"Academy\"" # no new llne provided
print " is cool \n" # add new line manually

# ruby works with instruction from each line
# instruction goes through each line

# variables
# ruby will have special container called variable
char_name = "Raka"
char_age = "25"

# option 1 to insert character name
puts "Hello my name is #{char_name}"
puts "My age is #{char_age}"

# option 2 to insert character name
puts ("Hello my name is " + char_name)
puts ("My age is " + char_age)

# data types
string_example = "  Raka   Aditya"
int_example = 10
float_example = 3.2
bool_example = true
nil_example = nil # does not have any value


# handy string lib
string_example.upcase()
string_example.downcase()
string_example.strip()
string_example.length()
string_example.include? "Aditya" # will return true or false value, whether we have the string or not
string_example[2] # get charhcter by index, start from 0
string_example[0, 3] # get the first three charachter
string_example.index("Raka") # get index out of given string
"some string".upcase() # no need to store to variable

# number
some_number = 10
puts "some number: " + some_number.to_s # we can print string and int simultaniously


# arrays
array_names = Array["Raka", "Riki", "Roko"]
array_names = Array[1, "Riki", true] # you can mix it
puts array_names[-1] # using -, will get the index backward
array_names.reverse() # will reverse all element
# array_names.include ? "Raka" # check if current array has element
# array_names.sort() # sort the array

# hash
some_hash = {
    "Jakarta" => "JKT",
    "Malang" => "MLG"
}

# method
def sayHi(name, age=24) # predefined value
    puts "Hello " + name + " " + age.to_s
end
sayHi("Raka") # calling method

def cube(num)
    10
    5 # will return 5, because 5 is the last line of the function
end
puts cube(1)

def cube(num)
    return 10
    5 # will return 10, this line of code won't get executed
end
puts cube(1)

def cube(num)
    return 10, 11
end
puts cube(1)[0] # return multiple values

# for loop
friends = ["Raka", "Riki", "Roko"]

for element in friends
    puts element
end

friends.each do |friend|
    puts friend
end

# handle exception
begin
    num = 10/0
rescue ZeroDivisionError
    puts "something is wrong"
rescue TypeError => e
    puts e
end


# classes and object
class Book #use capital letter; by creating a class, we are creating a custom data type or entity; create a template of new attribute
    attr_accessor :title, :author, :pages #attributes
    def initialize(title, author, pages)
        puts "Creating book" 

        @title = title
        @author = author
        @pages = pages
    end
end

book1 = Book.new("Harry Potter", "JK Rowling", 100) # create new class


class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors
        if @gpa >= 3.5 
            return true
        end
        return false
    end
end

student1 = Student.new("Raka", "CS", 4.00)
student2 = Student.new("Riki", "DS", 3.40)

puts student2.has_honors

# inheritance
class Chef 
    def make_chicken
        puts "make chicken"
    end
    def make_salad
        puts "make salad"
    end
    def make_special_dish
        puts "make bbq"
    end
end

class ItalianChef < Chef # inheritance on Ruby works by including < sign
    def make_special_dish
        puts "The chef makes eggplant parm"
    end
    def make_pasta
        puts "The chef makes pasta"
    end
end

chef = Chef.new()
chef.make_chicken


it = ItalianChef.new()
it.make_special_dish
it.make_pasta

# module: store different methods into a collections
module Tools
    def sayhi(name) 
        puts "hello #{name}"
    end
    def saybye(name) 
        puts "bye #{name}"
    end
end

include Tools # need to import first before using it

Tools.sayhi("Raka")
Tools.saybye("Raka")