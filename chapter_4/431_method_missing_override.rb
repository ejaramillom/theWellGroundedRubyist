class Student
  def method_missing(m, *args)
    if m.to_s.start_with?('grade_for_')
      # return the appropiate grade
    else
      super
    end 
  end 
end 