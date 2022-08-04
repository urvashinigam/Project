class LeaveMagement
  def leavemanage
    puts 'Please Enter number of leaves'
    leave = gets.chomp.to_i
    puts 'Request has been sent'
    request(leave)
  end

  def leaveminus(a, b)
    if a == 'Leave has been granted'
      casual = 18 - b
      puts "Left leaves #{casual}"
    end
  end

  def request(leave)
    puts 'Login as HR then press 1'
    puts 'Log In as a Employee 2'
    num2 = gets.chomp.to_i
    case num2

    when 1
      s2 = 'Logged in as HR'
      puts s2

      if leave > 0
        puts "Request has come #{leave} days leave wanted do you want to approve?
              then press 1 or rejject then press 2
              "
        num = gets.chomp.to_i
        case num
        when 1
          str = 'Leave has been granted'

          puts str
          leaveminus(str, leave)
        when 2
          puts 'leave has been rejected'
        end
      end
    when 2
      puts 'Logged in as Employee'
    end
  end
end

obj = LeaveMagement.new
obj.leavemanage
