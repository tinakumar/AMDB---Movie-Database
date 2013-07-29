class AddDobToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :dob, :string
  end
end
