my_formats = {
  :default => '%d/%m/%Y',
  :date_time12 => '%d/%m/%Y %I:%M%p',
  :date_time24 => '%d/%m/%Y %H:%M',
  :date_sql => '%Y-%m-%d',
  :date_time_sql => '%Y-%m-%d %H:%M:%s',
  :just_time => '%H:%M',
  :month => '%m',
  :year => '%y'
}
ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(my_formats)
ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(my_formats)
