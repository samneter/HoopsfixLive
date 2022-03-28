# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
