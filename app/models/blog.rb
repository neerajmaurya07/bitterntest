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
	def self.filter_date(search_date, search_end_date)
		if search_date && search_end_date
      where('created_at BETWEEN ? AND ?', search_date, search_end_date)
    else
      all
    end
	end
end
