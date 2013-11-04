class QuereysController < ApplicationController

  def new
    @querey = Querey.new

  end

  def create
    @querey = Querey.new(params[:querey])
    @querey.save
    redirect_to books_path, :notice=>"Your suggestion successfully saved"
  end

end
