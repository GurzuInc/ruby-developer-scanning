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
      say "\n**Here is your question: (Type the answer into the console. Type 'submit' and press enter  in new line to submit your answer for the question)**\n\n".red 
      question.answer = ask(question.text.blue) do |q| q.gather="submit" end
    }
  end
end