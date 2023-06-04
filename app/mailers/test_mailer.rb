class TestMailer < ApplicationMailer
    default from: "seano@hackclub.com"
    def simple_message(recipient)
        mail(
            to: recipient,
            
            subject: "Test Email",
            body: "This is a test email from the hackathons-api project"
        )
        print "Email sent to #{recipient}"
    end
end
