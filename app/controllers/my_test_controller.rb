# frozen_string_literal: true

class MyTestController < ApplicationController
  before_action do
    require 'pry'; binding.pry
  end

  def env_var
    render json: { should_show_in_app_purchase: ENV['ENABLE_APPLE_IAP'].to_d }
  end
end
