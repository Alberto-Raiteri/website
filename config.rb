# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

config[:css_dir] = 'css'
config[:js_dir] = 'js'
config[:images_dir] = 'img'
config[:fonts_dir] = 'fonts'

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Localization
# activate :i18n
activate :i18n, :mount_at_root => false # All languages will be prefixed

# LiveReload
activate :livereload

# Syntax Highlighting
activate :syntax

# Dynamic pages
# Assumes the file source/about/template.html.erb exists
# ["one", "two", "three"].each do |name|
#   proxy "/works/#{name}/index.html", "/works/template.html", :locals => { :work_name => name }, :ignore => true
# end

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
