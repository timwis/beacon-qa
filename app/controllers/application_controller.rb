require 'uri'

class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV['USERNAME'],
                               password: ENV['PASSWORD']

  helper_method :beacon_contact, :dash_if_empty

  private

  def beacon_contact(contact_id)
    URI.join(ENV['BEACON_HOSTNAME'], '/contacts/', contact_id.to_s)
  end

  def dash_if_empty(value)
    if value && !value.to_s.empty?
      value
    else
      '—'
    end
  end
end
