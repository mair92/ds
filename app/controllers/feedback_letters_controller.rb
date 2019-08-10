class FeedbackLettersController < ApplicationController

  def create
    FeedbackLetter.create(feedback_letter_params)
  end

  private
  def feedback_letter_params
    params.require(:feedback_letter).permit(:name, :email, :text)
  end

end
