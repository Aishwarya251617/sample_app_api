class KoiBi < ActiveRecord::Migration[5.1]
  def change
  	create_table :koi_bi do |t|
      t.integer :pass
      t.string :kuch_bhi
      t.string :untrodden
      t.string :labs

      t.timestamps
    end
  end
end
