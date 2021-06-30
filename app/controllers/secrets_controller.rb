class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]
  
  def show
    if session[:name].nil?
      redirect_to '/login'
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end