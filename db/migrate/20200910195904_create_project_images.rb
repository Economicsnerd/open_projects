class CreateProjectImages < ActiveRecord::Migration[6.0]
  def change
    create_table :project_images do |t|
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
