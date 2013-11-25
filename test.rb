##############1. Arrays###########

array = ["Blake","Ashley","Jeff"]
array << "Derek"

array.each do |name|
puts name
end

array[1] 
array.index { |x| x == "Jeff"}


############2. Hashes#############

instructor = {:name=>"Ashley", :age=>27}
instructor[:location] = "NYC"

instructor.each do |key, value|
	puts "#{key}: #{value}"
end

puts instructor[:name]

instructor.each do |key, value|
	if value == 27
	puts key
	end
end

#above could be more concise! 

#############3. Nested Structures#################

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

school[:founded_in] = 2013
school[:students] << {:name => "Pablo"}

school[:students].delete_at(1)
#hard_coded, sorry! 

school[:students].each do |name|
	name[:semester] = "Summer"
end

school[:instructors][1][:subject] = "being almost better than blake"
school[:students][2][:grade] = "F"
#find_grade(school)

puts school[:instructors][2][:subject]
#hard_coded, sorry!

school.each do |key, value|
	puts value
end
#Didn't finish 4i.

#######4. METHODS#######

def find_grade(school)

		puts "What student has this letter grade?"
		a = gets.chomp

		school[:students].each do |name|
		name.each do |key, value|
			if value == a
				puts name[:name]
			end
		end
	end
end

find_grade(school)


def find_prof_change_subj(school, prof, subject)


		school[:instructors].each do |name|
		name.each do |key, value|
			if value == prof
				name[:subject] = subject
			end
		end
	end
end

find_prof_change_subj(school, "Blake", "being terrible")


def add_student(school, student)

	school[:students] << {:name => student}
end

add_student(school,"Derek")

def ranking(school)
	school[:ranking] = 1
end

ranking(school)


#########5. Object Orientation############

class School
	attr_accessor :name, :location, :instructors, :students
	attr_reader :ranking

	SCHOOLS = []


	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = students
		@instructors = instructors
	end

	def set_ranking(ranking)

	end

	def add_student(school, student)
		school[:students] << {:name => student}
	end

	def del_student(school, student)
		school[:students].each do |name|
		name.each do |key, value|
			if value == student
				name.delete[key]
			end
		  end
	   end
	end

	def reset
		SCHOOLS.reset
	end
end

###########6. Classess##########
#Didn't finish this QUESTION

class Student

	def add_student(school, student)
		school[:students] << {:name => student}
	end

	def del_student(school, student)
		school[:students].each do |name|
		name.each do |key, value|
			if value == student
				name.delete[key]
			end
		  end
	   end
	end

end

##########7. Self#############

#7a. "hello Student"
#7b. "Student"
#7c. "nil"
#7d. "Student"
#7e. "goodbye"

