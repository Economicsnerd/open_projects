import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for ProjectsReflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {

  sort(event) {
    let element = document.getElementById('project-list')
    let project_elements = document.getElementsByClassName('project-listing')
    let projects = Array.from(project_elements).map((project, index) => {
      return { id: project.dataset.projectId, rank: (index + 1) }
    })
    element.dataset.tasks = JSON.stringify(projects)
    this.stimulate('ProjectsReflex#sort', element)
  }

}
