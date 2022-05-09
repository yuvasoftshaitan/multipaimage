    @post = Post.new(post_params)
    @user = User.find_by(id: params[:post][:user_id])
     @post.user_id = @user.id
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end