json.extract! subscriber, :id, :email, :location, :unsubscribed_at, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)
