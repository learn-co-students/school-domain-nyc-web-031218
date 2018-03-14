require "pry"
# code here!
class School
  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new {|h,k| h[k] = Array.new }
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade].push(name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
  @roster =  @roster.sort.to_h
  @roster.each{|k,v| @roster[k] = v.sort}.to_h
  end
end
