class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"

  def topic_update(email, topic_id)
    @topic = Topic.find(topic_id)
    mail to: email, subject: 'Topic updated'
  end
end
