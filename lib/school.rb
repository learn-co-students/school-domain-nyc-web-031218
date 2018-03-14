# code here!
class School

  attr_reader :name, :roster

 def initialize(name, roster = {})
   @name = name
   @roster = roster
 end

def add_student(student_name, grade)
  if roster[grade]
    roster[grade] << student_name
  else
  roster[grade] = []
  roster[grade] << student_name
end
end

def grade(grade)
  roster[grade]
end

def sort(roster)
  roster.sort_by { |grade, student_name| student_name}
end

end
