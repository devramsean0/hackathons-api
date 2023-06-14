require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    check "Approved" if @event.approved
    fill_in "Banner url", with: @event.banner_url
    fill_in "Contact email", with: @event.contact_email
    fill_in "Contact name", with: @event.contact_name
    check "Delisted" if @event.delisted
    fill_in "Event name", with: @event.event_name
    fill_in "Latitude", with: @event.latitude
    fill_in "Location", with: @event.location
    fill_in "Logo url", with: @event.logo_url
    fill_in "Longitude", with: @event.longitude
    fill_in "Mailing address", with: @event.mailing_address
    check "Rejected" if @event.rejected
    check "Subscriber email sent" if @event.subscriber_email_sent
    check "Wants postcards" if @event.wants_postcards
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    check "Approved" if @event.approved
    fill_in "Banner url", with: @event.banner_url
    fill_in "Contact email", with: @event.contact_email
    fill_in "Contact name", with: @event.contact_name
    check "Delisted" if @event.delisted
    fill_in "Event name", with: @event.event_name
    fill_in "Latitude", with: @event.latitude
    fill_in "Location", with: @event.location
    fill_in "Logo url", with: @event.logo_url
    fill_in "Longitude", with: @event.longitude
    fill_in "Mailing address", with: @event.mailing_address
    check "Rejected" if @event.rejected
    check "Subscriber email sent" if @event.subscriber_email_sent
    check "Wants postcards" if @event.wants_postcards
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
