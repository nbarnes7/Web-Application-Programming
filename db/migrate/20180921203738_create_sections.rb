class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :semester
      t.integer :number
      t.string :course
      t.integer :roomnumber
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
