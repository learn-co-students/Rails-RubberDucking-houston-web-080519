class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show 
    @students = Student.all
    @duck = Duck.find(params[:id])
  end

  def new
    @students = Student.all
    student = @students.sample
  end

  def create
    @students = Student.all
    student = @students.sample
    Duck.create({
      name: params[:name],
      description: params[:description],
      student_id: student.id
    })
    redirect_to "/ducks/index"
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update({
      name: params[:name],
      description: params[:description],
    })
    redirect_to '/ducks/'
  end

end


