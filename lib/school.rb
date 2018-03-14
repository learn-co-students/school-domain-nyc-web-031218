require 'pry'

class School
  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
    # @student = student
  end


  def add_student(student, grade)
    # @student = student
    # @grade = grade
    @roster[grade] ||= []

    @roster[grade] << student

  end

  def grade(num)
    @roster.select do |k,v|
      k == num
    end.values.flatten
  end

  def sort
    @roster.each_value do |val|
      val.sort!
    end
    @roster
  end

end
