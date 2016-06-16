module ApplicationHelper

	def get_newest_album
		Album.order(:released_on).last.id
	end

	def get_four_lateset_albums
		Rails.cache.fetch("#{self}/get_four_lateset_albums", expires_in: 1.hours) do
			Album.recent(4)
	    end
	end
end
