# code here!
require 'pry'
class School

  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name, grade)
    @roster[grade] = [] if !roster.has_key?(grade)
    @roster[grade] << name

  end

  def sort

    @roster.each{|key, arr|
      # binding.pry
      @roster[key] = arr.sort
    }

  end

  def grade(grade)

    @roster[grade]


  end


end


fl = School.new("Flatiron")
fl.add_student("Harry", 11)
fl.add_student("Zach", 9)
fl.add_student("Dan", 11)
fl.add_student("Mike", 9)
fl.sort

# binding.pry
puts "h"
