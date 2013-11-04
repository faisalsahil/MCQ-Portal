class ChaptersController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @chapters = @book.chapters
  end

  def update
    #@topic = Topic.find(params[:id])
    @chapter = Chapter.find(params[:id])
    @squestion = Question.where(:chapter_id=>@chapter.id, :q_type=>"sq")
    @questions = Question.where(:chapter_id => @chapter.id, :q_type => "mcq")

    @question_arr = []
    @marked_arr = []
    @id_arr = []
    @correct_question = 0
    @wrong_question = 0

    @questions.each do |q|
      @question_arr << q.answer.ans
    end

    params[:chapter][:questions_attributes].each do |t|
      id = t[1][:marked_option_id]
      if id != nil
        @id_arr << id
      end
    end

    #@id_arr.reverse!

    @id_arr.each do |i|
      @option = Option.find_by_id(i)
      @marked_arr << @option.mcq
    end

    @question_arr.each_with_index do |value, index|
      if value == @marked_arr[index]
        @correct_question = @correct_question + 1
      else
        @wrong_question  = @wrong_question + 1
      end

    end
    #render testyourself_topic_questions_path(@topic),  :locals => {:correct_questions => @correct_question, :wrong_questions=>@wrong_question }
    #render '/questions/testyourself',  :locals => {:correct_questions => @correct_question, :wrong_questions=>@wrong_question }
  end
end
