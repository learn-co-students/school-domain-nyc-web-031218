require "pry"
# code here!
class School

  attr_reader :name, :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if @roster.has_key? (grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|item, value| @roster[item] = value.sort}
  end
  #{9 => ["Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Blake Johnson"]}

end


# sk = School.new("SK High")
#
# p sk
