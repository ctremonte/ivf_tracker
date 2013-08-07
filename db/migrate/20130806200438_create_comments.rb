class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.datetime :when
      t.integer :user_id
      t.integer :object_id

      t.timestamps
    end
  end
end
