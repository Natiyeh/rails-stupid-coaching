Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer
  get 'ask_question', to: 'questions#ask_question', as: :ask_question
  get 'ask_joke', to: 'questions#ask_joke', as: :ask_joke
end
