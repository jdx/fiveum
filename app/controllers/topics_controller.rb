class TopicsController < ApplicationController
  before_filter :authenticate!

  def index
    @topics = Topic.order('created_at DESC')
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user
    if @topic.save
      redirect_to @topic
    else
      render :new
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @comments = Comment.where(topic_id: @topic.id)
    @comment = Comment.new
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :body)
  end
end
