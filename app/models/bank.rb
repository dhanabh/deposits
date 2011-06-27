# == Schema Information
# Schema version: 20110620132445
#
# Table name: banks
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Bank < ActiveRecord::Base
 has_many :fdrs
end
