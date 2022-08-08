require 'date'
require 'byebug'

module Hr
  LEAVE_DETAILS=[];

  def self.hrlogin
    puts "===================================================================="
    puts "Welcome to login as HR please enter details ✍️ "
    puts "===================================================================="
    
    puts "✉ Enter e-mail id ✉"
    email = gets.chomp
    puts "⌨ Enter password ⌨"
    password = gets.chomp
    
    if (email == 'hr' && password == '12' )
      puts "Welcome to log in Succusfully as HR ! 😃 "
      hr_menu;
    else
      puts "Invalid log in..! ⚠"
    end
  end

  def self.create(name,leave_take,start_date,end_date)
    LEAVE_DETAILS.push(Name:name,Leaves:leave_take,StartDate:start_date,EndDate:end_date);
  end

  def self.status
    LEAVE_DETAILS.collect { |p|
      
    if p[:Name].nil?
      puts "No data"

    else
      puts "#{p[:Leaves]} day leave request come"
      puts "Press 1 to Accept"
      puts "Press 2 to Reject"
      num=gets.chomp.to_i;
      case num
      when 1
        puts "Accepted"
        Employee.leaveUpdateSl(p[:Leaves]);
        hr_menu
      when 2
        puts "Rejected"
        hr_menu
      else
        puts "Not a right choice"
      end
    end
    }  
  end


  def self.hr_menu
    puts 'Select anyone'
    puts '1 to check leave '
    puts '2 to Logout !'
    puts '3 to exit'

    hr_choice = gets.chomp.to_i
    case hr_choice
    when 1
      status
    when 2
      Employee.log_in_functionality
    when 3
      exit! 
    else
      puts 'not valid enter..!'
    end
  end
end