class CreateResearches < ActiveRecord::Migration[6.0]
  def change
    create_table :researches do |t|
      t.datetime :arrival
      t.datetime :departure
      t.string :city

      t.timestamps
    end
  end
end
