class Account < ActiveRecord::Base
  attr_accessible :logo, :name, :primary_user_id
  has_attached_file :logo, :styles => { :large => ["435",:png]}

  has_many :users
  has_many :artists
  has_many :arts
  belongs_to :primary_user, :foreign_key => 'primary_user_id', :class_name => 'User'
end
