class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  def badge_color
    case status
      when 'not-started'
        'light'
      when 'in-progress'
        'info'
      when 'completed'
        'success'
      end
    end


  def status
    return "not-started" if tasks.none?
    if tasks.all? { |task| task.completed? }
      "completed"
    elsif tasks.any? { |task| task.in_progress? || task.completed? }
      "in-progress"
    else
      "not-started"
    end
  end


  def progress_tracker
    return 0 if tasks.none?
    ((completed_tasks.to_f / task_counter) * 100).round
  end

  def completed_tasks
    tasks.select { |task| task.completed? }.count
  end
  def task_counter
    return "No tasks yet!" if tasks.none?
    tasks.count
  end
end
