class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def activate
    if @student.active = false
      @student.active = true
    else @student.active = true
      @student.active = false
    end

    redirect_to(show)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end