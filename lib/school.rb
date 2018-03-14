# code here!

class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    res = {}
    roster.each do |grade, students|
      res[grade] = students.sort
    end
    res
  end
end
