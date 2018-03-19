class School

	attr_accessor :roster

	def initialize(name)
		@name = name
		@roster= {}
	end

	def add_student(student, grade)
		if @roster.has_key?(grade)
			roster[grade] << student
		else
			roster[grade] = [] << student
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
	new_roster = {}
	sorted_grade = @roster.sort_by {|grade| grade}
	sorted_grade.collect do |grade, name|
	new_roster[grade] = name.sort
	end
	new_roster
end
 

end
