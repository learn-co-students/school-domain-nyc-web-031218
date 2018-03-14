# code here!

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_accessor :roster, :grade

  def add_student(name, grade)
    if roster[grade]
        roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade (grade)
    @grade = roster[grade]
  end

  def sort
    roster.each do |key, value|
      roster[key] = roster[key].sort
    end
  end

end
