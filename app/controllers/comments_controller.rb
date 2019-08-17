class CommentsController < ApplicationController
 # POST /posts
  # POST /posts.json
  def create
    @post = Post.find(params[:post_id])

      if @post.comments.create(comment_params)
        redirect_to @post, notice: 'Comment was successfully created.' }
      else
        redirect_to @post, alert: 'Error creating comment.'
      end
    end

    def comment_params
        params.require(:comment).permit(:author, :body)
    end
end



