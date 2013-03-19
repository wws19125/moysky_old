class CommentsController < ApplicationController
  
  def create
    @weibo = Weibo.find(params[:weibo_id])
    if params[:comment_id]==nil
      @comment = @weibo.comments.build(params[:comment])
    else
      @comment = Comment.find(params[:comment_id]).comments.build(params[:comment])
      @comment.update_attributes :weibo_id => params[:weibo_id]
    end
    # @comment = @weibo.comments.build(params[:comment])
    @comment.update_attributes :ctime => Time.now+8*60*60 #,:weibo_id => params[:weibo_id]
    # redirect_to weibos_path
    response_to do |format|
      format.html { render weibos_path }
      format.json {render  @weibos = Weibo.all }
    end
  end
end
