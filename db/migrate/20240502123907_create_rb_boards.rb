class CreateRbBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :rb_boards do |t|
      t.string :title
      t.text :content
      t.string :writer

      t.timestamps
    end
  end
end
