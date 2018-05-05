class CreateCaracters < ActiveRecord::Migration[5.1]
  def change
    create_table :caracters do |t|
      t.text :texto

      t.timestamps
    end
  end
end
