class Mail
	attr_accessor :email, :password, :message
	# EMAIL = 'talktestruby@gmail.com'
	# PASSWORD = 'rubyrubyruby'
	def initialize(email = nil, password = nil)
		@email = email || 'talktestruby@gmail.com'
		@password = password || 'rubyrubyruby'
	end

	def message(subjectm body='')
		@message = %q(
		  From: Jyaasa Technologies <career@jyaasa.com>
		  To: Ganesh Kunwar <ganesh@jyaasa.com>
		  Subject: This is from my terminal
		  Hi, I am learning sending email from the terminal.
		 )
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

mail = Mail.new
mail.message
mail.send_message