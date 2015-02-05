class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :qualification_name
      t.string :subjects
      t.string :color

      t.timestamps null: false
    end
  end
end
