class CreatePeopleTable2 < ActiveRecord::Migration[5.1]
  def change
    create_table :people_table2s do |t|
      t.string :name, :house_id null: false
      t.timestamps
    end
  end
end
