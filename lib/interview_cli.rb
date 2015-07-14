DATA_FILE = File.expand_path("../..", __FILE__)

class InterviewCLI < Thor
  desc "start", "start the interview"
  def start    
    name = ask "\nEnter your full name.".green 
    email = ask( "\nEnter your email address to get back to you. ".green) { |q| q.echo = '*' }
    user = User.new(name,email)
    interview = Interview.new(user)
    interview.start
    interview.submit
    Utils.clear_tmp
  end  
end