require "pry"

class School

  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = Hash.new{|h,k| h[k] = []}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    #self.roster[grade]=[]
    self.roster[grade] << student
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each { |grade, students| roster[grade] = students.sort}
  end

end
