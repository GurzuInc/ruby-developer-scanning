require './lib/question.rb'
class QuestionAnswer
  attr_accessor :question_answer
  def initialize
    @question_answer = Array.new
  end

  def ask_question
    question = Question.new
    questions = question.get_question('basic question')
    format_result(questions)
    questions = question.get_question('medium hard question')
    format_result(questions)
    questions = question.get_question('practical question')
    format_result(questions)
  end

  private
  def format_result(questions)
    questions.each do |q|
      puts q['question']
      answer = gets.strip
      @question_answer << {
        question: q['question'],
        answer: answer
      }
    end
  end
end