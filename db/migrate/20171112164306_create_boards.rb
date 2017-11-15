class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.text :board
      t.references :number, foreign_key: true

      t.timestamps
    end
  end
end
