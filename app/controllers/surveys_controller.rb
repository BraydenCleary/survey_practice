class SurveysController < ApplicationController

  def new
    @survey = Survey.new
    2.times do 
      @question = @survey.questions.build
      1.times { @question.choices.build}
    end
  end

  def create
    puts params
    @survey = Survey.new(:title => params[:survey][:title], :creator => current_user)
    # @question = Question.new(params[:survey][:question])
    # @question.choices = 
    if @survey.save
      puts "hahahaha"
    else
      puts @survey.errors.full_messages
    end
  end

end
