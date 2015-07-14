class AnswerFormator
  attr_accessor :formatted_content
  
  def initialize
    @formatted_content = ""
  end
  def format(interview)
    interview.questions.each{|q|
      @formatted_content += "\n Question: #{q.text} \n Answer: #{q.answer} \n\n"
    }  
  end

  

end