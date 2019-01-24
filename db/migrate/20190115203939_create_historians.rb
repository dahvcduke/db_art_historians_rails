class CreateHistorians < ActiveRecord::Migration[5.2]
  def change
    create_table :historians do |t|
      t.integer :historian_id
      t.string :name
      t.string :date_born
      t.string :place_born
      t.string :date_died
      t.string :place_died
      t.string :overview
      t.string :home_country
      t.string :sources
      t.string :bibliography
      t.string :other_names
      t.string :notes
      t.string :gender
      t.string :subject_area
      t.string :path

      t.timestamps
    end
  end
end
