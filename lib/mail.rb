class Mail
	attr_accessor :email, :password, :message, :subject
	# EMAIL = 'talktestruby@gmail.com'
	# PASSWORD = 'rubyrubyruby'
	def initialize(email = nil, password = nil)
		@email = email || 'talktestruby@gmail.com'
		@password = password || 'rubyrubyruby'
	end

	def message(subject = '', body='')
		@subject = "Test questions"
    @message =  "Here are the answer of questions </br>" + body
  end

  def send_message
  	require 'net/smtp'
  	smtp = Net::SMTP.new('smtp.gmail.com',587)
		smtp.enable_starttls #beacuse gmail requires this encryption
		smtp.start('gmail.com', @email, @password, :login ) do |s|
			s.send_message @message, 'ganesh@jyaasa.com', 'gkunwar09@gmail.com'
		end
	end
end