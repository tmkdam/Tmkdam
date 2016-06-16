module AlbumsHelper
	def list_of_publishers_for_form_select
		Publisher.select(:id, :name).all
	end
end
