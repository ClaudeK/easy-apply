class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index

  end

  def application_form
  end
end