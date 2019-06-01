class AddViewersCounter < ActiveRecord::Migration[5.2]
  def up
    create_table :visits do |t|
      t.string :title
      t.integer :number
    end
  end
end
