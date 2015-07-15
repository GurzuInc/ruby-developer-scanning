require './lib/mail.rb'
require './lib/question.rb'
require './lib/question_answer.rb'
require './lib/result_formatter.rb'
require './lib/user.rb'

user = User.new
user.user_info
result_formatter = ResultFormatter.new
result_formatter.set_user_info(user.name, user.email)
qs = QuestionAnswer.new
qs.ask_question
result_formatter.format_result(qs.question_answer)
result_formatter.format_email_body
mail = Mail.new
mail.message('', result_formatter.email_body)
mail.send_message