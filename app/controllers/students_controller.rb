class StudentsController < ApplicationController
  def new
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    puts params[:student]
    redirect_to action: "index"
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
