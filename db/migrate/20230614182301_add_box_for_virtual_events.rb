class AddBoxForVirtualEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :virtual, :boolean
  end
end
