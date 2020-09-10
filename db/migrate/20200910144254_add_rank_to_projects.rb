class AddRankToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :rank, :integer
  end
end
