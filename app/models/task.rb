class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'completed']}

  STATUS_OPTIONS = [['Not started', 'not-started'],
                    ['In progress', 'in-progress'],
                    ['Completed', 'completed']
                  ]
end
