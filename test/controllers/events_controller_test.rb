require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { approved: @event.approved, banner_url: @event.banner_url, contact_email: @event.contact_email, contact_name: @event.contact_name, delisted: @event.delisted, event_name: @event.event_name, latitude: @event.latitude, location: @event.location, logo_url: @event.logo_url, longitude: @event.longitude, mailing_address: @event.mailing_address, rejected: @event.rejected, subscriber_email_sent: @event.subscriber_email_sent, wants_postcards: @event.wants_postcards } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { approved: @event.approved, banner_url: @event.banner_url, contact_email: @event.contact_email, contact_name: @event.contact_name, delisted: @event.delisted, event_name: @event.event_name, latitude: @event.latitude, location: @event.location, logo_url: @event.logo_url, longitude: @event.longitude, mailing_address: @event.mailing_address, rejected: @event.rejected, subscriber_email_sent: @event.subscriber_email_sent, wants_postcards: @event.wants_postcards } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
