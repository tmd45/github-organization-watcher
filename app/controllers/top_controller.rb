class TopController < ApplicationController
  def index
    redirect_to orgs_path if logged_in?
  end
end
