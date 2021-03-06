# frozen_string_literal: true

# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

# Dashboard.
get 'toggl2redmine', to: 't2r_import#index'

# Import.
post 'toggl2redmine/import', to: 't2r_import#import'

# Read Redmine time entries.
get 'toggl2redmine/redmine/time_entries', to: 't2r_redmine#read_time_entries'

# Read Toggl time entries.
get 'toggl2redmine/toggl/time_entries', to: 't2r_toggl#read_time_entries'

# Read Toggl workspaces.
get 'toggl2redmine/toggl/workspaces', to: 't2r_toggl#read_workspaces'

if Rails.env == 'test'
  get 'toggl2redmine/test', to: 't2r_test#index'
end
