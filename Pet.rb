class Pet

  def initialize name
    @name = name
    @sleep = false
    @animal = animals
    @hunger = 0
    puts "you pet #@animal. Name #@name"
  end

  def animals
    animals = ['Cat', 'Dog', 'Dragon', 'Chubakabra']
    animals[rand(animals.length)]
  end

  def status
    if hungry?
      p "Your #@name is hungry"
    else
      p "Your #@name don't hungry"
    end
    if sleep?
      p "Your #@name wants to sleep"
    else
      p "Your #@name does not want to sleep"
    end
  end

  def feed
    @hunger += 1
  end

  def sleep
    @sleep = false
  end

  def walk
   if hungry?
     p "#@name can not walk, he is hungry"
   else
     if sleep?
       p "You #@name want sleep"
     else
       p "You walk with #@name"
       certain_time
       @hunger -= 1
     end
   end
  end

  private
  def hungry?
    @hunger <= 0
  end

  def sleep?
    @sleep
  end

  def walk?
    @want_to_walk
  end

  def certain_time
    food = rand(-2..2)
    @hunger += food
    if rand(-5..5) > 0
      @sleep = true
    end
  end

end

pet = Pet.new "Sharik"
pet.status
pet.feed
pet.status
pet.walk
pet.walk