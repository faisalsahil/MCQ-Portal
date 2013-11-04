class TopicsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])

  end

  def update
    @topic = Topic.find(params[:id])
    @squestion = Question.where(:topic_id=>@topic.id, :q_type=>"sq")
    @questions = Question.where(:topic_id => @topic.id, :q_type => "mcq")

    @question_arr = []
    @marked_arr = []
    @id_arr = []
    @correct_question = 0
    @wrong_question = 0

    @questions.each do |q|
      @question_arr << q.answer.ans
    end

    params[:topic][:questions_attributes].each do |t|
      id = t[1][:marked_option_id]
      puts id
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
    puts "8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888"
    puts "correct"
    puts @correct_question
    puts "wrong"
    puts @wrong_question
    puts "Questionarr"
    puts @question_arr
    puts "marked"
    puts @marked_arr
        #render testyourself_topic_questions_path(@topic),  :locals => {:correct_questions => @correct_question, :wrong_questions=>@wrong_question }
        #render '/questions/testyourself',  :locals => {:correct_questions => @correct_question, :wrong_questions=>@wrong_question }
  end


end


