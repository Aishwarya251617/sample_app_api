class Testing < ActiveRecord::Migration[5.1]
  def up
  	execute <<-SQL
      CREATE TABLE 'testing' (name string, id integer);
    SQL
  end
  def down
  	execute <<-SQL
      DROP TABLE 'testing';
    SQL
  end
end
