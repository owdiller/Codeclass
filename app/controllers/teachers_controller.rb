class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find_by(id: params[:id])
  end

  def new
  end

  def create
    @teacher = Teacher.new
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.img = params[:img]
    @teacher.bio = params[:bio]

    if @teacher.save
      redirect_to "/teachers/#{ @teacher.id }"
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find_by(id: params[:id])
  end

  def update
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.img = params[:img]
    @teacher.bio = params[:bio]

    if @teacher.save
      redirect_to "/teachers/#{ @teacher.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.destroy


    redirect_to "/teachers"
  end
end
