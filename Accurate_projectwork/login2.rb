class Login2

  puts "======================================="
    puts "\n   LEAVE MANAGEMENT SYSTEM"
  puts "\n=======================================\n"
  @username
  @userpassword
  def initialize(username, userpassword)
    @username = username
    @userpassword = userpassword
  end

  def log_in_employee
    puts 'Enter username to login:'
    username1 = gets.chomp.to_s

    puts 'Enter password to login :'
    userpassword1 = gets.chomp.to_s
    if @username == username1 && @userpassword == userpassword1 
      print('login succusfully')
      elsif username1 != @username
        puts "your username is incorrect"
        again
        elsif userpassword1 != @userpassword
         puts "your userpassword invalid"
         again
    else
      puts('not valid do you want to re-try enter 1 outherwise 2 for exit')
      again
    end
  end
  def hrlogin
    puts "===================================================================="
    puts "Welcome to login as HR please enter details ✍️ "
    puts "===================================================================="
    
    puts "✉ Enter e-mail id ✉"
    email = gets
    puts "⌨ Enter password ⌨"
    password = gets
  
     if (email =='HR@shriffle' && password == '12@12' )
     puts "Welcome to log in Succusfully as HR ! 😃"
     else
     puts "Invalid log in..! ⚠"
    end
  end

  def again
    puts 'To continue enter 1 or to exit press 2: '
    cancl = gets.chomp.to_i
    if cancl.eql? 1
      log_in_employee
    elsif cancl.eql? 2
      exit!
    end
  end

  def self.get_user
    puts 'Enter name to sign-up :'
    username = gets.chomp.to_s
  
    puts 'Enter password to sign-up :'
    userpassword = gets.chomp.to_s
    obj1 = Login2.new(username,userpassword) 
    obj1.log_in_functionality
    
  end

  def log_in_functionality
    puts " -ˏˋ. Leave Managment System ˊˎ-".center(130)
    puts "*****************************************************************************************************************************************"
      puts     "   ╔═══════☆.✵.☆═══════╗ ".center(130)
        puts ' Enter 1 for log in HR '   .center(130)  
        puts ' Enter 2 for log in Employee '.center(130)
      puts     "   ╚═══════☆.✵.☆═══════╝ ".center(130)
    puts "*****************************************************************************************************************************************"
   
     number = gets.chomp.to_i
   
     case number
   
     when 1
        hrlogin
      
     when 2
        log_in_employee
     else
        puts 'Invalid do not take unnecessary s!'
     end
  end
end

Login2.get_user