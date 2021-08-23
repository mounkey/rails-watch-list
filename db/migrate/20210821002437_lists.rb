class Lists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :imagen, :string
  end
end
