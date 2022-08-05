require 'byebug'
require_relative 'logincurd'
require_relative 'hr'
# require_relative 'Employee'
require 'colorize'
module Login

  def self.signup_employee
    puts "---- signup  page  -----"
    puts 'Enter username to signup:'
    username = gets.chomp

    puts 'Enter password to signup :'
    userpassword = gets.chomp
    
    if username.empty? || userpassword  == nil?
      puts "Please fill in all the required fields.\n".red
      signup_employee
    else
      Logincurd.create(username, userpassword)
      puts "Account Succusfully Created  ! 😃 ".green
    end 
  end

  def self.login_employee
    puts "---- login page ----- "

    puts 'Enter username to login:'
    loginname = gets.chomp
    puts 'Enter password to login :'
    loginpassword = gets.chomp

    Logincurd.all.find do |user|
      if user.username == loginname && user.userpassword == loginpassword
        puts "succsfully login"
        byebug
        if user.username == 'HR@shriffle'
          Hr.hr_manu
        else
          Employee.employee_menu
        end
      else
        puts "your username or is incorrect"
      end
    end
  end


  def self.hrlogin
    puts "===================================================================="
    puts "Welcome to login as HR please enter details ✍️ "
    puts "===================================================================="
    
    puts "✉ Enter e-mail id ✉"
    email = gets.chomp
    puts "⌨ Enter password ⌨"
    password = gets.chomp
    # byebug
     if (email == 'HR@shriffle' && password == '12@12' )
     puts "Welcome to log in Succusfully as HR ! 😃 ".green
     else
     puts "Invalid log in..! ⚠"
     end
  end

 

  def self.log_in_functionality
    puts " -ˏˋ. Leave Managment System ˊˎ-".center(130).green
    puts "*****************************************************************************************************************************************"
      puts     "   ╔═══════☆.✵.☆═══════╗ ".center(130)
        puts ' Enter 1 for log in HR '   .center(130)  
        puts ' Enter 2 for signup as Employee '.center(130)
        puts ' Enter 3 for log in Employee '.center(130)
        puts ' Enter 4 for Exit  '.center(130)
      puts     "   ╚═══════☆.✵.☆═══════╝ ".center(130)
    puts "*****************************************************************************************************************************************"
   
     number = gets.chomp.to_i
   
     case number
   
     when 1
        hrlogin 
     when 2
      signup_employee
      log_in_functionality
     when 3
      login_employee
     when 4
      exit!
     else
        puts 'Invalid do not take unnecessary !'.red
     end
  end
end

Login.log_in_functionality
