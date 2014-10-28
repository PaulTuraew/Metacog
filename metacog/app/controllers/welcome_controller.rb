class WelcomeController < ApplicationController
  skip_before_action :require_signin, only: [:index]

  def index
  end

end
