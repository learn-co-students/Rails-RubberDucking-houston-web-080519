class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @ducks = Duck.all
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create({
      name: params[:name],
      mod: params[:mod],
    })
    redirect_to '/students/'
  end
 

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update({
      name: params[:name],
      mod: params[:mod],
    })
    redirect_to '/students/'
  end

end
