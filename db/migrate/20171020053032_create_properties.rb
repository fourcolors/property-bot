class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :nickname
      t.references :propertyable, ploymorphic: true, index: true

      t.timestamps
    end
  end
end
