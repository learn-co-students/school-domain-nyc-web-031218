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
    new_hash = {}
    @roster.each do |key, val|
      new_hash[key] = val.sort
    end
    new_hash
  end
end
