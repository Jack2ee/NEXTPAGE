class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :published
      t.boolean :cd

      t.timestamps
    end
  end
end
