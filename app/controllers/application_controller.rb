class ApplicationController < ActionController::API
  def root
    render json: { message: 'Welcome to the Baseball API.' }
  end
end
