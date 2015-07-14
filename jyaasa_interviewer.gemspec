Gem::Specification.new do |s|
  s.name        = 'jyaasa_interviewer'
  s.version     = '0.1.0'
  s.date        = '2015-07-15'
  s.summary     = "Command line utility for remote interview"
  s.description = "Command line utility for remote interview at Jyaasa Technologies"
  s.authors     = ["Kapil Raj Nakhwa (@xecutioner303)"]
  s.email       = 'kapilnakhwa@gmail.com'
  s.files       = ["bin/interview", "data/questions.yaml", "lib/answer_formator.rb", "lib/interview.rb", "lib/interview_cli.rb", "lib/question.rb", "lib/question_set.rb","lib/user.rb", "lib/utils.rb"]
  s.homepage    =
    'http://rubygems.org/gems/jyaasa_interviewer'
  s.license       = 'MIT'
  s.executables << 'interview'
  s.add_runtime_dependency 'thor', '~> 0.19.1'
  s.add_runtime_dependency 'highline', '~> 1.7', '>= 1.7.2'
  s.add_runtime_dependency 'colorize', '~> 0.7.7'
  s.add_runtime_dependency 'rest_client', '~> 1.8', '>= 1.8.3'
end