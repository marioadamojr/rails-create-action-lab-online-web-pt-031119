class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(title: params[:first_name], description: params[:last_name])
    redirect_to post_path(@student)
  end

end
