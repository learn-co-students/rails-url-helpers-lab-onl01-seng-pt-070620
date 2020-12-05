class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @student = set_student
    change_activate_status(@student)
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def change_activate_status(student)
      student.active = !student.active
      student.save
    end
  
end