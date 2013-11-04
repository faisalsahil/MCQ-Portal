class AskquestionsController < ApplicationController

  def new
    @askquestion = Askquestion.new
  end
  def create
    @askquestion = Askquestion.new(params[:askquestion])
    @askquestion.save
    redirect_to books_path, :notice => "Your question successfully saved"
  end
end
