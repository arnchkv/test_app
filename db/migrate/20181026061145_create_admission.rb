class CreateAdmission < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.string :name
      t.text :description
    end
  end
end
