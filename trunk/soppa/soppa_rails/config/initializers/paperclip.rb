#Paperclip.options[:image_magick_path] = "/usr/local/bin"
if RAILS_ENV == "development"
  Paperclip.options[:command_path] = '/usr/bin'
else
  Paperclip.options[:command_path] = '/usr/bin'
end