class AddBodyToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :body, :string
  end
end
