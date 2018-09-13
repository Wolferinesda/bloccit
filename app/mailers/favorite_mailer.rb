class FavoriteMailer < ApplicationMailer
  default from: "drhalterman1@yahoo.com"

  def new_comment(user, post, comment)

<<<<<<< HEAD
    headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"
=======
    headers["Message-ID"] = "<comments/#{comment.id}@bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
    headers["References"] = "<post/#{post.id}@bloccit.example>"
>>>>>>> 556c984e17717e83914b19fa1fced9a4aeb0e9b5

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
<<<<<<< HEAD
    headers["Message-ID"] = "<posts/#{post.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @post = post

    mail(to: post.user.email, subject: "You're following, #{post.title}")
=======
    headers["Message-ID"] = "<post/#{post.id}@bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
    headers["References"] = "<post/#{post.id}@bloccit.example>"

    @post = post

    mail(to: post.user.email, subject: "You're following, #{post.title}!")
>>>>>>> 556c984e17717e83914b19fa1fced9a4aeb0e9b5
  end
end
