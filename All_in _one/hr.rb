require_relative 'employeework'
require_relative 'employe'
require 'date'
module Hr
  def self.status
    if leave_take.empty?
      puts 'there is no request'
    else
      puts 'thear is data'
    end
  end

  def self.hr_manu
    puts 'Select anyone'
    puts '1 to check leave '
    puts '2 to approve leaves employee'
    puts '3 to reject leaves employee'
    puts '4 to Logout !'
    puts '5 to exit'

    hr_choice = gets.chomp.to_i
    case hr_choice
    when 1
      status
    else
      puts 'not valid enter..!'
    end
  end
end
Hr.hr_manu
