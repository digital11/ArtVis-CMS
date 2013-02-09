class Medium < ActiveRecord::Base
  has_and_belongs_to_many :arts
  validates_uniqueness_of :name, :scope => :account_id
  attr_accessible :account_id, :name
end
