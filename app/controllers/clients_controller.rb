# frozen_string_literal: true

class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update destroy]

  def index
    @clients = Client.all
  end

  def show
    @projects = @client.projects
  end

  def new
    @client = current_user.clients.new
  end

  def create
    @client = current_user.clients.new(client_params)
    if @client.save
      redirect_to clients_path, notice: 'Client details are saved.'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @client.update(client_params)
      redirect_to clients_path, notice: 'Client details are updated.'
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to clients_path, notice: 'Client is deleted.' if @client.destroy
  end

  def client_projects; end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :address, :email, :phone, :website, :description, :image)
  end
end
