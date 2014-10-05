class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :url

      t.timestamps
    end
  end
end
