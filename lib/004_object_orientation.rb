#Class Methods

class School

  @@instances = []
  @@count = 0

  attr_accessor :name, :school, :location, :students, :instructors
  attr_reader :ranking


def initialize (name, location, ranking)
  @name = name
  @location = location
  @ranking = ranking
  @students = []
  @instructors = []
  @@instances << self
  @@count += 1
end

def self.all
  return @@instances
end

def self.count
  return @@count
end

def self.reset_all
  @@instances = []
  @@count = 0
end


def add_student(name, grade, semester)
  @students << {name: name, grade: grade, semester: semester}
end

def remove_student(name)
  @students.delete(name)
end

end