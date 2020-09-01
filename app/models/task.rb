class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'completed']}

  STATUS_OPTIONS = [['Not started', 'not-started'],
                    ['In progress', 'in-progress'],
                    ['Completed', 'completed']
                  ]

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
  

  def completed? 
    status == 'completed'
  end
  def in_progress?
    status == 'in-progress'
  end
  def not_started?
    status == 'not-strated'
  end

end