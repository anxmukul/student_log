
#its a menu driven programme which will perform different task according to different user input    
class Student
    def add
        @student = Struct.new(:name, :roll, :standard, :sec) do
            def details
                "Name: #{name}\nRoll no: #{roll}\nClass: #{std}\nSec: #{sec}"
            end
        end
            puts "Enter name of the student\n"
            $Name = gets.chomp
            puts "Enter the roll no of the student\n"
            $Roll = gets.chomp
            puts "Enter the standard of the student\n"
            $Standard = gets.chomp
            puts "Enter the section of the student\n"
            $Section = gets.chomp
            $a = @student.new("#{$Name}", "#{$Roll}", "#{$Standard}", "#{$Section}")
        end
 
    def list
        $a.each { |x| puts x}
    end

    def search_roll
        puts "you are in search by roll function\n"
    end
        
    def search_name
        puts "you are in search by name function\n"
    end

end

puts "Enter number between 1-5, and the number has following tasks\n"
puts "1. Add a new student.\n2. Show list of all student.\n3. Find student by roll.\n"
puts "4. Find student by name.\n5. Close the programme.\n"

loop do
    puts "Enter any number\n"
    num = gets.chomp.to_i
    if num == 1
        object = Student.new
        object.add        
    elsif num == 2
       object = Student.new
       object.list
    elsif num == 3
        object = Student.new
        object.search_roll
        break
    elsif num == 4
        object = Student.new
        object.search_name
    elsif num == 5
        break
    end
    sleep (1)

end
