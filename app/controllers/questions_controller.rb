class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    if @question == "hello"
      @hello_answer = "Hello there !"
    elsif @question == "what time is it?"
      @time_answer = Time.now
    elsif @question == "i'm going to work"
      @work_answer = "Great !"
    else
      @else_answer = "I don't care, get dressed and go to work!"
    end
  end
end
