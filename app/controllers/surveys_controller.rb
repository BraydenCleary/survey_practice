class SurveysController < ApplicationController

  def new
    @survey = Survey.new
    1.times do 
      @question = @survey.questions.build
      1.times { @question.choices.build}
    end
  end

  def create
    @survey = Survey.new(params[:survey])
    @survey.creator = current_user
    if @survey.save
      puts "hahahaha"
    else
      puts @survey.errors.full_messages
    end
  end

end
