class JobsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :external, :show]

  def new

    #if @current_user.user_type? :manager
      #user = User.find_by user_type: 'employer'
    if @current_user.user_type == "employer"
      @job = Job.new
    else
      flash[:error] = "Only employers can post jobs"
      redirect_to login_path
    end
    #@job = Job.new
  end

  def create

    # job = Job.create(job_params)
    job = @current_user.jobs.create job_params
    # raise 'hell'
    redirect_to job_path job

  end

  def index
    @jobs = Job.all
  end

  def external
    #OLD URL https://www.googleapis.com/books/v1/volumes?q=title:#{ params[:text_query] }
    search_url = "https://api.adzuna.com:443/v1/api/jobs/au/search/1?app_id=95ee4265&app_key=2354363480da7233eb45e9cd61258be5&results_per_page=20&what_or=Junior%2C%20Jnr%2C%20jr&category=IT-Jobs&sort_direction=down&sort_by=date
"


    results = HTTParty.get search_url
    # cl results
    @results = results['results']


  end

  def edit
    job = Job.find params[:id]

    if @current_user.user_type == "employer" && @current_user.id == job.user.id
      @job = Job.find params[:id]


    else
      flash[:error] = "You are not authorised to edit this job"
      redirect_to login_path
    end

  end

  def update
    job = Job.find params[:id]
      job.update job_params
      redirect_to job
  end

  def show
    @job = Job.find params[:id]
    #
    # template = @current_user.user_type + "_show"
    # render template
  end

  def destroy
    Job.destroy params[:id]
    redirect_to job_path
  end

  private
  # strong params for the artist form submit
  def job_params

    params.require(:job).permit(:title, :description, :job_location, :job_date, :job_company, :contract_type, :logo_image, :salary, :user_id)

  end


end
