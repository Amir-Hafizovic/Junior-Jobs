class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    Job.create job_params
    redirect_to jobs_path
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
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
      job.update job_params
      redirect_to job
  end

  def show
    @job = Job.find params[:id]
  end

  def destroy
    Job.destroy params[:id]
    redirect_to planet_path
  end

  private
  # strong params for the artist form submit
  def job_params

    params.require(:job).permit(:title, :description, :job_location, :job_date, :job_company, :contract_type, :logo_image, :salary, :user_id)

  end


end
