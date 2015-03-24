class WelcomeController < ApplicationController
  def index
    @invoice = Invoice.new
  end
end
