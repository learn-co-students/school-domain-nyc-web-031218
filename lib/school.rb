# code here!
require 'pry'
class School

  attr_accessor :name, :roster, :add_student

  def initialize(name)
    @name = name
    @roster = {}

  end
  # binding.pry
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade]= []
    end
      @roster[grade] << name

    # binding.pry
  end
  # binding.pry

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end


end



school = School.new("Bayside High School")
school.add_student("Zack", 10)
# add_student = School.new("Slater", 11)
# binding.pry
