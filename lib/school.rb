require 'pry'

class School

attr_accessor :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless roster[grade]
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = {}
    array = @roster.sort_by { |grade| grade }
    array.collect do |grade, names|
      sorted[grade] = names.sort
  end
    sorted
end


end
