class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render 'index'
  end

  def show
    @student = Student.find(params[:id])
  end

 
  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
      @student.save
    else @student.active == false
      @student.active = true
      @student.save
    end
    render 'show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end