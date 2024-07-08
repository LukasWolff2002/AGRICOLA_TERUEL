class AddTableComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :mail
      t.string :comment
      t.timestamps
    end
  end
end
