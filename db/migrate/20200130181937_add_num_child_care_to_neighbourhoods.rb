class AddNumChildCareToNeighbourhoods < ActiveRecord::Migration[6.0]
  def change
    add_column :neighbourhoods, :num_child_care, :integer
  end
end
