class PagesController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]
  # could also do 'except: [:home]'

  #before_action :check_if_admin, only: [:admin_party]

  def home
  end



end
