class AddInternToMicroposts < ActiveRecord::Migration[5.1]
  def change
  	add_column :microposts, :intern, :string
  end
end
