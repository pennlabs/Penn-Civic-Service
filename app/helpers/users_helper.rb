require 'date'

module UsersHelper
  def to_month(month)
    Date::MONTHNAMES[month.to_i]
  end
end
