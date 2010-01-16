# encoding: utf-8

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  rescue_from Rango::Exceptions::TemplateNotFound do
    render file: "public/404.html", status: 404
  end
end
