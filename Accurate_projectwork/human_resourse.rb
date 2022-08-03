class Humanresourse
  @name ;
  @age ;
  @contact  ;
  @email ;
  @address
  @occupation;
  
  def initialize(name,age,contact,email,address,occupation)
    @name = name;
    @age = age;
    @contact  = contact;
    @email = email ;
    @address = address ;
    @occupation = occupation;
  end

  def create
    hash_arr = [];

    hash1 = {name: @name,  age: @age , contact: @contact  , email: @email  ,  address: @address  , occupation: @occupation }
    hash_arr.push(hash1)
    hash_arr.each do |values|
      puts "name :" + values[:name]
      puts "age: #{values[:age]}"
      puts "contact no : #{values[:contact]}"
      puts "email : #{values[:email]}"
      puts "address : #{values[:address]}"
      puts "occupation : #{values[:occupation]}"
      puts "succusfully add data !"
    end
  end

 

  # def delete
  #   hash_arr = [];
  #   hash1 = {name: @name,  age: @age , contact: @contact  , email: @email  ,  address: @address  , occupation: @occupation }
  #   hash_arr.push(hash1)
  #   hash_arr.each do |values|
      
  #   if (has_arr eql? delete_item )
  #     puts "delete    : #{delete_item.delete(delete_item) }\n\n"
  #     else
  #       puts "not delete"
  #   end
  # end
 
end

puts "Enter name :"
name = gets.chomp.to_s

puts "Enter age :"
age = gets.chomp.to_i

puts "Enter contact :"
contact = gets.chomp.to_i

puts "Enter email :"
email = gets.chomp.to_s

puts "Enter address :"
address = gets.chomp.to_s

puts "Enter occupation : "
occupation = gets.chomp.to_s

# obj1 = Humanresourse.new("urvashi",25,859838438,"urvashi@gmail.com","Lig 134 mukharji","developer")
# obj2= Humanresourse.new("shashank",23,8349757349,"ram@gmail.com","rk nagar","software devloper")
# obj3= Humanresourse.new("uv",24,8953498093,"kana@gmailcom","rajaramnage","webdeveloper")
# obj4= Humanresourse.new("tani",34,9837593847,"tani@gmail.com","krishnpuri","associate DEVELOPER")

obj = Humanresourse.new(name,age,contact,email,address,occupation)
obj.create
# obj1.create
# obj2.create
# obj3.create
# obj4.create

# puts "do you want to delete"
# hr_delete_input = gets.chomp.to_s
# if (hr_delete_input == "yes" || hr_delete_input == "YES" )
# obj.delete
# else
#   puts "not valid"
# end