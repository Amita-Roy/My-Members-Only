class PostMailer < ApplicationMailer
  def post_notifications(user, post)
    @user = user
    @post = post

    mail(
      to: "#{user.email}",
      subject: "[Members Only] New Post #{post.title}",
    )
  end
end
