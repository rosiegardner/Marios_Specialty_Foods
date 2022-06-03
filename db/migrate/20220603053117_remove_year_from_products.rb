class RemoveYearFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :year, :integer
  end
end
