class CreateEveents < ActiveRecord::Migration
  def change
    create_table :eveents do |t|
      t.date :Date
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
