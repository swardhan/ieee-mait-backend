class Achievement < ApplicationRecord
	has_one_attached :image

	def image_url
		Rails.application.routes.url_helpers.rails_blob_url(self.image)
	end
end
