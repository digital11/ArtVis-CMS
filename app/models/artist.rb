class Artist < ActiveRecord::Base
  attr_accessible :account_id, :bio, :name
  belongs_to :account
  has_many :arts
end
