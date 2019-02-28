class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
