require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond("to@example.org")
    assert_equal "Respond", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
