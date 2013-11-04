class QuestionsController < ApplicationController

  def index
    #@topic = Topic.find(params[:topic_id])
    @chapter = Chapter.find(params[:chapter_id])
    @book = @chapter.book
    #@questions = @topic.questions
  end

  def mcqsquestions
    #@topic = Topic.find(params[:topic_id])
    @chapter = Chapter.find(params[:chapter_id])
    @questions = Question.where(:chapter_id=>@chapter.id, :q_type=>"mcq")
  end

  def shortquestions
    #@topic = Topic.find(params[:topic_id])
    @chapter = Chapter.find(params[:chapter_id])
    @questions = Question.where(:chapter_id=>@chapter.id, :q_type=>"sq")
  end

  def testyourself
    #@topic = Topic.find(params[:topic_id])
    @chapter = Chapter.find(params[:chapter_id])
    @questions = Question.where(:chapter_id=>@chapter.id, :q_type=>"mcq")
    @squestion = Question.where(:chapter_id=>@chapter.id, :q_type=>"sq")
  end



end
