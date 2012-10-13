module ApplicationHelper
	
	# Returns the full title on a per-page basis
	def full_title(page_title)
		base_title = "Raddresses"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	
	def active_style_nav(tab_type, page_type)
		style = "active"
		if tab_type == page_type
			style
		else
			""
		end
	end
	
end
