module HtmlUtilities

  def title
		@title.nil? ? settings.appname : "#{settings.appname}: #{@title}"
	end

end
