class AddRankToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :rank, :integer
  end
end
