class CreateAnimalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.string :location
    end
  end
end
