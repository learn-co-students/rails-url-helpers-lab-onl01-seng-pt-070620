class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    case @student.active
    when true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end