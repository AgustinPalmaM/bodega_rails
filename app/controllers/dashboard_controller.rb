# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    @products = Product.all
  end
end
