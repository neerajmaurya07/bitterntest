class Blog < ApplicationRecord
  belongs_to :category
  has_many :comments
  mount_uploader :image, BlogImageUploader

  def self.search_title(search)
	  if search
  		where("lower(title) Like ?", "%#{search.downcase}%")
	  else
	    all
	  end
	end
end
