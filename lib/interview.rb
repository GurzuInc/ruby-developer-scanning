class Interview
  attr_accessor :user, :questions
  def initialize(user)
    @user = user
    get_questions
  end

  def get_questions
    set = QuestionSet.new
    @questions= set.questions
  end

  def start
    @questions.each {|question| 
      say "\n**Here is your question: (Type the answer into the console and press enter when done)**\n\n".red 
      question.answer = ask(question.text.blue)
    }
  end
end