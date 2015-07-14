class Utils

  def self.write(path,  content)
    dirname = File.dirname(path)
    unless File.directory?(dirname)
      FileUtils.mkdir_p(dirname)
    end
    path = File.open(path, 'w') { |file| file.write(content) }
  end

  def self.send_to_jyaasa(file_path,user)
      RestClient.post('https://getsimpleform.com/messages', :form_api_token => '272fb8189aa754dc5e74cec3922b9401', :name => user.name, :email => user.email, :attachment => File.new(file_path, 'rb')) do |response, request, result, &block|
      if [301, 302, 307].include? response.code
        redirected_url = response.headers[:location]
      else
        response.return!(request, result, &block)
      end
    end
    say "You response has been emailed to Jyaasa Technologies".green
  end

  def self.clear_tmp
    FileUtils.rm_rf(Dir.glob("#{Dir.pwd}/tmp/"))
  end

end