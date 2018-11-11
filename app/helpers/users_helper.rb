module UsersHelper
	def image_tag(source, options={})
		source = "anon.jpg" if source.blank?
		super(source, options)
	end
end
