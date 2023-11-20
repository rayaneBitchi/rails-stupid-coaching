class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @question = params[:question]
        @answer = "I don't care, get dressed and go to work!"
        if @question
            if @question.strip.downcase.eql?("I am going to work".downcase)
            @answer = "Great!"
            elsif @question.chars[-1].eql?('?')
                @answer = "Silly question, get dressed and go to work!."
            end
        end
    end
end
