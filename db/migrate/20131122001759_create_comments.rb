class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :user, index: true, null: false
      t.references :topic, index: true, null: false

      t.timestamps
    end
  end
end
