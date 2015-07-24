# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope
def get_grade (school, name)
  school[:students].each { |x| return x[:grade] if x[:name] == name}
end

def update_subject (school, instructor, new_subject)
  school[:instructors].each { |x| x[:subject] = new_subject if x[:name] == instructor }
end

def add_new_student(school, name)
  school[:students].push ({:name => name})
end

def add_new_key(school, key, level)
  school[key] = level
end


