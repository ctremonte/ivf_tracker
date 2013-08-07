class CreateClinicians < ActiveRecord::Migration
  def change
    create_table :clinicians do |t|
      t.string :full_name
      t.string :initials

      t.timestamps
    end
  end
end
