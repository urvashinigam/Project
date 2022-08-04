require_relative 'employeework'
require 'date'
module Employee
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
      puts "Please fill in all the required fields.\n".red
      sick_leave
    else
      Employeework.create(name, leave_take, start_date, end_date)
      puts 'succusfully send to HR'
    end
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
    7.    5       October       Wednesday Dusshera
    8.    24      October       Monday Deepawali
    9.    25      Tuesday       Deepawali
   10.    25      December      Sunday Christmas "
  end

  def self.casul_leves
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
      puts "Please fill in all the required fields.\n".red
      sick_leave
    else
      Employeework.create(name, leave_take, start_date, end_date)
      puts 'succusfully send to HR'
      Hr.status
    end
  end

  def self.viewall
    if Employeework.all.empty?
      puts 'there is no existing entry'
    else
      puts 'Id | Name | SL | CL | start_date | end_date'
      Employeework.all.select do |user|
        puts "#{user.id}- #{user.name} #{user.sl}  #{user.cl} #{user.leave_take} #{user.start_date}  #{user.end_date}"
      end
    end
  end

  def self.employee_menu
    puts 'Select anyone'
    puts '1 to view '
    puts '2 to add sick leaves'
    puts '3 to casual leaves'
    puts "5 to Holiday's "
    puts '6 to Logout !'
    puts '7 to exit'

    employee_choice = gets.chomp.to_i
    case employee_choice
    when 1
      viewall

    when 2
      sick_leave

    when 3
      casul_leves

    when 5
      holidays
    
    when 6
      puts "work in prograss.."
     
    when 7
      exit!

    else
      puts 'INVALID CHOICE'
      employee_menu
    end
    employee_menu
  end
end
#  Employee.employee_menu  
