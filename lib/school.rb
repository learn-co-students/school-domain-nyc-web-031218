# code here!
require 'pry'
class School

attr_accessor :name
attr_reader :roster

def initialize(name)
@name = name
@roster = {}
end


# binding.pry

def add_student(new_student, grade)
  # binding.pry
  if @roster[grade]
 # @roster[grade] = []
 @roster[grade] << new_student
else
  @roster[grade] = []
   @roster[grade] << new_student
 end
end

def grade(grade)
  @roster[grade]
end

def sort
  sortedHash = {}
 @roster.each do |key, value|
        sortedHash[key] = value.sort
 end
sortedHash
end


end
