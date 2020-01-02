#its a menu driven programme which will perform different task according to different user input
def add 
    puts "Enter the number of student\n"
    num = gets.chomp.to_i
    student_array = []
    puts "Enter name of each student\n"
    num.times do
        name = gets.chomp
        student_array<<name
    end
    puts "\n"
    puts student_array
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
    puts "You want list of all student\n"
    list.call
elsif number == 2
    puts "You want to find student by roll\n"
    search_roll.call
elsif number == 3
    puts "you want to find student by name\n"
    search_name.call
elsif number == 4
    puts  "you want to add student\n"
    add.call
else 
    puts "Enter number between 1-5\n"
end
