class Randomize

  def initialize(app)
    @app = app
    puts "Randomize instantiated at #{Time.new}"
  end

  def call(env)
    puts "Randomize call method called at #{Time.new}"

    status, headers, response = @app.call(env)
    response_body = response.first + "number #{rand(100)}"

    [status, headers, [response_body]]
  end
end