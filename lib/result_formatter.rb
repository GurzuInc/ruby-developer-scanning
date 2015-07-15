class ResultFormatter 
  attr_accessor :name, :email, :question_answer, :email_body
  def initialize
    @question_answer = ""
    @email_body = ""
  end

  def set_user_info(name='', email='')
    @email = email
    @name = name
  end

  def format_result(qs)
    qs.each do |as|
      @question_answer = @question_answer + "Question: #{as[:question]} <br/> Answer: #{as[:answer]} <br/>"
    end
  end

  def format_email_body
    @email_body = "Name: #{@name} <br/> Email: #{@email} <br/>"
    @email_body = @email_body + @question_answer
  end
end