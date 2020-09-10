# frozen_string_literal: true

class ProjectsReflex < ApplicationReflex
  def sort
    projects = JSON.parse(element.dataset.projects)
    projects.each do |project|
      project_record = Task.find(project['id'])
      project_record.update(rank: project['rank'])
    end
  end
end
