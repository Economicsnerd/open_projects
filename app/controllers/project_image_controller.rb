class ProjectImageController < ApplicationController

  def create
    project = current_user.projects.find(params[:project_id])
    project.project_image.create
    redirect_to project_path(project)
  end

  def update
    project = current_user.projects.find(params[:project_id])
    project_image = project.project_image.find(params[:id])
    if project_image.image.attach(project_image_params[:image])
      redirect_to project_path(project)
    else
      render action: 'edit'
    end
  end

end
