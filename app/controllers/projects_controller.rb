class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]
  before_action :set_clients, only: %i[edit new]
  def index
    @projects = Project.all
  end

  def show; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to clients_path, notice: 'Project saved.'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to clients_path, notice: 'Project details are updated'
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to clients_path, notice: 'Project is deleted' if @project.destroy
  end

  private

  def set_clients
    @clients = Client.all
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :client_id)
  end
end
