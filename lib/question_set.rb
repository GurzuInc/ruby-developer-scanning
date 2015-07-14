class QuestionSet
  attr_accessor :questions_pool, :questions
  def initialize
    @questions_pool = load_pool
    @questions =Array.new
    self.fetch
  end

  def fetch
    categories = @questions_pool.keys
    categories.each { |category| 
      @questions +=Question.build(@questions_pool[category].sample(1))
     }
  end

private
  def load_pool
    YAML.load(File.read("#{DATA_FILE}/data/questions.yaml"))
  end

end