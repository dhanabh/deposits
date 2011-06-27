class CreateHolders < ActiveRecord::Migration
  def self.up
    create_table :holders do |t|
      t.string :f_name
      t.string :l_name

      t.timestamps
    end
create_table :fdrs_holders, :id => false do |t|
t.column :holder_id, :integer
t.column :fdr_id, :integer
end


  end

  def self.down
    drop_table :holders
	drop_table:fdrs_holders		
  end







end
