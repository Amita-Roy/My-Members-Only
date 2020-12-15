class Post < ApplicationRecord
  belongs_to :user

  def send_notifications!
    users = User.all
    users.each do |user|
      PostMailer.post_notifications(user, self).deliver_later
    end
  end
end
