class JobsController < ApplicationController
  def new
  end

  def create
  end

  def index
    #OLD URL https://www.googleapis.com/books/v1/volumes?q=title:#{ params[:text_query] }
    search_url = "https://api.adzuna.com:443/v1/api/jobs/au/search/1?app_id=95ee4265&app_key=2354363480da7233eb45e9cd61258be5&results_per_page=20&what_or=Junior%2C%20Jnr%2C%20jr&category=IT-Jobs&sort_direction=down&sort_by=date
"


    results = HTTParty.get search_url
    # cl results
    @results = results['results']


  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
