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
    say "Preparing to send test to Jyaasa Technologies".green
    @formator.format(self)
    file_path = "#{Dir.pwd}/tmp/#{@user.name}.txt"
    Utils.write(file_path,@formator.formatted_content)
    Utils.send_to_jyaasa(file_path,@user)
  end

  

  def show
    @formator.formatted_content
  end
end