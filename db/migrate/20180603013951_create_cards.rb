class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
