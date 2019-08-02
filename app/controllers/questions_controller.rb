class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'PG'
      @response = ["I asked God for a bike, but I know God does't work that way so I stole a bike and asked for forgiveness.", "Throwing acid is wrong, in some people's eyes.", "Velcro - what a rip-off!", "I had a neck brace fitted years ago and I've never looked back since."].sample
    elsif params[:question] == 'PG-13'
      @response = ["What do you call a Mexican midget? ...A paragraph, because he's not a full essay.", "My girlfriend told me to go out and get something that makes her look sexy... so I got drunk."].sample
    elsif params[:question] == 'R'
      @response = ["Why does Santa Claus have such a big sack? ....He only comes once a year.", "Why does Dr. Pepper come in a bottle? ...Because his wife died."].sample
    elsif params[:question].include? '?'
      @response = ["Definitely", "Absolutely not", "Maybe", "Try again"].sample
    else
      @response = ["EWWWWW!!!... you don't pay attention!!", "NOICE!!!... but you did it wrong!!!"].sample
    end
  end

  def ask_question
  end
  def ask_joke
  end
end

# If the message is I am going to work, the coach will answer Great!

# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.

# Otherwise he will answer I don't care, get dressed and go to work!
