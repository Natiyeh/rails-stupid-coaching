class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'Tell me a joke.'
      @response = ["I asked God for a bike, but I know God does't work that way so I stole a bike and asked for forgiveness.", "Throwing acid is wrong, in some people's eyes.", "My girlfriend told me to go out and get something that makes her look sexy... so I got drunk.", "Velcro - what a rip-off!", "I had a neck brace fitted years ago and I've never looked back since."].sample
    elsif params[:question].include? '?'
      @response = ["Definitely", "Absolutely not", "Maybe", "Try again"].sample
    else
      @response = ["EWWWWW!!!... but I said to ask me a question!!", "NOICE!!!... but I said to ask me a question!!!"].sample
    end
  end
end

# If the message is I am going to work, the coach will answer Great!

# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.

# Otherwise he will answer I don't care, get dressed and go to work!
