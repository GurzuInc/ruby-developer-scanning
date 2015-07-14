Gem::Specification.new do |s|
  s.name        = 'jyaasa_interviewer'
  s.version     = '0.0.1'
  s.date        = '2015-07-14'
  s.summary     = "Command line utility for remote interview"
  s.description = "Command line utility for remote interview at Jyaasa Technologies"
  s.authors     = ["Kapil Raj Nakhwa (@xecutioner303)"]
  s.email       = 'kapilnakhwa@gmail.com'
  s.files       = ["bin/main", "data/questions.yaml", "lib/answer_formator.rb", "lib/interview.rb", "lib/interview_cli.rb", "lib/question.rb", "lib/question_set.rb","lib/user.rb", "lib/utils.rb"]
  s.homepage    =
    'http://rubygems.org/gems/jyaasa_interviewer'
  s.license       = 'MIT'
  s.executables << 'main'

end