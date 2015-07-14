class Interview
  attr_accessor :user, :questions, :formator
  def initialize(user)
    @user = user
    @formator = AnswerFormator.new
    get_questions
  end

  def get_questions
    set = QuestionSet.new
    @questions= set.questions
  end

  def start
    $/ = "\nsubmit"
    @questions.each {|question| 
      say "\n**Here is your question: (Type the answer into the console. Type 'submit' and press enter  in new line to submit your answer for the question)**\n\n".red 
      question.answer = ask(question.text.blue).gsub('submit','')
    }
  end

  def submit
    @formator.format(self)
    send_to_jyaasa
  end

  def send_to_jyaasa
    say @formator.formatted_content.blue
  end

  def show
    @formator.formatted_content
  end
end