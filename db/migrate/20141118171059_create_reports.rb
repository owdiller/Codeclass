class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :student_id
      t.string :comment
      t.string :date

      t.timestamps
    end
  end
end
