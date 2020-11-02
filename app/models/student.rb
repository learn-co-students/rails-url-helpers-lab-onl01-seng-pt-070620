class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def index
    @students = Student.all
  end

  def show
    
  end

end