require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    support_request = SupportRequest.first
    support_request.update(response: params.require(:support_request)[:response])
    mail = SupportRequestMailer.respond(support_request).deliver_now
    assert_equal "Respond", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
