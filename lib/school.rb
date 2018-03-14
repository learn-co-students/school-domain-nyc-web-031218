class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor(:roster)
  attr_reader(:name)

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = @roster.each do |grade, roster_array|
      @roster[grade] = roster_array.sort
    end
    sorted_roster
  end

end
