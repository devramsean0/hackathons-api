class SubscriberUpdatesMailer < ApplicationMailer
    def new_subscriber(recipient) 
        mail(
        to: recipient,
        subject: "Thanks for subscribing!",
        content_type: "text/html",
        body: "Thanks for subscribing to the hackathon event list!<br />You'll only recieve an email when:
        <ul>
            <li>A hackathon is happening near you</li>
            <li>You update your information</li>
            <li>You unsubscribe</li>
        </ul>"
        )
    end
    def updated_subscriber(recipient)
        mail(
        to: recipient,
        subject: "Your Data has been updated!",
        content_type: "text/plain",
        body: "Your data has been updated for the hackathon event list!"
        )
    end
    def deleted_subscriber(recipient)
        mail(
        to: recipient,
        subject: "You have been unsubscribed!",
        content_type: "text/html",
        body: "You have been unsubscribed from the hackathon event list!<br />You will no longer recieve emails from us."
        )
    end
end