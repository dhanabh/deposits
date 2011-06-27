class CreateFdrs < ActiveRecord::Migration
  def self.up
    create_table :fdrs do |t|
      t.decimal :amount, :precision=>10, :scale => 2, :default=>0
      t.decimal :m_amount, :precision=>10, :scale => 2, :default=>0
      t.date :s_date
      t.date :m_date
      t.string :r_no
      t.decimal :bank_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fdrs
  end
end
