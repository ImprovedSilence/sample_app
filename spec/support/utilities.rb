def full_title(page_title)
	base_title="Email Chain v3.0"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

