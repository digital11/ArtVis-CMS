class Art < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => ["5000",:jpg], :thumb => ["500x500",:jpg], :mini => ["50x50", :jpg]}
  belongs_to :artist
  belongs_to :account
  has_and_belongs_to_many :mediums
  has_and_belongs_to_many :styles

  attr_accessible :account_id, :artist_id, :description, :title, :image, :medium_ids, :style_ids, :tag_list
  acts_as_taggable
end
