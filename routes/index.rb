get "/" do
	@title = 'Landing Page' # Appended to: 'settings.appname' from config.yaml (optional)
	@date = DateTime.now
	@xx = $db
	erb :index
end