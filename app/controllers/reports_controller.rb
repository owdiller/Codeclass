class ReportsController < ApplicationController

  def index
    @reports = Report.all

  end

  def show
    @report = Report.find_by(id: params[:id])
    @student = Student.find_by(id: @report.student_id)
    render 'show'
  end

  def new
  end

  def create
    @report = Report.new
    @report.student_id = params[:student_id]
    @report.comment = params[:comment]
    @report.date = params[:date]

    if @report.save
      redirect_to "/reports/#{ @report.id }"
    else
      render 'new'
    end
  end

  def edit
    @report = Report.find_by(id: params[:id])
  end

  def update
    @report = Report.find_by(id: params[:id])
    @report.student_id = params[:student_id]
    @report.comment = params[:comment]
    @report.date = params[:date]

    if @report.save
      redirect_to "/reports/#{ @report.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @report = Report.find_by(id: params[:id])
    @report.destroy


    redirect_to "/reports"
  end
end
