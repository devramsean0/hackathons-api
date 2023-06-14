class EventUpdatesMailer < ApplicationMailer
    def event_approved(recipient, event_name) 
        mail(
            to: recipient,
            subject: "Hack Club Hackathons Submission Approved",
            content_type: "text/html",
            body: "
            Hey there,
            <br />
            Sean here from Hack Club Bank! Thanks for submitting your application to be featured on the Hack Club Hackathons page.
            <br />
            This email is just to confirm that your submission has been added to the site. Congrats and best of luck with #{event_name} ✨
            <br />
            https://hackathons.hackclub.com/
            <br />
            Best,
            Sean and the Hack Club Bank Team"
        )
    end
    def event_delisted(recipient, event_name, reason)
        mail(
            to: recipient,
            subject: "Hack Club Hackathons Submission Delisted",
            content_type: "text/html",
            body: "
            Hey there,
            <br />
            Sean here from Hack Club Bank! Your hackathon (#{event_name})has been delisted from the Hack Club Hackathons page.
            <br />
            The reason for this is: <pre>#{reason}</pre>
            <br />
            If you have any questions, please feel free to reach out!
            "
        )
    end
    def event_rejected(recipient, event_name, reason)
        mail(
            to: recipient,
            subject: "Hack Club Hackathons Submission Rejected",
            content_type: "text/html",
            body: "
            Hey there,
            <br />
            Sean here from Hack Club Bank! Your hackathon (#{event_name})has been rejected from the Hack Club Hackathons page.
            <br />
            The reason for this is: <pre>#{reason}</pre>
            <br />
            If you have any questions, please feel free to reach out!
            "
        )
    end  
end
