require 'yaml'

class Question
  attr_accessor :questions, :question_type
  def initialize
    @questions = YAML.load_file('lib/question.yml')
  end

  def get_question(question_type='basic question')
    top_questions = @questions[question_type].sample(5)
  end
end