class AddTitleToQualifications < ActiveRecord::Migration
  def change
    add_column :qualifications, :title, :string
  end
end
