ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

# Added as a workaround for a Bootstrap bug on Windows.
# I was getting the below error when trying to go to the home page of the app:
# Fortunately, this is all I needed to do because I already have Node.js installed in in the PATH.
# I did not need to remove duktape gem from Gemfile.lock, as some has mentioned in the below bug report.
#
# "ExecJS::ProgramError after adding bootstrap gem #157" at https://github.com/twbs/bootstrap-rubygem/issues/157.
#   ActionView::Template::Error (identifier '(function(opts, pluginOpts) {return eval(process' undefined):
#        5:     <%= csrf_meta_tags %>
#        6:     <%= csp_meta_tag %>
#        7:
#        8:     <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
#        9:     <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
#       10:   </head>
#       11:
#
#   (execjs):1
#   app/views/layouts/application.html.erb:8:in `_app_views_layouts_application_html_erb__610041814_57663380'

# ENV['EXECJS_RUNTIME'] = 'Node'

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
