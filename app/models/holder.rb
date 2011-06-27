# == Schema Information
# Schema version: 20110620132445
#
# Table name: holders
#
#  id         :integer(4)      not null, primary key
#  f_name     :string(255)
#  l_name     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Holder < ActiveRecord::Base
 has_and_belongs_to_many :fdrs
def full_name

"#{f_name} #{l_name}"
end

end
