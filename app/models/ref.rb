class Ref < ActiveRecord::Base
  has_many :calls
  has_many :votes, :through => :calls

end
