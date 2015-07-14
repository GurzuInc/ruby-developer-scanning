class AnswerFormator
  attr_accessor :formatted_content
  
  def initialize
    @formatted_content = ""
  end
  
  def format(interview)
    user = interview.user
    @formatted_content += "email: #{user.email}\n"
    @formatted_content += "name: #{user.name}\n"
    interview.questions.each{|q|
      @formatted_content += "\n Question: #{q.text} \n Answer: #{q.answer} \n\n"
    }  
  end

  

end