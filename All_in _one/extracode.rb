# # require_relative 'employeework'
# # require 'date'
# # module Employee
# #   def self.sick_leave
# #     puts '---------------------------** We provide 5 Sick leave **---------------------------'
# #     puts 'Please Fill the details: '
# #     puts 'Please enter name'
# #     name = gets.chomp
# #     puts 'Enter the number of leaves :'
# #     leave_take = gets.chomp.to_i
# #     puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
# #     start_date = gets.chomp
# #     Date.strptime(start_date, '%d-%m-%Y')
# #     puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
# #     end_date = gets.chomp
# #     Date.strptime(end_date, '%d-%m-%Y')

# #     if name.empty? || leave_take == nil? || start_date == nil? || end_date == nil?
# #       puts "Please fill in all the required fields.\n".red
# #       sick_leave
# #     else
# #       Employeework.create(name, leave_take, start_date, end_date)
# #       puts 'succusfully send to HR'
# #     end
# #   end

# #   def self.holidays
# #     puts '---------------------------- We provid 10 holiday leave ---------------------------- '

# #     puts "
# #    S.No.  Date     Day            Name of Holiday
# #     1.    1 st    January       Saturday New Year
# #     2.    26      January       Wednesday Republic Day
# #     3.    22      Tuesday       Rang Panchami
# #     4.    15      August        Monday Independence Day
# #     5.    11      Thursday      Raksha Bandhan
# #     6.    02      Sunday        Gandhi Jayanti
# #     7.    5       October       Wednesday Dusshera
# #     8.    24      October       Monday Deepawali
# #     9.    25      Tuesday       Deepawali
# #    10.    25      December      Sunday Christmas "
# #   end

# #   def self.casul_leves
# #     puts '---------------------------** We provide 2 Casule leave **---------------------------'

# #     puts 'Please Fill the details: '

# #     puts 'Please enter name'
# #     name_emp = gets.chomp.to_s

# #     puts 'Enter the number of leaves :'
# #     leave_take = gets.chomp.to_i

# #     puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
# #     start_date = gets
# #     Date.strptime(start_date, '%d-%m-%Y')

# #     puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
# #     end_date = gets
# #     Date.strptime(end_date, '%d-%m-%Y')

# #     if name.empty? || leave_take == nil? || start_date == nil? || end_date == nil?
# #       puts "Please fill in all the required fields.\n".red
# #       sick_leave
# #     else
# #       Employeework.create(name, leave_take, start_date, end_date)
# #       puts 'succusfully send to HR'
# #       status
# #     end
# #   end

# #   def self.viewall
# #     if Employeework.all.empty?
# #       puts 'there is no existing entry'
# #     else
# #       puts 'Id | Name | SL | CL | start_date | end_date'
# #       Employeework.all.select do |user|
# #         puts "#{user.id}- #{user.name} #{user.sl}  #{user.cl} #{user.leave_take} #{user.start_date}  #{user.end_date}"
# #       end
# #     end
# #   end

# #   def self.employee_menu
# #     puts 'Select anyone'
# #     puts '1 to view '
# #     puts '2 to add sick leaves'
# #     puts '3 to casual leaves'
# #     puts "5 to Holiday's "
# #     puts '6 to Logout !'
# #     puts '7 to exit'

# #     employee_choice = gets.chomp.to_i
# #     case employee_choice
# #     when 1
# #       viewall

# #     when 2
# #       sick_leave

# #     when 3
# #       casul_leves

# #     when 5
# #       holidays
    
# #     when 6
# #       puts "work in prograss.."
     
# #     when 7
# #       exit!

# #     else
# #       puts 'INVALID CHOICE'
# #       employee_menu
# #     end
# #     employee_menu
# #   end
# # end
# # #  Employee.employee_menu

# --------------------------------------------------------------------------------------
# $LOAD_PATH << '.'
# require 'admin'
# require 'user'
# require 'byebug'

# class Login
#   @@admin_email = 'admin'
#   @@admin_password = '123'
#   include Admin
#   include User

#   def initiate
#     puts '------------Welcome to eStuff.com------------'
#     check_user
#   end

#   def login
#     puts "\n------Login------"
#     print 'Enter E-mail: '
#     email = gets.chomp
#     print 'Enter Password: '
#     password = gets.chomp

#     if email == @@admin_email && password == @@admin_password
#       # Proceed to Admin Dashboard
#       select_admin_operation
#       logout
#     elsif email == @email && password == @password
#       # Proceed to User Dashboard
#       select_user_operation
#       logout
#     else
#       puts 'Authentication Failed! Try again.'
#       login
#     end
#   end

#   def signup
#     puts "\n------Signup------"
#     print 'Enter E-mail: '
#     @email = gets.strip
#     if @email == @@admin_email
#       puts 'ID already taken. Try Again.'
#       signup
#     end
#     print 'Enter Password: '
#     @password = gets.chomp

#     if @email.empty? || @password.length < 3
#       puts 'Invalid input in Email/Password field! Try again.'
#       signup
#     end

#     # Saving user details to database. (Coming soon...)
#     puts 'Successfully Signed Up.'
#     logout
#   end

#   # Checking type of user.
#   def check_user
#     puts "\nSignup/Login to continue."
#     print "\nEnter 'a' for Admin or 'b' for User: "
#     user_type = gets.chomp

#     if user_type == 'a'
#       # Admin doesn't need to Signup.
#       login
#     elsif user_type == 'b'
#       # Calling Signup
#       # If already signed up then login.
#       if @email.nil?
#         signup
#       else
#         login
#       end
#     else
#       puts 'Invalid key entered. Try again.'
#       check_user
#     end
#   end

#   def logout
#     puts "\nDo you want to continue to Home Page: (Y[es]/N[o])"
#     choice = gets.chomp
#     if %w[Y y].include?(choice)
#       check_user
#       # Login.new.login_operations
#     elsif %w[N n].include?(choice)
#       puts "\nThank You. Visit Again :)"
#       exit
#     else
#       puts 'Invalid key entered. Try again.'
#       logout
#     end
#   end
  
#   Login.new.initiate
# end



# -----------------------------------------------------------------------------------------------------------


# def user_login_signup
#   puts "Please select one of these options: "
#   puts "\n1. LOGIN"
#   puts "2. SIGN UP"
#   puts "0. Go Back"
#   login_signup = gets.strip.to_i

#   Items.clear
#   case login_signup

#     when 1
#       puts "Please enter your email: "
#       email = gets.strip
#       puts "Please enter your password: "
#       password = gets.strip
#       unless Users.authenticate(email, password).nil?
#         Login.customer_menu
#       else
#         puts "Please enter valid details or sign up.\n".red
#         user_login_signup
#       end 
#     when 2
#       Items.clear
#       Login.user_sign_up
#     when 0
#       Login.user_selection
#     else
#       puts "* Please select valid option....".red
#       user_login_signup
#   end
# end