class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_question = params[:ask]
    if @user_question.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @user_question == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
