# encoding: utf-8

class DashboardController < ApplicationController
  def index
    flash[:notice] = "Welcome back!"
    @time = Time.now
  end
end
