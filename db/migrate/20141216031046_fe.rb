class Fe < ActiveRecord::Migration
  def change
     add_column :reports, :username, :string
  end
end
