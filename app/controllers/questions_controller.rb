class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = case @question.downcase
              # when 'hello'
              #   'Hello Nik'
              # when 'what time is it?'
              #   "It is #{Time.now.hour}:#{Time.now.min}."
              when 'i am going to work'
                'Great!'
              when /.+\?/
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
