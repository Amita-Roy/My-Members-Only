# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview
  def post_notifications
    PostMailer.post_notifications(User.last, Post.last).deliver_now
  end
end
