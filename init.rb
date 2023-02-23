# frozen_string_literal: true

require File.expand_path('../lib/add_date_formats_with_day_names/settings_helper_patch.rb', __FILE__)

Redmine::Plugin.register :add_date_formats_with_day_names do
  name 'Add Date Formats With Day Names plugin'
  author 'bokos'
  description 'Adds selectable date formats with day names to settings'
  version '0.0.2'
  url 'https://github.com/bokos/add_date_formats_with_day_names'
  author_url 'https://github.com/bokos/add_date_formats_with_day_names'

  RedmineApp::Application.config.after_initialize do
    SettingsHelper.include AddDateFormatsWithDayNames::SettingsHelperPatch
  end
end

