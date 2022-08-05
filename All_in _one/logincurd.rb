# require 'byebug'
class Logincurd
  EMPLOYEE = []
  attr_accessor :id, :username, :userpassword

  def initialize(username, userpassword)
    @id = set_id
    @username = username
    @userpassword = userpassword
    EMPLOYEE << self
  end
  def set_id
    (EMPLOYEE.last&.id || 0) + 1
  end

  def self.all
    EMPLOYEE
  end

  def self.create(username, userpassword)
    # byebug
    new(username, userpassword)
  end
end
