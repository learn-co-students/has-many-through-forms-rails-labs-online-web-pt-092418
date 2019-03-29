class CreatePostUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :post_users do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.integer :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
