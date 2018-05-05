class CreateMunicipios < ActiveRecord::Migration[5.1]
  def change
    create_table :municipios do |t|
      t.string :name
      t.integer :code
      t.boolean :state
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
