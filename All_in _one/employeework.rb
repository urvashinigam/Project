# require_relative 'hr.rb'
# class Employeework
#   extend Hr
#   All_DATA = []
#   attr_accessor :id, :name, :leave_take, :start_date, :end_date, :sl, :cl

#   def initialize(name, leave_take, start_date, end_date)
#     @id = set_id
#     @name = name
#     @leave_take = leave_take
#     @start_date = start_date
#     @end_date = end_date
#     @sl = 5
#     @cl = 18
#     All_DATA << self
#   end

#   def set_id
#     (All_DATA.last&.id || 0) + 1
#   end

#   def display
#     "#{id}, #{name}, #{leave_take}, #{start_date}, #{end_date}, #{sl}, #{cl}"
#   end

#   class << self
#     def create(name, leave_take, start_date, end_date)
#       new(name, leave_take, start_date, end_date)
#     end
  
#     def all
#       All_DATA
#     end    

#     def find_by(name)
#       all.select { |user| user.name == name }
#     end
#   end
# end


#  require_relative 'hr.rb'
class Employeework
  #  extend Hr
  All_DATA = []
  attr_accessor :id, :name, :leave_take, :start_date, :end_date, :sl, :cl

  def initialize(name, leave_take, start_date, end_date)
    @id = set_id
    @name = name
    @leave_take = leave_take
    @start_date = start_date
    @end_date = end_date
    @sl = 5
    @cl = 18
    All_DATA << self
  end

  def set_id
    (All_DATA.last&.id || 0) + 1
  end

  def display
    "#{id}, #{name}, #{leave_take}, #{start_date}, #{end_date}, #{sl}, #{cl}"
  end

  class << self
    def create(name, leave_take, start_date, end_date)
      new(name, leave_take, start_date, end_date)
    end

    def all
      All_DATA
    end    

    def find_by(name)
      all.select { |user| user.name == name }
    end
  end
end
