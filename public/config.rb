require "autoprefixer-rails"


project_path = File.expand_path(File.join(File.dirname(__FILE__)))

http_path   = "/"
css_dir     = "css"
sass_dir    = "scss"
images_dir  = "images"

relative_assets = true
line_comments   = true

on_stylesheet_saved do |css_file|
  if top_level.environment == :development
    # Run Autoprefixer
    css = File.read(css_file)
    File.open(css_file, 'w') do |io|
      io << AutoprefixerRails.process(css, browsers: ['Android 2.3',
            'Android >= 4',
            'Chrome >= 20',
            'Firefox >= 24', # Firefox 24 is the latest ESR
            'Explorer >= 8',
            'iOS >= 6',
            'Opera >= 12',
            'Safari >= 6'
          ]
        )
    end
  end
end
