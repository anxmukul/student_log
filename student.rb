#its a menu driven programme which will perform different task according to different user input 
class Student 
    attr_accessor :name, :standard, :roll_number, :section, :club
    def initialize(name, standard, roll_no, section, club)
      @name = name
      @standard = standard
      @roll_number = roll_no
      @section = section
      @club = club  
    end
  
    def show_details
      "Name: #{@name}\nstandard:#{@standard}\nroll_no: #{roll_number}\nsection: #{@section}\nClub: #{@club} "
    end
  
    def check_name(input_name)
      (@name == input_name) 
    end
    
    def check_roll(input_roll)
      (@roll_number == input_roll)
    end
  
  end
  student_array = []
  
  #If Student detail is passed directly
  #mukul = Student.new("Mukul Kumar", 1, 1, 'A','Programming')
  #puts mukul.name
  #puts mukul.show_details
  #abhishek = Student.new("Abhishek", 12, 10, 'B', 'Programming')
  #array = [abhishek, mukul]
  #puts array[0].show_details
  #=end
  
  while 1>0 do      #initiating infinite loop
    puts "Enter any number\n"
    num = gets.chomp.to_i
    if num == 1
      name = gets.chomp
      roll_number = gets.chomp
      section = gets.chomp
      club = gets.chomp
      standard = gets.chomp
      new_student = Student.new(name, standard, roll_number, section, club)
      student_array<<new_student
  
    elsif num == 2
      i=0
      x = student_array.length()
      #p student_array
      for i in 0..x-1 do
        puts student_array[i].show_details
        puts i
      end
  
    elsif num == 3
      puts "Enter any name"
      sname = gets.chomp
      x = student_array.length()
      for i in 0..(x-1) do
        if student_array[i].check_name(sname)
          puts student_array[i].show_details
          break
        end
      end
  
    elsif num == 4
      puts "Enter roll no"
      sroll = gets.chomp
      x = student_array.length()
      for i in 0..(x-1) do
        if student_array[i].check_roll(sroll)
          puts student_array[i].show_details
          break
        end
      end
    else
      break
    end
  end