class Hello

  def initialize
    puts "Rackapp Hello instantiated at #{Time.new}"
  end

  def call(env)
    puts "Rackapp Hello call method called at #{Time.new}"
    [200, {'Content-Type' => 'text/html'}, ["Hello, "]]
  end

end