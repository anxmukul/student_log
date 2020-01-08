
#its a menu driven programme which will perform different task according to different user input
def add 
    student = Struct.new(:name, :roll, :std, :sec) do
        def details
        "Name: #{name}\nRoll no: #{roll}\nClass: #{std}\nSec: #{sec}"
        end
    end
    puts "Enter name\n"
    Name = gets.chomp
    puts "Enter roll\n"
    Roll = gets.chomp
    puts "Enter class\n"
    Standard = gets.chomp
    puts "Enter section\n"
    Section = gets.chomp
    a = student.new("#{Name}", "#{Roll}", "#{Standard}", "#{Section}")
end

def search_roll
    puts "you are in search by roll function\n"
end

def search_name
    puts "you are in search by name function\n"
end

def list
    puts "here is the list of all student\n"
end
puts "Enter number between 1-5, and the number has following tasks\n"
puts "1. Show list of all student.\n2. Find student by roll.\n3. Find student by name.\n"
puts "4. Add a new student.\n5. Close the programme.\n"

puts "Enter any number\n"   
number = gets.chomp.to_i            #taking input from user
if number == 1
    #puts "You want list of all student\n"
    list.call
elsif number == 2
    #puts "You want to find student by roll\n"
    search_roll.call
elsif number == 3
    #puts "You want to find student by name\n"
    search_name.call
elsif number == 4
    #puts  "You want to add student\n"
    add.call
else 
    puts "Enter number between 1-5\n"
end