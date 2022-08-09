class Employee
  EMPLOYEE_DETAILS = []
  attr_accessor :id, :username, :userpassword, :sl, :cl

  def initialize(username, userpassword)
    @id = set_id
    @username = username
    @userpassword = userpassword
    @sl = 5
    @cl = 18
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
      puts "ID: #{user.id} Name: #{user.username} Password: #{user.userpassword} Cl: #{@cl} Sl: #{@sl}"
    end
    Main.employee_functions
  end

  def self.create(username, userpassword)
    new(username, userpassword)
  end
end