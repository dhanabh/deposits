# == Schema Information
# Schema version: 20110620132445
#
# Table name: fdrs
#
#  id         :integer(4)      not null, primary key
#  amount     :decimal(10, 2)  default(0.0)
#  m_amount   :decimal(10, 2)  default(0.0)
#  s_date     :date
#  m_date     :date
#  r_no       :string(255)
#  bank_id    :integer(10)
#  created_at :datetime
#  updated_at :datetime
#

class Fdr < ActiveRecord::Base
 has_and_belongs_to_many :holders
belongs_to :bank

validates_presence_of :amount, :m_amount,:s_date,:m_date,:r_no  
validates_uniqueness_of :r_no

end
