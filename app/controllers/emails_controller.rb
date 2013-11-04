class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def inbox
    puts "888888888888888888888888888888888888888888888888888888"*80
    puts params[:folder]
    @emails = Email.all
    if ( params[:folder] == 'Inbox' )
        #return render json: { :mails => [{ :from => "adil", :to => "qa", :subject => "sssss", :date => "dddd"}, { :from => "adil", :to => "qa", :subject => "sssss", :date => "dddd"} ] }
       return render json: { :mails => @emails }
    #elsif (params[:folder] == "Sent")
    #     return render json: {:mails => "No record found"}
    end
  end
end
