class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    @feedback.save
    redirect_to books_path, :notice => "your feedback successfully saved"
  end
end
