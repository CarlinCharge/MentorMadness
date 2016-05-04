class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :body
      t.references :user
      t.references :appointment

      t.timestamps null: false
    end
  end
end
