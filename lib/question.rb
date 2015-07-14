class Question
  attr_accessor :text, :answer

  def initialize(question=nil)
    @text = question
  end

 def self.build(question_list)
  container = []
   question_list.each {|question|
    container << self.new(question)
   }
   container
 end
  
end