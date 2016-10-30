require 'yaml'
require 'colorize'

class Ball
  ANSWERS = YAML.load_file('answers.yml') if File.exist?('answers.yml')

  def color_array
    %w(31 35 32 33)
  end

  def shake
    rand_index = rand(ANSWERS.length)
    rand_answer = ANSWERS[rand_index]
    puts "\e[#{color_array[rand_index / 5]}m#{rand_answer}\e[0m"
  end
end

tmp = Ball.new
tmp.shake
