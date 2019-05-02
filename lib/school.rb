require 'pry'
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster.select do |key, val|
      key == grade
    end.values.flatten
  end

  def sort
    @roster.each_value do |val|
      val.sort!
    end
    @roster
  end
end
