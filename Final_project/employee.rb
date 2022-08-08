require 'colorize'
require_relative 'hr'

class Employee

  EMPLOYEE_DETAILS = []
  attr_accessor :id, :username, :userpassword, :sl, :cl

  def initialize(username, userpassword)
    @id = set_id
    @username = username
    @userpassword = userpassword
    @@sl = 5
    @@cl = 18
    EMPLOYEE_DETAILS << self
  end

  def set_id
    (EMPLOYEE_DETAILS.last&.id || 0) + 1
  end

  def self.all
    EMPLOYEE_DETAILS
  end

  def self.view
    EMPLOYEE_DETAILS.find do |user|
      puts "ID: #{user.id} Name: #{user.username} Password: #{user.userpassword} Cl: #{@@cl} Sl: #{@@sl}"
    end
    employee_functions
  end

  def self.create(username, userpassword)
    new(username, userpassword)
  end

  def self.login_employee
    puts '---- login page ----- '

    puts 'Enter username to login:'
    loginname = gets.chomp.to_s
    puts 'Enter password to login :'
    loginpassword = gets.chomp.to_i

    EMPLOYEE_DETAILS.find do |user|
      next unless user.username == loginname && user.userpassword == loginpassword
      puts 'succsfully login'
      employee_functions
      break
    end
  end

  def self.employee_functions
    puts '1 to add sick leaves'
    puts '2 to to view'
    puts "3 to Holiday's "
    puts '4 to take casual leaves'
    puts '5 to Logout !'
    puts '6 to exit'
    num = gets.chomp.to_i
    case num
    when 1
      sick_leave
    when 2
      view
    when 3
      holidays
      employee_functions
    when 4
      casual_leaves
    when 5
      log_in_functionality
    when 6
      exit!
    else
      puts 'Invalid choice'
      login_employee
    end
  end

  def self.sick_leave
    puts '---------------------------** We provide 5 Sick leave **---------------------------'
    puts 'Please Fill the details: '
    puts 'Please enter name'
    name = gets.chomp
    puts 'Enter the number of leaves :'
    leave_take = gets.chomp.to_i
    puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
    start_date = gets.chomp
    Date.strptime(start_date, '%d-%m-%Y')
    puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
    end_date = gets.chomp
    Date.strptime(end_date, '%d-%m-%Y')

    if name.empty? || leave_take == nil? || start_date == nil? || end_date == nil?
      puts "Please fill in all the required fields.\n"
      sick_leave
    else

      puts 'succusfully send to HR'
      Hr.create(name, leave_take, start_date, end_date)
      employee_functions

    end
  end

  def self.leaveUpdateSl(leave)
    @@sl -= leave
  end

  def self.casual_leaves
    puts '---------------------------** We provide 2 Casule leave **---------------------------'

    puts 'Please Fill the details: '

    puts 'Please enter name'
    name_emp = gets.chomp.to_s

    puts 'Enter the number of leaves :'
    leave_take = gets.chomp.to_i

    puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
    start_date = gets
    Date.strptime(start_date, '%d-%m-%Y')

    puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
    end_date = gets
    Date.strptime(end_date, '%d-%m-%Y')

    if name.empty? || leave_take.nil? || start_date.nil? || end_date.nil?
      puts "Please fill in all the required fields.\n"
    else
      Hr.create(name, leave_take, start_date, end_date)
      puts 'succusfully send to HR'
    end
  end

  def self.leaveUpdateCl(leave)
    @@cl -= leave
    puts "Left leaves #{@@cl}"
  end

  def self.holidays
    puts '---------------------------- We provid 10 holiday leave ---------------------------- '

    puts "
     S.No.  Date     Day            Name of Holiday
      1.    1 st    January       Saturday New Year
      2.    26      January       Wednesday Republic Day
      3.    22      Tuesday       Rang Panchami
      4.    15      August        Monday Independence Day
      5.    11      Thursday      Raksha Bandhan
      6.    02      Sunday        Gandhi Jayanti
      7.    05       October       Wednesday Dusshera
      8.    24      October       Monday Deepawali
      9.    25      Tuesday       Deepawali
     10.    25      December      Sunday Christmas "
  end

  def self.employee_menu
    puts 'Select anyone'
    puts '1 to login'
    puts '2 to exit'
    employee_choice = gets.chomp.to_i
    case employee_choice
    when 1
      login_employee
    when 2
      exit!
    else
      puts 'INVALID CHOICE'
      employee_menu
    end
  end

  def self.input
    puts 'Enter your name'
    name = gets.chomp.to_s
    puts 'Enter your password'
    password = gets.chomp.to_i
    create(name, password)
    puts 'Sign up successfully'
    employee_menu
  end

  def self.log_in_functionality
    puts " -ˏˋ. Leave Managment System ˊˎ-".center(130)
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
      Hr.hrlogin
    when 2
      input
    when 3
      login_employee
    when 4
      exit!
    else
      puts 'Invalid do not take unnecessary !'.red
    end
  end
end

Employee.log_in_functionality
