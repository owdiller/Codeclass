class ReportsController < ApplicationController

  def index
    @reports = Report.all

  end

  def show
    @report = Report.find_by(id: params[:id])
    @student = Student.find_by(id: @report.username)
    render 'show'
  end

  def new
  end

  def create
    @report = Report.new
    @report.username = params[:username]
    @report.comment = params[:comment]
    @report.date = params[:date]

    if @report.save
      redirect_to "/reports/#{ @report.id }/rehcf349ytgfoisdjf34807tupqu0U0Y3RYTTYONHVBYOUE45554ffRYTOTJ34dfsg1111155", :message => "Report Saved!"
      
    else
      
      render 'new', :message => "Something Went Wrong, Retry Report."
    end
  end

  def edit
    @report = Report.find_by(id: params[:id])
  end

  def update
    @report = Report.find_by(id: params[:id])
    @report.username = params[:username]
    @report.comment = params[:comment]
    @report.date = params[:date]

    if @report.save
      redirect_to "/reports/#{ @report.id }/rehcf349ytgfoisdjf34807tupqu0U0Y3RYTTYONHVBYOUE45554ffRYTOTJ34dfsg1111155"
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
