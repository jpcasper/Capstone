class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
