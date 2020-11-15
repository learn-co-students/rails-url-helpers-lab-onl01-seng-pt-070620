class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name

  end

  # def activate

  #   @student = Student.find(params[:id])

  #   if @student.active = false
  #     @student.active = true
  #   else @student.active = true
  #     @student.active = false
  #   end

  # end


  


end