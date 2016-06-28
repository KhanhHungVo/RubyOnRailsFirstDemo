class Article < ActiveRecord::Base
	validates :body, presence: true
	validates :title, presence: true
	def self.search(search)
	  where("title ILIKE ?", "%#{search}%") 
	  # where("body ILIKE ?", "%#{search}%")
	end
end
