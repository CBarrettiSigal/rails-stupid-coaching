class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
    correct = 'I am going to work right now!'

    # access question from params
    if @question == correct
      @answer = 'Ok great, see ya!'
    elsif @question != correct
      @answer = "I don't care! Get dressed and get to work!"
    end
  end
end
