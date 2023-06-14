json.extract! event, :id, :location, :latitude, :longitude, :rejected, :delisted, :approved, :logo_url, :banner_url, :wants_postcards, :mailing_address, :subscriber_email_sent, :contact_email, :contact_name, :event_name, :created_at, :updated_at, :virtual,
json.url event_url(event, format: :json)
