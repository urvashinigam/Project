require 'date'
module Hr
  @@str = ''
  LEAVE_DETAILS = []
  def self.hrlogin
    puts '===================================================================='
    puts 'Welcome to login as HR please enter details ✍️ '
    puts '===================================================================='

    puts '✉ Enter e-mail id ✉'
    email = gets.chomp
    puts '⌨ Enter password ⌨'
    password = gets.chomp

    if email == 'hr' && password == '12'
      puts 'Welcome to log in Succusfully as HR ! 😃 ""'
      hr_menu
    else
      puts 'Invalid log in..! ⚠'
      hrlogin
    end
  end

  def self.create(name, leave_take, start_date, end_date)
    LEAVE_DETAILS.push(Name: name, Leaves: leave_take, StartDate: start_date, EndDate: end_date)
    puts 'Created'
  end

  def self.status
    if LEAVE_DETAILS.empty?
      puts 'there is no request'
      hr_menu
    else
      LEAVE_DETAILS.collect do |p|
        puts "#{p[:Leaves]} day leave request come"
        puts 'Press 1 to Accept'
        puts 'Press 2 to Reject'
        num = gets.chomp.to_i
        case num
        when 1
          while true
            if @@str.eql?('Accepted')
              puts 'Already accepted'
              hr_menu
            else
              puts 'Accepted'
              Main.leaveUpdateSl(p[:Leaves])
              @@str = 'Accepted'
              hr_menu
            end
          end
        when 2
          puts 'Rejected'
          hr_menu
          break
        else
          puts 'Not a right choice'
        end
      end
    end
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
      Main.log_in_functionality
    when 3
      exit!
    else
      puts 'not valid enter..!'
    end
  end
end
