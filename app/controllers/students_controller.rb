class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
    @reports = Report.where(student_id: @student.id)
  end

  def new
  end

  def create
    @student = Student.new
    @student.username = params[:username]
    @student.email = params[:email]
    @student.img = params[:img]
    @student.bio = params[:bio]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.username = params[:username]
    @student.email = params[:email]
    @student.img = params[:img]
    @student.bio = params[:bio]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy


    redirect_to "/students"
  end
end
