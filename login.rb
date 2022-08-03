class Login
  @username
  @password
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
    else
      puts('not valid')
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
        puts 'Invalid do not take unnecessary !'
     end
  end
end

  puts 'Enter name to signup :'
  username = gets.chomp.to_s

  puts 'Enter password to sigup :'
  userpassword = gets.chomp.to_s
obj1 = Login.new(username,userpassword) 
# obj1.log_in_employee
# obj1.insert
obj1.log_in_functionality