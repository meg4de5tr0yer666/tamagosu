require 'rubygems'
require 'gosu'

class Pet
  def initialize
  $start = true
  $move = true
  $light = true
  $asleep = false
  $dead = false
  $feed = false
  $sing = false
  $play = false
  $cure = false
  $hug = false
  $cantdo = false
  $hugstate = 0
  $muchvariable = false
  $rpsls = 0
  $sleepstate = nil
  $id = nil
  $state = 0
  @image = Gosu::Image.new("vis/tamago.png")
  $respect = 0
  $response = false
  $dialogue = 11
 end
 
 def draw 
   @image.draw(10, 12, 1)
  end

end

class Doggo
def initialize
  @neutral, @neutral1, @happy, @happy1, @cozy, @cozy1, @cry, @cry1, @starving, @starving1, @worry, @worry1, @sick, @sick1, @blush, @blush1, @calm, @calm1, @sleepy, @sleepy1, @sing, @sing1, @sweat, @sweat1, @dead, @sleep, @sleep1, @sleep2, @afraid, @afraid1, @fallingasleep, @sicknolight, @sicksleep, @sicksleep1, @sicksleep2 = *Gosu::Image.load_tiles("vis/doggo.png", 75, 108)
  $id = 0
  $candy = 1
  $icecream = 0
  $fish = 0
  $watermelon = 1
  $tea = 1
  $meat = 0
  $milk = 0
  $fears = 0
 end

 def draw
   case $state
   when 0
   @neutral.draw(59, 22, 1) if $lifecounter % 100 < 50
   @neutral.draw(65, 22, 1) if $lifecounter % 100 >= 50
   when 1
   @happy.draw(59, 22, 1) if $lifecounter % 100 < 50
   @happy.draw(65, 22, 1) if $lifecounter % 100 >= 50
   when 2
   @cry.draw(62, 22, 1) if $lifecounter % 100 < 50
   @cry1.draw(62, 22, 1) if $lifecounter % 100 >= 50
   when 3
   @starving.draw(59, 22, 1) if $lifecounter % 100 < 50
   @starving.draw(65, 22, 1) if $lifecounter % 100 >= 50
   when 4
   @sleepy.draw(62, 22, 1) if $lifecounter % 100 < 50
   @sleepy1.draw(62, 22, 1) if $lifecounter % 100 >= 50
   when 5
    if !$sick
     @sleep.draw(62, 22, 1) if $lifecounter % 150 < 50
     @sleep1.draw(62, 22, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sleep2.draw(62, 22, 1) if $lifecounter % 150 >= 100
   elsif $sick
     @sicksleep.draw(62, 22, 1) if $lifecounter % 150 < 50
     @sicksleep1.draw(62, 22, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sicksleep2.draw(62, 22, 1) if $lifecounter % 150 >= 100
   end
   when 6
    if $light
     @sick.draw(59, 22, 1) if $lifecounter % 100 < 50
     @sick.draw(65, 22, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sicknolight.draw(59, 22, 1) if $lifecounter % 100 < 50
     @sicknolight.draw(65, 22, 1) if $lifecounter % 100 >= 50
    end
   when 7
   @afraid.draw(59, 22, 1) if $lifecounter % 100 < 50
   @afraid.draw(65, 22, 1) if $lifecounter % 100 >= 50
   when 8
   @fallingasleep.draw(62, 22, 1)
   when 9
   @sing.draw(62, 22, 1) if $lifecounter % 100 < 50
   @sing1.draw(62, 22, 1) if $lifecounter % 100 >= 50
   when 10
   @blush.draw(62, 22, 1) if $lifecounter % 50 < 25
   @blush1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 11
   @neutral.draw(62, 22, 1) if $lifecounter % 50 < 25
   @neutral1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 12
   @happy.draw(62, 22, 1) if $lifecounter % 50 < 25
   @happy1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 13
   @cozy.draw(62, 22, 1) if $lifecounter % 50 < 25
   @cozy1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 14
    if $light
     @worry.draw(62, 22, 1) if $lifecounter % 50 < 25
     @worry1.draw(62, 22, 1) if $lifecounter % 50 >= 25
    elsif !$light
     @afraid.draw(62, 22, 1) if $lifecounter % 50 < 25
     @afraid1.draw(62, 22, 1) if $lifecounter % 50 >= 25
    end
   when 15
   @neutral.draw(62, 22, 1)
   when 16
   @starving.draw(62, 22, 1) if $lifecounter % 50 < 25
   @starving1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 17
   @sick.draw(62, 22, 1) if $lifecounter % 50 < 25
   @sick1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 18
   @sweat.draw(62, 22, 1) if $lifecounter % 50 < 25
   @sweat1.draw(62, 22, 1) if $lifecounter % 50 >= 25
   when 19
   @happy.draw(62, 22, 1)
   when 20
   @cozy.draw(62, 22, 1)
   when 21
   @worry.draw(62, 22, 1) 
   end
 end
end

class Rabitto
def initialize
  @neutral, @neutral1, @blush, @cute, @cute1, @staring, @cozy, @happy, @love, @sad, @hmm, @cry, @cry1, @sick, @starving, @sing, @sing1, @dead, @sleepy, @sleepy1, @sleep, @sleep1, @sleep2, @sicksleep, @sicksleep1, @sicksleep2, @staringnolight, @fallingasleep, @sleepynolight, @sleepynolight1, @sicknolight = *Gosu::Image.load_tiles("vis/rabitto.png", 84, 126)
  $id = 1
  $candy = 1
  $icecream = 1
  $fish = 1
  $watermelon = 1
  $tea = 1
  $meat = 0
  $milk = 1
  $fears = 0
 end

 def draw
  case $state
   when 0
   @neutral.draw(53, 10, 1) if $lifecounter % 100 < 50
   @neutral.draw(59, 10, 1) if $lifecounter % 100 >= 50
   when 1
   @happy.draw(53, 10, 1) if $lifecounter % 100 < 50
   @happy.draw(59, 10, 1) if $lifecounter % 100 >= 50
   when 2
   @cry.draw(56, 10, 1) if $lifecounter % 100 < 50
   @cry1.draw(56, 10, 1) if $lifecounter % 100 >= 50
   when 3
   @starving.draw(53, 10, 1) if $lifecounter % 100 < 50
   @starving.draw(59, 10, 1) if $lifecounter % 100 >= 50
   when 4
   if $light
     @sleepy.draw(56, 10, 1) if $lifecounter % 100 < 50
     @sleepy1.draw(56, 10, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sleepynolight.draw(56, 10, 1) if $lifecounter % 100 < 50
     @sleepynolight1.draw(56, 10, 1) if $lifecounter % 100 >= 50
    end
   when 5
    if !$sick
     @sleep.draw(56, 10, 1) if $lifecounter % 150 < 50
     @sleep1.draw(56, 10, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sleep2.draw(56, 10, 1) if $lifecounter % 150 >= 100
   elsif $sick
     @sicksleep.draw(56, 10, 1) if $lifecounter % 150 < 50
     @sicksleep1.draw(56, 10, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sicksleep2.draw(56, 10, 1) if $lifecounter % 150 >= 100
   end
   when 6
    if $light
     @sick.draw(53, 10, 1) if $lifecounter % 100 < 50
     @sick.draw(59, 10, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sicknolight.draw(53, 10, 1) if $lifecounter % 100 < 50
     @sicknolight.draw(59, 10, 1) if $lifecounter % 100 >= 50
    end
   when 7
   	if $sleepy < 4 and !$move
   	  @staringnolight.draw(56, 10, 1)
    else
      @staringnolight.draw(53, 10, 1) if $lifecounter % 100 < 50
      @staringnolight.draw(59, 10, 1) if $lifecounter % 100 >= 50
    end
   when 8
   @fallingasleep.draw(56, 10, 1)
   when 9
   @sing.draw(56, 10, 1) if $lifecounter % 100 < 50
   @sing1.draw(56, 10, 1) if $lifecounter % 100 >= 50
   when 10, 18
   @blush.draw(56, 10, 1)
   when 11, 15
   @neutral1.draw(56, 10, 1)
   when 12
   @happy.draw(56, 10, 1)
   when 13
   @cozy.draw(56, 10, 1)
   when 14
   @sad.draw(56, 10, 1)
   when 16
   @starving.draw(56, 10, 1)
   when 17
   @sick.draw(56, 10, 1)
   when 19
   @hmm.draw(56, 10, 1)
   when 20
   @cute.draw(56, 10, 1) if $lifecounter % 20 < 10
   @cute1.draw(56, 10, 1) if $lifecounter % 20 >= 10
   when 21
   @staring.draw(56, 10, 1)
   end
  end
end

class Dear
def initialize
  @neutral, @neutral1, @happy, @happy1, @sweat, @sweat1, @cozy, @cozy1, @hearts, @cry, @cry1, @starving, @sick, @sad, @sad1, @sing, @sing1, @sleepy, @sleepy1, @dead, @sleep, @sleep1, @sleep2, @sicksleep, @sicksleep1, @sicksleep2, @sicknolight, @sadnolight, @fallingasleep = *Gosu::Image.load_tiles("vis/dear.png", 93, 135)
  $id = 2
  $candy = 1
  $icecream = 1
  $fish = 0
  $watermelon = 1
  $tea = 1
  $meat = 0
  $milk = 1
  $fears = 0
 end

 def draw
  case $state
   when 0
   @neutral.draw(51, 5, 1) if $lifecounter % 100 < 50
   @neutral.draw(57, 5, 1) if $lifecounter % 100 >= 50
   when 1
   @happy.draw(51, 5, 1) if $lifecounter % 100 < 50
   @happy.draw(57, 5, 1) if $lifecounter % 100 >= 50
   when 2
   @cry.draw(54, 5, 1) if $lifecounter % 100 < 50
   @cry1.draw(54, 5, 1) if $lifecounter % 100 >= 50
   when 3
   @starving.draw(51, 5, 1) if $lifecounter % 100 < 50
   @starving.draw(57, 5, 1) if $lifecounter % 100 >= 50
   when 4
   @sleepy.draw(54, 5, 1) if $lifecounter % 100 < 50
   @sleepy1.draw(54, 5, 1) if $lifecounter % 100 >= 50
   when 5
    if !$sick
     @sleep.draw(54, 5, 1) if $lifecounter % 150 < 50
     @sleep1.draw(54, 5, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sleep2.draw(54, 5, 1) if $lifecounter % 150 >= 100
   elsif $sick
     @sicksleep.draw(54, 5, 1) if $lifecounter % 150 < 50
     @sicksleep1.draw(54, 5, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sicksleep2.draw(54, 5, 1) if $lifecounter % 150 >= 100
   end
   when 6
    if $light
     @sick.draw(51, 5, 1) if $lifecounter % 100 < 50
     @sick.draw(57, 5, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sicknolight.draw(51, 5, 1) if $lifecounter % 100 < 50
     @sicknolight.draw(57, 5, 1) if $lifecounter % 100 >= 50
    end
   when 7
   @sadnolight.draw(51, 5, 1) if $lifecounter % 100 < 50
   @sadnolight.draw(57, 5, 1) if $lifecounter % 100 >= 50
   when 8
   @fallingasleep.draw(54, 5, 1)
   when 9
   @sing.draw(54, 5, 1) if $lifecounter % 100 < 50
   @sing1.draw(54, 5, 1) if $lifecounter % 100 >= 50
   when 10
   @hearts.draw(51, 5, 1) if $lifecounter % 100 < 50
   @hearts.draw(57, 5, 1) if $lifecounter % 100 >= 50
   when 11
   @neutral.draw(54, 5, 1) if $lifecounter % 50 < 25
   @neutral1.draw(54, 5, 1) if $lifecounter % 50 >= 25
   when 12
   @happy.draw(54, 5, 1) if $lifecounter % 50 < 25
   @happy1.draw(54, 5, 1) if $lifecounter % 50 >= 25
   when 13
   @cozy.draw(54, 5, 1) if $lifecounter % 50 < 25
   @cozy1.draw(54, 5, 1) if $lifecounter % 50 >= 25
   when 14
   @sad.draw(54, 5, 1) if $lifecounter % 50 < 25
   @sad1.draw(54, 5, 1) if $lifecounter % 50 >= 25
   when 15
   @neutral.draw(54, 5, 1)
   end
  end
end

class Catto
def initialize
  @neutral, @neutral1, @happy, @happy1, @cozy, @cozy1, @cry, @cry1, @starving, @angry, @angry1, @mad, @mad1, @sick, @sick1, @dead, @sleepy, @sleepy1, @sleep, @sleep1, @sleep2, @sicksleep, @sicksleep1, @sicksleep2, @fallingasleep, @fallingasleep1, @sleepynolight, @sleepynolight1, @neutralnolight, @happynolight, @sicknolight, @crynolight, @crynolight1, @starvingnolight = *Gosu::Image.load_tiles("vis/catto.png", 87, 120)
  $id = 3
  $candy = 0
  $icecream = 1
  $fish = 1
  $watermelon = 0
  $tea = 0
  $meat = 1
  $milk = 1
  $fears = 0
 end

 def draw
  case $state
  when 0
    if $light
     @neutral.draw(54, 12, 1) if $lifecounter % 100 < 50
     @neutral.draw(60, 12, 1) if $lifecounter % 100 > 49
    elsif !$light
     @neutralnolight.draw(54, 12, 1) if $lifecounter % 100 < 50
     @neutralnolight.draw(60, 12, 1) if $lifecounter % 100 > 49
    end
  when 1
    if $light
     @happy.draw(54, 12, 1) if $lifecounter % 100 < 50
     @happy.draw(60, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @happynolight.draw(54, 12, 1) if $lifecounter % 100 < 50
     @happynolight.draw(60, 12, 1) if $lifecounter % 100 >= 50
    end
  when 2
    if $light
     @cry.draw(57, 12, 1) if $lifecounter % 100 < 50
     @cry1.draw(57, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @crynolight.draw(57, 12, 1) if $lifecounter % 100 < 50
     @crynolight1.draw(57, 12, 1) if $lifecounter % 100 >= 50
    end
  when 3
    if $light
     @starving.draw(54, 12, 1) if $lifecounter % 100 < 50
     @starving.draw(60, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @starvingnolight.draw(54, 12, 1) if $lifecounter % 100 < 50
     @starvingnolight.draw(60, 12, 1) if $lifecounter % 100 >= 50
    end
  when 4
    if $light
     @sleepy.draw(57, 12, 1) if $lifecounter % 100 < 50
     @sleepy1.draw(57, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sleepynolight.draw(57, 12, 1) if $lifecounter % 100 < 50
     @sleepynolight1.draw(57, 12, 1) if $lifecounter % 100 >= 50
    end
  when 5
    if !$sick
     @sleep.draw(57, 12, 1) if $lifecounter % 150 < 50
     @sleep1.draw(57, 12, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sleep2.draw(57, 12, 1) if $lifecounter % 150 >= 100
  elsif $sick
     @sicksleep.draw(57, 12, 1) if $lifecounter % 150 < 50
     @sicksleep1.draw(57, 12, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sicksleep2.draw(57, 12, 1) if $lifecounter % 150 >= 100
  end
  when 6
    if $light
     @sick.draw(54, 12, 1) if $lifecounter % 100 < 50
     @sick.draw(60, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @sicknolight.draw(54, 12, 1) if $lifecounter % 100 < 50
     @sicknolight.draw(60, 12, 1) if $lifecounter % 100 >= 50
    end
  when 8
  @fallingasleep.draw(57, 12, 1)
  when 10
  @mad.draw(57, 12, 1) if $lifecounter % 30 < 15
  @mad1.draw(57, 12, 1) if $lifecounter % 30 >= 15
  when 11
  @neutral.draw(57, 12, 1) if $lifecounter % 50 < 25
  @neutral1.draw(57, 12, 1) if $lifecounter % 50 >= 25
  when 12
  @happy.draw(57, 12, 1) if $lifecounter % 50 < 25
  @happy1.draw(57, 12, 1) if $lifecounter % 50 >= 25
  when 13
  @cozy.draw(57, 12, 1) if $lifecounter % 50 < 25
  @cozy1.draw(57, 12, 1) if $lifecounter % 50 >= 25
  when 14
  @angry.draw(57, 12, 1) if $lifecounter % 50 < 25
  @angry1.draw(57, 12, 1) if $lifecounter % 50 >= 25
  when 15
  @neutral.draw(57, 12, 1)
  when 16
  @fallingasleep.draw(57, 12, 1) if $lifecounter % 50 < 25
  @fallingasleep1.draw(57, 12, 1) if $lifecounter % 50 >= 25
  when 17
  @sick.draw(57, 12, 1) if $lifecounter % 50 < 25
  @sick1.draw(57, 12, 1) if $lifecounter % 50 >= 25 
  when 18
  @happy.draw(57, 12, 1) if $lifecounter % 50 < 25
  @happy1.draw(57, 12, 1) if $lifecounter % 50 >= 25 
  when 19
  @mad.draw(57, 12, 1) if $lifecounter % 5 < 2
  @mad.draw(58, 12, 1) if $lifecounter % 5 >= 2
  when 20
  @fallingasleep.draw(57, 12, 1) if $lifecounter % 50 < 25
  @fallingasleep1.draw(57, 12, 1) if $lifecounter % 50 >= 25 
  end
   #@dead.draw(57, 12, 1) if $dead == true
  end
end

class Robotto
def initialize
  @neutral, @neutral1, @neutral2, @happy, @happy1, @happy2, @sad, @tetris, @tetris1, @tetris2, @tetris3, @tetris4, @lags, @lags1, @dead, @hugs, @sing, @sing1, @lagsnolight, @lagsnolight1, @sadnolight, @sadnolight1 = *Gosu::Image.load_tiles("vis/robotto.png", 69, 126)
  $id = 4
 end

 def draw
  case $state
  when 0
   @neutral2.draw(62, 12, 1) if $lifecounter % 100 < 50
   @neutral1.draw(68, 12, 1) if $lifecounter % 100 >= 50
   when 1
   @happy2.draw(62, 12, 1) if $lifecounter % 100 < 50
   @happy1.draw(68, 12, 1) if $lifecounter % 100 >= 50
   when 2
   @sad.draw(62, 12, 1) if $lifecounter % 100 < 50
   @sad.draw(68, 12, 1) if $lifecounter % 100 >= 50
   when 3
   if $light
     @sad.draw(62, 12, 1) if $lifecounter % 100 < 50
     @sad.draw(68, 12, 1) if $lifecounter % 100 >= 50
   elsif !$light
     @sadnolight.draw(62, 12, 1) if $lifecounter % 100 < 50
     @sadnolight.draw(68, 12, 1) if $lifecounter % 100 >= 50
   end
   when 5
   @tetris.draw(64, 12, 1) if $lifecounter % 250 < 50
   @tetris1.draw(64, 12, 1) if $lifecounter % 250 >= 50 and $lifecounter % 250 < 100
   @tetris2.draw(64, 12, 1) if $lifecounter % 250 >= 100 and $lifecounter % 250 < 150
   @tetris3.draw(64, 12, 1) if $lifecounter % 250 >= 150 and $lifecounter % 250 < 200
   @tetris4.draw(64, 12, 1) if $lifecounter % 250 >= 200
   when 6
    if $light
     @lags.draw(64, 12, 1) if $lifecounter % 100 < 50
     @lags1.draw(64, 12, 1) if $lifecounter % 100 >= 50
    elsif !$light
     @lagsnolight.draw(64, 12, 1) if $lifecounter % 100 < 50
     @lagsnolight1.draw(64, 12, 1) if $lifecounter % 100 >= 50
    end
   when 7
   @sadnolight.draw(65, 12, 1) if $lifecounter % 100 < 50
   @sadnolight1.draw(65, 12, 1) if $lifecounter % 100 >= 50
   when 9
   @sing.draw(65, 12, 1) if $lifecounter % 100 < 50
   @sing1.draw(65, 12, 1) if $lifecounter % 100 >= 50
   when 10
   @hugs.draw(62, 12, 1) if $lifecounter % 100 < 50
   @hugs.draw(68, 12, 1) if $lifecounter % 100 >= 50
   when 11, 15
   @neutral.draw(65, 12, 1)
   when 12, 13
   @happy.draw(65, 12, 1)
   when 14
   @sad.draw(65, 12, 1)
   end
  end
end

class Ghosto
def initialize
  @image = Gosu::Image.new("vis/ghosto.png")
  @neutral, @neutral1, @cry, @cry1, @cry2, @cry3, @sing, @sing1, @sleepy, @sleepy1, @sleep, @sleep1, @sleep2, @neutralnolight, @neutralnolight1, @crynolight, @crynolight1, @crynolight2, @crynolight3, @sleepynolight, @sleepynolight1 = *Gosu::Image.load_tiles("vis/ghosto.png", 63, 114)
  $id = 5
  $candy = 0
  $icecream = 0
  $fish = 0
  $watermelon = 0
  $tea = 0
  $meat = 0
  $milk = 0
  $fears = 1
 end

 def draw
   case $state
   when 0, 1, 3, 7
   if $light
     @neutral.draw(68, 20, 1) if $lifecounter % 100 < 50
     @neutral.draw(68, 26, 1) if $lifecounter % 100 >= 50
   elsif !$light
     @neutralnolight.draw(68, 20, 1) if $lifecounter % 100 < 50
     @neutralnolight1.draw(68, 26, 1) if $lifecounter % 100 >= 50
   end
   when 2
   if $light
     @cry.draw(68, 23, 1) if $lifecounter % 200 < 50
     @cry1.draw(68, 23, 1) if $lifecounter % 200 >= 50 and $lifecounter % 200 < 100
     @cry2.draw(68, 23, 1) if $lifecounter % 200 >= 100 and $lifecounter % 200 < 150
     @cry3.draw(68, 23, 1) if $lifecounter % 200 >= 150
   elsif !$light
     @crynolight.draw(68, 23, 1) if $lifecounter % 200 < 50
     @crynolight1.draw(68, 23, 1) if $lifecounter % 200 >= 50 and $lifecounter % 200 < 100
     @crynolight2.draw(68, 23, 1) if $lifecounter % 200 >= 100 and $lifecounter % 200 < 150
     @crynolight3.draw(68, 23, 1) if $lifecounter % 200 >= 150
   end
   when 4
   if $light
     @sleepy.draw(68, 23, 1) if $lifecounter % 100 < 50
     @sleepy1.draw(68, 23, 1) if $lifecounter % 100 >= 50
   elsif !$light
     @sleepynolight.draw(68, 23, 1) if $lifecounter % 100 < 50
     @sleepynolight1.draw(68, 23, 1) if $lifecounter % 100 >= 50
   end
   when 5
     @sleep.draw(68, 23, 1) if $lifecounter % 150 < 50
     @sleep1.draw(68, 23, 1) if $lifecounter % 150 >= 50 and $lifecounter % 150 < 100
     @sleep2.draw(68, 23, 1) if $lifecounter % 150 >= 100
   when 8
   @neutralnolight.draw(68, 23, 1)
   when 9
   @sing.draw(68, 23, 1) if $lifecounter % 100 < 50
   @sing1.draw(68, 23, 1) if $lifecounter % 100 >= 50
   when 11, 12, 13, 14
   @neutral.draw(68, 23, 1) if $lifecounter % 50 < 25
   @neutral1.draw(68, 23, 1) if $lifecounter % 50 >= 25
   when 15
   @neutral.draw(68, 23, 1)
   end
  end
end

class Foods
  def initialize
  @image = Gosu::Image.new("vis/foods.png")
  $food = nil
  $eat = false
  $magiccandyvar = nil
  $magiccandy = ["nutella", "potatoes", "pizza", "waffles", "evangelion", "bubblegum", "lemon", "mushrooms", "ginger", "mint", "warmth", "asteroids", "rainbows", "summer", "metal", "marshmallows", "pixels", "werewolf's butt", "mermaids", "tofu", "snow", "glitters", "cartoons", "space", "90's", "magic", "sunshine", "webpunk", "gummy bears", "fuzzy pickles", "pudding", "broccoli", "pumpkins", "rainy morning", "sugar", "oatmeal", "cornflakes", "jelly", "leaves", "helicopter", "bouillabaisse", "tangerines"]
  $fearsvar = nil
  $fearstaste = ["darkness", "witches", "me", "spiders", "boogeyman", "scary dolls", "snakes", "clowns", "school", "skeletons", "zombies", "vampires", "maths", "loneliness", "eyeballs", "monsters", "missed calls", "mold"] 
 end

 def draw 
   @image.draw(4, 30, 1)
  end
end

class Play
  def initialize
  @image = Gosu::Image.new("vis/play.png")
 end
  def draw 
  @image.draw(22, 52, 1)
  end
end

class Action
  attr_reader :cursor1

  def initialize
    @image = Gosu::Image.new("vis/cursor.png")
    @image1 = Gosu::Image.new("vis/cursor1.png")
    @image2 = Gosu::Image.new("vis/cursor2.png")
    @image3 = Gosu::Image.new("vis/cursor3.png")
    @beep = Gosu::Sample.new("vis/cursor.wav")
    @decide = Gosu::Sample.new("vis/decide.wav")
    @cannot = Gosu::Sample.new("vis/can't.wav")
    @tune0 = Gosu::Song.new("vis/nintendocore.wav")
    @cursor = 4
  end
  
  def draw
   case $light
   when true
   @image.draw(144, 16, 1) if @cursor == 0
   @image.draw(159, 16, 1) if @cursor == 1
   @image.draw(174, 16, 1) if @cursor == 2
   @image.draw(187, 16, 1) if @cursor == 3
   @image1.draw(26, 66, 1) if @cursor == 4
   @image1.draw(88, 66, 1) if @cursor == 5
   @image1.draw(152, 66, 1) if @cursor == 6
   @image1.draw(26, 132, 1) if @cursor == 7
   @image1.draw(88, 132, 1) if @cursor == 8
   @image1.draw(152, 132, 1) if @cursor == 9
   @image1.draw(20, 73, 1) if @cursor == 10
   @image1.draw(67, 73, 1) if @cursor == 11
   @image1.draw(115, 73, 1) if @cursor == 12
   @image1.draw(166, 73, 1) if @cursor == 13
   @image1.draw(20, 134, 1) if @cursor == 14
   @image1.draw(67, 134, 1) if @cursor == 15
   @image1.draw(115, 134, 1) if @cursor == 16
   @image1.draw(166, 134, 1) if @cursor == 17
   @image1.draw(32, 100, 1) if @cursor == 18
   @image1.draw(90, 100, 1) if @cursor == 19
   @image1.draw(152, 100, 1) if @cursor == 20
   @image3.draw(80, 48, 1) if @cursor == 21
   @image3.draw(90, 64, 1) if @cursor == 22
   @image3.draw(118, 80, 1) if @cursor == 23
   @image3.draw(98, 96, 1) if @cursor == 24
   @image3.draw(80, 112, 1) if @cursor == 25
   when false
   @image2.draw(144, 16, 1) if @cursor == 0
   @image2.draw(159, 16, 1) if @cursor == 1
   @image2.draw(174, 16, 1) if @cursor == 2
   @image2.draw(188, 16, 1) if @cursor == 3
   end
  end

  def update

  if Gosu.button_down? Gosu::KB_RIGHT and !@pressed and $move and !$sing
    case @cursor
    when 0, 1, 2 
    @cursor += 1
    when 3
    @cursor = 0
    when 4, 5, 6, 7, 8
    @cursor += 1
    when 9
    @cursor = 4
    when 10, 11, 12, 13, 14, 15, 16
    @cursor += 1
    when 17
    @cursor = 10
    when 18, 19
    @cursor += 1
    when 20
    @cursor = 18
    when 21, 22, 23, 24
    @cursor += 1
    when 25
    @cursor = 21
    end
    @beep.play
    @pressed = true
    elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
    end

    if Gosu.button_down? Gosu::KB_LEFT and !@pressed and $move and !$sing
    case @cursor
    when 1, 2, 3
    @cursor -= 1
    when 0
    @cursor = 3
    when 5, 6, 7, 8, 9
    @cursor -= 1
    when 4
    @cursor = 9
    when 11, 12, 13, 14, 15, 16, 17
    @cursor -= 1
    when 10
    @cursor = 17
    when 19, 20
    @cursor -= 1
    when 18
    @cursor = 20
    when 22, 23, 24, 25
    @cursor -= 1
    when 21
    @cursor = 25
    end
    @beep.play
    @pressed = true
    elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
    end

  if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor > 3 and $start
   case @cursor
    when 4
    $player = Doggo.new
    when 5
    $player = Rabitto.new
    when 6
    $player = Dear.new
    when 7
    $player = Catto.new
    when 8
    $player = Robotto.new
    when 9
    $player = Ghosto.new
   end
    @decide.play
    @pressed = true
    $start = false
    @cursor = 0
    elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
    end

  if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 0 and !$feed and $move
   if !$light or $asleep
    @cannot.play
   elsif $light and !$asleep and $sick
    $cantdo = true
    $wait = $lifecounter + 120
    if $id != 4
      $state = 17
      $talk = "I can't..."
    end
    $talk = "Dnt..eed..ood..." if $id == 4
    $move = false
   elsif $light and !$asleep and !$sick
    if $id == 4
      $wait = $lifecounter + 120
      $cantdo = true
      $talk = "I don't eat food, beep."
      $move = false
    else
      $sleepdeprivation = false
      $foods = Foods.new
      $feed = true
      @cursor = 10
      @decide.play
    end
   end
   $sleepstate = nil if $light and $id == 3
   @pressed = true
  elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
    end

  if Gosu.button_down? Gosu::KB_UP and !@pressed and @cursor > 9 and $move
    case @cursor
    when 10, 11, 12, 13, 14, 15, 16, 17
    $feed = false
    @cursor = 0
    when 18, 19, 20, 21, 22, 23, 24, 25
    $rpsls = 0
    $play = false
    @cursor = 1
    end
    @beep.play
    @pressed = true
  elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
  end

  if Gosu.button_down? Gosu::KB_UP and !@pressed and $sing
    $sing = false
    @tune0.stop
    @beep.play
    @pressed = true
  elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
  end

 def cannoteat
  case $id
  when 0
    $talk = "I can't eat that much..."
  when 1
    $talk = "Wait, I need time to digest it"
    $talk1 = "all."
  when 2
    $talk = "Thank you, but I'm not hungry"
    $talk1 = "anymore..."
  when 3
    $talk = "I'm gonna explode!!!"
  when 5
    $talk = "I'm full of fears."
  end
 end

  if Gosu.button_down? Gosu::KB_DOWN and !@pressed and $feed and $move
    $eat = true
    $move = false
    $wait = $lifecounter + 120
    case @cursor
    when 10
    $food = $candy
    if $hungry < 0 and $food > 0
      cannoteat
    elsif $id == 3
      $talk = "But i wanted fish..."
    elsif $id != 3 and $id != 5
      $magiccandyvar = rand(0..41)
      $talk = "Tastes like #{$magiccandy[$magiccandyvar]}."
    end
    when 11
    $food = $icecream
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $talk = "I don't eat it, sorry..."
     when 1
     $talk = "Cool!"
     when 2
     $talk = "Thanks a lot!"
     when 3
     $talk = "Purrrecious ice-cream~"
     end
     $sad -= 1 if $id == 1
    end
    when 12 
    $food = $fish
    if $hungry < 0 and $food > 0 and $id != 3
      cannoteat
    else
     case $id
     when 0
     $wait = $lifecounter + 200
     $talk = "I mind being eaten."
     $talk1 = "So I can't eat anyone..."
     $talk2 = "That sounds fair."
     when 1
     $talk = "That was weird."
     when 2
     $talk = "Sorry, I don't eat fish."
     when 3
     $talk = "Supurrrreme fish! Best!"
     end
     $sad -= 1 if $id == 3
    end
    when 13
    $food = $watermelon
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $wait = $lifecounter + 200
     $talk = "It tastes great!"
     when 1
     $talk = "I really like this"
     $talk1 = "substance."
     when 2
     $talk = "Watery and lovely!"
     when 3
     $talk = "Ewww."
     end
     $sad -= 1 if $id == 0
    end
    when 14
    $food = $tea
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $talk = "Aww, thank you!"
     $talk1 = "It's so cozy!"
     when 1
     $talk = "Yay, liquids!"
     when 2
     $talk = "Too good for this world!"
     $talk1 = "Too pure!"
     when 3
     $talk = "Meh."
     end
     $sad -= 1 if $id == 2
    end
    when 15
    $food = $meat
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $wait = $lifecounter + 200
     $talk = "I mind being eaten."
     $talk1 = "So I can't eat anyone..."
     $talk2 = "That sounds fair."
     when 1
     $wait = $lifecounter + 200
     $talk = "Please, don't get me wrong."
     $talk1 = "But i doubt about its"
     $talk2 = "origin."
     when 2
     $talk = "Eeh..."
     when 3
     $talk = "It's average."
     end
    end
    when 16
    $food = $milk
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $talk = "Mmmaybe later...?"
     when 1
     $wait = $lifecounter + 200
     $talk = "Is it the product Earthligs"
     $talk1 = "can't live without?"
     when 2
     $talk = "Thanks much!"
     when 3
     $talk = "Purrrfect!"
     end
    end
    when 17
    $food = $fears
    if $hungry < 0 and $food > 0
      cannoteat
    else
     case $id
     when 0
     $talk = "Aghhh, spooky....."
     when 1
     $talk = "Is it edible?"
     when 2
     $talk = "Is it... alive?"
     when 3
     $talk = "I ain't eating that!"
     when 5
     $fearsvar = rand(0..17)
     $talk = "Tastes like #{$fearstaste[$fearsvar]}."
     end
    end
    end
    if @cursor != 17 and $id == 5
     $talk = "I can't eat food..."
     $talk1 = "It falls through me..."
    end
    $hungry -= $food
    $hungry = 4 if $hungry > 4 and $food > 0
    @decide.play
    @pressed = true
   elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
   @pressed = nil
  end

  if $eat and $lifecounter == $wait
    $eat = false
    $talk1 = nil
    $talk2 = nil
    $move = true
  end

 if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 2 and $move
   if !$light or $asleep
    @cannot.play
   elsif $light and !$asleep
    $cure = true
    $move = false
    $wait = $lifecounter + 120
    if $id == 5
     $talk = "But I'm already... dead..."
     $state = 11
    elsif $id == 4
     $talk = "Robots need no medicine." if !$sick
     $talk = "That won't help." if $sick
     $talk1 = "Press R button to reboot." if $sick
    elsif $sick
     if $sad < 5 and $hungry < 5
      $talk = "It's bitter..."
      $state = 14
     elsif $sad >= 5 and $hungry < 5
      $talk = "*sob* *sob*"
      $state = 2
     elsif $hungry >= 5
      $talk = "..."
      $state = 3 if $sleepy < 5
      $state = 4 if $sleepy >= 5
     end
     $sad += 1
     $sick = false
    elsif $sleepdeprivation
     $talk = "..."
    else
     $talk = "I need a chill pill..." if $state == 2 and $id == 1
     $talk = "*sob* *sob*" if $state == 2 and $id != 1
     if $state == 0 or $state == 1
      $talk = "But I'm alright..."
      if $state == 1
        $state = 18
      else $state = 14
      end
     elsif $state == 4 or $state == 8
      $talk = "I'm fine, really..."
      $state = 14 if $id == 0 or $id == 1
      $state = 16 if $id == 3
     elsif $state == 3
      $talk = "I'd rather get something"
      $talk1 = "to eat..."
      $state = 16 if $id == 0 or $id == 1
      $state = 14 if $id == 3
     end
     @decide.play
    end
   end
   $sleepstate = nil if $light and $id == 3
   @pressed = true
  elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
  end

 if Gosu.button_down? Gosu::KB_R and !@pressed1 and $id == 4 and $move and !$play and $rpsls == 0
  if !$sick or !$light
   @cannot.play
  elsif $sick 
   @decide.play
   $cure = true
   $move = false
   $sick = false
   $wait = $lifecounter + 120
   $talk = "Now functioning! Thank you!"
  end
   @pressed1 = true
 elsif not Gosu.button_down? Gosu::KB_R
    @pressed1 = nil
 end

 if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 3 and $move
  if $asleep and $id != 4 and !$sick
    $sleepdeprivation = true
    $deprivationwait = $lifecounter + 500
  end
  if $light
  $light = false
  $robotplay = false if $id == 4
  if $id == 5 and $sleepy == 5
    $wait = $lifecounter + 300
  elsif $id == 4 and !$sick
    $wait = $lifecounter + 220
  elsif $id == 2 and !$sick
    $wait = $lifecounter + 220
  else $wait = $lifecounter + 150
  end
  $sleepstate = 1
  $asleep = false
  elsif !$light
  $light = true
  $sleepstate = nil
  $asleep = false
  end
  @decide.play
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
    @pressed = nil
  end

 if $sleepdeprivation == true
  $state = 4
 end

 if $lifecounter == $deprivationwait
  $sleepdeprivation = false
 end

 if $lifecounter == $wait and $light and !$dream and $rpsls == 0
 $cure = false 
 $cantdo = false
 $move = true
 end

 if !$light
   if !$sick and $sleepstate == 1 and !$muchvariable
    $sleepdeprivation = false if $id != 3
    $muchvariable = true
    $move = false
    if $id == 4
     $talk = "Please, don't turn the light"
     $talk1 = "off. I'm solar-powered."
     $state = 7
    elsif $id == 3 and $sad < 5 and $sleepy < 5 and $hungry < 5 and !$sleepdeprivation
     $talk = "I like darkness."
    elsif $id == 3 and $sleepy == 5 and !$sleepdeprivation
     $talk = "I can sleep only in the" 
     $talk1 = "daytime..."
    elsif $id == 3
     $talk = "..."
    end
    if $id == 0
       $state = 14
       $talk = "I'm afraid of darkness..."
    elsif $id == 2
       $state = 7
       $talk = "I'm afraid of darkness..."
       $talk1 = "Please, stay with me for"
       $talk2 = "a while..."
    elsif $id == 1 or $id == 5
      if $sleepy < 5
       $state = 7
       $talk = "I don't feel like sleeping." if $sleepy < 4
       $talk = "I'm slightly tired." if $sleepy == 4
      elsif $sleepy == 5
       $state = 4
       $talk = "..." if $id == 1
       if $id == 5
         $talk = "I sleep with my eyes"
         $talk1 = "opened. I hope it doesn't"
         $talk2 = "give you the creeps."
       end
      end
    end
   elsif $sick and $sleepstate == 1
     $move = false
     $talk = "..." if $id != 4
     $talk = "Plse dt trn..lght ofzz..." if $id == 4
    end
  end

if $sleepstate == 1 and $lifecounter == $wait and !$light
  $state = 7 if $id == 0 or $id == 2
  $talk = nil
  $talk1 = nil
  $talk2 = nil
  $move = true
  $muchvariable = false
  $sleepstate = nil if $id == 3 or $id == 4
  if $id != 3
  $wait = $lifecounter + 250 if !$sick
  $wait = $lifecounter + 100 if $sick
  $sleepstate = 2
  end
end
if $sleepstate == 2 and $lifecounter == $wait and !$light
  $sleepstate = 3
end
if $sleepstate == 3 and !$light and $sleepy > 3
  $wait = $lifecounter + 250
  $dream = false
  $state = 8 if !$sick
  $sleepstate = 4
end
if $sleepstate == 4 and $lifecounter == $wait and !$light
  $asleep = true
end
if $sleepstate == 5 and !$light
  $move = false
  if !$sick
    $state = 14 if $id == 0 or $id == 2
    $talk = "Please, turn on the light."
  end
  $talk = "..." if $sick
  $wait = $lifecounter + 250
  $sleepstate = 6
end
if $sleepstate == 6 and $lifecounter == $wait and !$light
  $state = 7 if $id == 0 or $id == 2
  $move = true
  $talk = nil
  $wait = $lifecounter + 150
  $sleepstate = 2
end

if $id == 3 and $light and $sleepy > 4 and !$asleep and !$feed and !$play and !$sing and !$hug and !$dream and !$cure and $move and $sleepstate == nil and $rpsls == 0
  $sleepstate = 7
  $catsleep = $lifecounter + 150
end
if $id == 4 and $light and $sad > 4 and !$asleep and !$feed and !$play and !$sing and !$hug and !$sick and !$cure and $move and $sleepstate == nil and $rpsls == 0
  $robotplay = true
  $sleepstate = 7
  $catsleep = $lifecounter + 150
end
if $sleepstate == 7 and $lifecounter == $catsleep
  $catsleep = $lifecounter + 80
  $sleepdeprivation = false
  $state = 8 if !$sick and $id != 4
  $sleepstate = 8
end
if $sleepstate == 8 and $lifecounter == $catsleep
  $asleep = true
  $sleepstate = nil
end

 if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 1 and $move and !$sing
  if !$light or $asleep
   @cannot.play
  elsif $light and !$asleep and $sick
   $cantdo = true
   $wait = $lifecounter + 120
   if $id != 4
     $state = 17
     $talk = "I feel bad..."
   end
   $talk = "Zzzrry..cnnt..ow..." if $id == 4
   $move = false
  elsif $light and !$asleep and !$sick
   $sleepdeprivation = false
   $playing = Play.new
   $play = true
   @cursor = 18
   @decide.play
  end
  $sleepstate = nil if $light and $id == 3
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
  @pressed = nil
  end

 if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 18 and $move
  if $id != 3
  $play = false
  $sing = true
  @cursor = 1
  $state = 9
  @tune0.play
  $wait = $lifecounter + 1050
  elsif $id == 3
  $cantdo = true
  @decide.play
  $wait = $lifecounter + 120
  $talk = "I hate singing!"
  $move = false
  end
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
  @pressed = nil
  end

 if $sing == true 
 	if $lifecounter == $wait
  	 $sing = false
  	 @tune0.stop
 	else $sad -= 1 if $lifecounter % 400 == 399
 	end
 end

if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 19 and $move
  if $id == 0 or $id == 1 or $id == 3 or $id == 4
    $play = false
    $rpsls = 1
    @cursor = 21
    $minigame = RPSLS.new
  elsif $id == 2 or $id == 5
    $move = false
    $cantdo = true
    $wait = $lifecounter + 120
    $talk = "I can't play, sorry." if $id == 2
    $talk = "I have no hands..." if $id == 5
    $sad += 1 if $id == 5
  end
  @decide.play
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
  @pressed = nil
  end

  if Gosu.button_down? Gosu::KB_DOWN and !@pressed and $rpsls == 1 and $move
    case @cursor
    when 21
    $choicevar = 0
    when 22
    $choicevar = 1
    when 23
    $choicevar = 2
    when 24
    $choicevar = 3
    when 25 
    $choicevar = 4
    end
  $move = false
  @decide.play
  @cursor = 1
  $rpsls = 2
  $wait = $lifecounter + 15
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
  @pressed = nil
  end

 if $rpsls == 2 and $lifecounter == $wait
  $rpsls = 3
  $wait = $lifecounter + 15
 end
 if $rpsls == 3 and $lifecounter == $wait
  $rpsls = 4
  $wait = $lifecounter + 15
 end
 if $rpsls == 4 and $lifecounter == $wait
  $rpsls = 5
  $wait = $lifecounter + 15
 end
 if $rpsls == 5 and $lifecounter == $wait
  $rpsls = 6
  $wait = $lifecounter + 15
 end
if $rpsls == 6 and $lifecounter == $wait
  $rpsls = 7
  $wait = $lifecounter + 15
 end
 if $rpsls == 7 and $lifecounter == $wait
  $rpsls = 8
  $choicevar1 = rand(0..4) if $id != 4
  if $id == 4
    $choicevar1 = rand(0..1)
    case $choicevar
    when 0
    $choicevar1 = 2 if $choicevar1 == 0
    $choicevar1 = 3 if $choicevar1 == 1
    when 1
    $choicevar1 = 4 if $choicevar1 == 1
    when 2
    $choicevar1 = 3 if $choicevar1 == 0
    when 3
    $choicevar1 = 4 if $choicevar1 == 0
    when 4
    $choicevar1 = 2 if $choicevar1 == 1
    end
  end
  $wait = $lifecounter + 80
 end
 if $rpsls == 8 and $lifecounter == $wait
  $rpsls = 9
  $wait = $lifecounter + 120
 end
 if $rpsls == 9 and $lifecounter == $wait
  $move = true
  $sad -= 1 if $id != 3
  if $id == 3
    $sad -= 1 if $game == 2
    $sad += 1 if $game == 1
  end
  $rpsls = 0
 end

 if Gosu.button_down? Gosu::KB_DOWN and !@pressed and @cursor == 20 and $move
  $move = false
  @decide.play
  if $hugstate < 2 and $id != 5
    $play = false
    @cursor = 1
    $state = 10 if $hugstate == 0
    $state = 1 if $hugstate == 1
    $wait = $lifecounter + 180
    $hug = true
  end
  case $id
  when 0
  $talk = "Aww, it's so nice."
  when 1
    if $hugstate == 0
      $talk = "Please, don't do that. Our"
      $talk1 = "race copulates like that."
      $hugstate = 2
    elsif $hugstate == 2
      $cantdo = true
      $wait = $lifecounter + 120
      $talk = "No."
    end
  when 2
    if $hugstate == 0
      $talk = "Senpai noticed me..."
      $hugstate = 1
    elsif $hugstate == 1
      $talk = "Oh, feelings ~"
    end
  when 3
  $talk = "Hugs are for losers!"
  when 4
  $talk = "Please, don't press my"
  $talk1 = "buttons..."
  when 5
  $cantdo = true
  $wait = $lifecounter + 180
  $talk = "You try to hug a ghost."
  $talk1 = "But just go through him."
  end
  if $id != 1 and $id != 5
    $sad -= 1
  elsif $id == 5
    $sad += 1
  end
  @pressed = true
 elsif not Gosu.button_down? Gosu::KB_RIGHT and not Gosu.button_down? Gosu::KB_DOWN and not Gosu.button_down? Gosu::KB_LEFT
  @pressed = nil
  end

  if $hug and $lifecounter == $wait
    $move = true
    $talk = nil
    $talk1 = nil
    $hug = false
  end

 if !$eat
  $talk = "Magic candy" if @cursor == 10
  $talk = "Ice-cream" if @cursor == 11
  $talk = "Fried fish" if @cursor == 12
  $talk = "Vegan watermelon" if @cursor == 13
  $talk = "Cinnamon tea" if @cursor == 14
  $talk = "Alien meat" if @cursor == 15
  $talk = "Cow milk" if @cursor == 16
  $talk = "Childhood fears" if @cursor == 17
 end
 if !$cantdo
  $talk = "Sing along" if @cursor == 18
  $talk = "Rockpaperscissorslizardspok" if @cursor == 19
  $talk = "Give a hug" if @cursor == 20
  $talk1 = nil if @cursor == 20
  end
 end
end

class RPSLS
 def initialize
  @image = Gosu::Image.new("vis/rpsls.png")
  @image1 = Gosu::Image.new("vis/rpsls1.png")
  @hands10, @hands11, @hands12, @hands13, @hands14 = *Gosu::Image.load_tiles("vis/hands.png", 68, 38)
  @hands20, @hands21, @hands22, @hands23, @hands24 = *Gosu::Image.load_tiles("vis/hands1.png", 56, 28)
  @hands30, @hands31, @hands32, @hands33, @hands34 = *Gosu::Image.load_tiles("vis/hands2.png", 54, 22)
  $choicevar = nil
  $choicevar1 = nil
  $choice = ["rock", "paper", "scissors", "lizard", "spok"]
  $game = nil
 end

 def draw
  @image.draw(18, 31, 1)
  @image1.draw(38, 49, 1) if $rpsls == 1
  @hands10.draw(30, 72, 1) if $rpsls == 2 or $rpsls == 4 or $rpsls == 6
  @hands10.draw(30, 62, 1) if $rpsls == 3 or $rpsls == 5 or $rpsls == 7
  if $id != 4
    @hands20.draw(114, 78, 1) if $rpsls == 2 or $rpsls == 4 or $rpsls == 6
    @hands20.draw(114, 68, 1) if $rpsls == 3 or $rpsls == 5 or $rpsls == 7
  elsif $id == 4
    @hands30.draw(116, 86, 1) if $rpsls == 2 or $rpsls == 4 or $rpsls == 6
    @hands30.draw(116, 76, 1) if $rpsls == 3 or $rpsls == 5 or $rpsls == 7
  end
  
  if $rpsls == 8 or $rpsls == 9
    case $choicevar
    when 0
    @hands10.draw(30, 66, 1)
    when 1
    @hands11.draw(30, 66, 1)
    when 2
    @hands12.draw(30, 66, 1)
    when 3
    @hands13.draw(30, 70, 1)
    when 4
    @hands14.draw(30, 68, 1)
    end
    case $choicevar1
    when 0
    @hands20.draw(114, 72, 1) if $id != 4
    @hands30.draw(116, 80, 1) if $id == 4
    when 1
    @hands21.draw(114, 72, 1) if $id != 4
    @hands31.draw(116, 80, 1) if $id == 4
    when 2
    @hands22.draw(114, 72, 1) if $id != 4
    @hands32.draw(116, 80, 1) if $id == 4
    when 3
    @hands23.draw(114, 72, 1) if $id != 4
    @hands33.draw(116, 76, 1) if $id == 4
    when 4
    @hands24.draw(114, 72, 1) if $id != 4
    @hands34.draw(116, 80, 1) if $id == 4
    end
  end

  if $rpsls == 9 and $id != 4
    if $choicevar == 0
      case $choicevar1
      when 0
      $game = 0
      when 1
      $game = 2
      when 2
      $game = 1
      when 3
      $game = 1
      when 4
      $game = 2
      end
    elsif $choicevar == 1
      case $choicevar1
      when 0
      $game = 1
      when 1
      $game = 0
      when 2
      $game = 2
      when 3
      $game = 2
      when 4
      $game = 1
      end
    elsif $choicevar == 2
      case $choicevar1
      when 0
      $game = 2
      when 1
      $game = 1
      when 2
      $game = 0
      when 3
      $game = 1
      when 4
      $game = 2
      end
    elsif $choicevar == 3
      case $choicevar1
      when 0
      $game = 2
      when 1
      $game = 1
      when 2
      $game = 2
      when 3
      $game = 0
      when 4
      $game = 1
      end
    elsif $choicevar == 4
      case $choicevar1
      when 0
      $game = 1
      when 1
      $game = 2
      when 2
      $game = 1
      when 3
      $game = 2
      when 4
      $game = 0
      end
    end
  elsif $rpsls == 9 and $id == 4
    $game = 1
  end
 end
end

class Talks
 def initialize
   @var = 0
   $talk = nil
   $talk1 = nil
   $talk2 = nil
   $talk3 = nil
   $wait = nil
   @opponent = nil
  end

 def update
   @var += 1 if $lifecounter % 100 == 1
   $talk = "Choose your destiny!" if $start
   $talk = "#{@var}" if @var > 0 and !$feed and !$cure and !$cantdo and $light and !$play and !$hug and !$dream and $rpsls == 0 and !$conversation
   $talk1 = nil if !$cure and !$feed and !$hug and !$dream and $rpsls == 0 and $light and !$play and !$conversation
   $talk2 = nil if !$feed and !$dream and $rpsls == 0 and $light and !$conversation
   $talk3 = nil if !$dream and $rpsls == 0 and !$conversation

   $talk = "Make a choice!" if $rpsls == 1
   $talk1 = "You choose #{$choice[$choicevar]}." if $rpsls == 2
   case $id
   when 0
   @opponent = "Doggo"
   when 1
   @opponent = "Waifu"
   when 3
   @opponent = "Ninja"
   when 4
   @opponent = "Zingo"
   end
   $talk2 = "#{@opponent} chooses #{$choice[$choicevar1]}." if $rpsls == 8
   if $rpsls == 9
     $talk3 = "Tie!" if $game == 0
     $talk3 = "You win!" if $game == 1
     $talk3 = "#{@opponent} wins!" if $game == 2
    end

   if Gosu.button_down? Gosu::KB_T and !@pressed2 and $move and !$play and $rpsls == 0 and !$feed
     $conversation = true
     $d_number = 0
     @pressed2 = true
   elsif not Gosu.button_down? Gosu::KB_T
      @pressed2 = nil
   end

   if $conversation == true
    conversation
   end

   if $lifecounter == $endoftalk
    $d_number = 0
    $dialogue += 1 unless $state > 1 and $state < 7
    $move = true
    $conversation = false
   end

    def conversation
    	$move = false
      if $d_number == 0 and $state > 1 and $state < 7
      	if $state == 3
      		$endoftalk = $lifecounter + 300
          $state = 16
      		$talk = "I'm starving..."
      		$talk1 = "Please, give me something"
          $talk2 = "to eat."
      	elsif $state == 4
      		$endoftalk = $lifecounter + 300
          $state = 14
      		$talk = "I'm tired..."
      	elsif $state == 2
  			  $endoftalk = $lifecounter + 300
      		$talk = "*sob* *sob*"
        elsif $state == 6
          $endoftalk = $lifecounter + 300
          $state = 17
          $talk = "I feel bad..."
        end
       $d_number = 1 
    	else
    		case $id
    		when 0
    			case $dialogue
    			when 0
            if $d_number == 0
      				$wait = $lifecounter + 300
              $state = 11
      				$talk = "Hello! My name is Dogrose."
      				$talk1 = "But I’m sure I’m a dog if you"
      				$talk2 = "wonder."
              $d_number = 1
            end

    				if $d_number == 1 and $lifecounter == $wait
    					$wait = $lifecounter + 300
              $state = 11
	    				$talk = "You don’t have to be always"
	    				$talk1 = "near. I bet you are very busy."
	    				$talk2 = nil
	    				$d_number = 2
	    			end

	    			if $d_number == 2 and $lifecounter == $wait
    					$endoftalk = $lifecounter + 300
              $state = 13
	    				$talk = "Please just do your thing."
	    				$talk1 = "I will say if I really need"
	    				$talk2 = "something."
	    			end
	    		when 1
            if $d_number == 0
              $wait = $lifecounter + 360
              $state = 18
              $talk = "By the way… I didn’t mean I"
              $talk1 = "don’t want you to be near…"
              $talk2 = "Sorry, I’m not a good talker…"
              $talk3 = "I’m shy…"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 12
              $talk = "Anyways, thank you for your"
              $talk1 = "company. I really appreciate"
              $talk2 = "you being around."
              $talk3 = nil
            end
          when 2
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 13
              $talk = "One day a plant grew on"
              $talk1 = "my head."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 18
              $talk = "Why? I don’t know."
              $talk1 = "No, it’s not a disease."
              $talk2 = "I’m totally ok with it…"
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 18
              $talk = "I hadn’t got a name before it"
              $talk1 = "appeared. Everyone just called"
              $talk2 = "me ‘a dog’."
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 11
              $talk = "Every dog gets a name according"
              $talk1 = "to their qualities."
              $talk2 = nil
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 13
              $talk = "I don’t mind being a plant."
              $talk1 = "I like plants."
              $talk2 = nil
            end
          when 3
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 12
              $talk = "By the way, thank you so much"
              $talk1 = "for being a listener."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 14
              $talk = "I really wish I could hear"
              $talk1 = "you too…"
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "If I ever asked you to be my"
              $talk1 = "friend, would you say ‘yes’…"
              $talk2 = "or ‘bubbles’… or ‘ladybugs’"
              $talk3 = "at least…"
              $sad += 1
            end
          when 4
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 12
              $talk = "Wait, I have an idea!"
              $talk1 = "You can actually talk by"
              $talk2 = "pressing the keys!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 11
              $talk = "What do you think?"
              $talk1 = "I could ask you something,"
              $talk2 = "and you would press 'Y' or"
              $talk3 = "'N' buttons in response."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 14
              $talk = "I understand that it's far from"
              $talk1 = "real talks. But still it would"
              $talk2 = "be so nice..."
              $talk3 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 12
              $talk = "Let's try it out!"
              $talk1 = "Would you be my friend?"
              $talk2 = "Press 'Y' for 'bubbles'."
              $talk3 = "Press 'N' for 'ladybugs'."
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 19
              $d_number = 5
            end

            if $d_number == 4 or $d_number == 5
              if Gosu.button_down? Gosu::KB_Y or Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 300
                $state = 12
                $talk = "Awww, it really works!"
                $talk1 = "Thank you so much!"
                $talk2 = nil
                $talk3 = nil
                $respect += 1
                $sad -= 1
                $response = true
                $d_number = 6
              end
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 14
              $talk = "Well, it's ok, you don't have"
              $talk1 = "to answer..."
              $talk2 = nil
              $talk3 = nil
              $sad += 1
              $d_number = 6
            end
          when 5
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 13
              $talk = "There's one more thing I wanted"
              $talk1 = "to ask you much. Do you like"
              $talk2 = "fairytales?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 15
              $d_number = 2
            end

            if $d_number == 1 or $d_number == 2
              if Gosu.button_down? Gosu::KB_Y
                $wait = $lifecounter + 200
                $state = 12
                $talk = "Really? I'm so glad!"
                $talk1 = nil
                $talk2 = nil
                $respect += 1
                $sad -= 1
                $response = true
                $d_number = 3
              end
              if Gosu.button_down? Gosu::KB_N
                $wait = $lifecounter + 200
                $state = 18
                $talk = "Oh, alright..."
                $talk1 = nil
                $talk2 = nil
                $respect -= 1
                $sad += 1
                $response = true
                $d_number = 3
              end
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 15
              $talk = "..."
              $talk1 = nil
              $talk2 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "I actually love fairytales with"
              $talk1 = "all my heart. I read a lot"
              $talk2 = "of them when I was a kid."
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $endoftalk = $lifecounter + 280
              $state = 12
              $talk = "Wait, I am a kid..."
              $talk1 = "And I love fairytales."
              $talk2 = nil
            end
          when 6
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 12
              $talk = "I just thought..."
              $talk1 = "I should tell you a fairytale!"
              $talk2 = "Here..."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "'Once upon a time there lived"
              $talk1 = "an old owl...'"
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 120
              $state = 20
              $talk = "..."
              $talk1 = nil
              $talk2 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 14
              $talk = "Wait, I've changed my mind!"
              $talk1 = "It's actually not that good."
              $talk2 = "Nevermind..."
            end
          when 7
            if $d_number == 0
              $wait = $lifecounter + 280
              $state = 13
              $talk = "By the way, fairytales taught"
              $talk1 = "me lots of valuable things."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 280
              $state = 13
              $talk = "To smile to scary creatures."
              $talk1 = "Or to never be greedy."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 280
              $state = 11
              $talk = "Or that it's a bad idea to grow"
              $talk1 = "magic beans at home."
            end
          when 8
            if $d_number == 0
              $wait = $lifecounter + 280
              $state = 14
              $talk = "I have a big secret to share."
              $talk1 = "Please don't tell anyone."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 280
              $state = 14
              $talk = "I believe in monsters! One of"
              $talk1 = "them surely lives under my bed!"
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 14
              $talk = "I've heard them mumbling..."
              $talk1 = "and scratching... and..."
              $talk2 = "Nobody believes me..."
              $talk3 = "Do you?"
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 21
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 14
              $talk = "I really hope you do..."
              $talk1 = nil
              $talk2 = nil
              $talk3 = nil
            end

            if $d_number == 3 or $d_number == 4
              if Gosu.button_down? Gosu::KB_Y
                $wait = $lifecounter + 400
                $state = 12
                $talk = "Wow, you really do!?"
                $talk1 = "Do you think they are evil?"
                $talk2 = nil
                $talk3 = nil
                $respect += 1
                $sad -= 1
                $response = true
                $d_number = 5
              end
              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 14
                $talk = "Oh no, not you too..."
                $talk1 = nil
                $talk2 = nil
                $talk3 = nil
                $sad += 1
                $respect -= 1
                $response = true
                $d_number = 6
              end
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 13
              $talk = "I'm not sure if they are, "
              $talk1 = "but if I ever see them, "
              $talk2 = "I'm gonna smile to them."
            end
          when 9
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 14
              $talk = "I worry much lest I  trouble you."
              $talk1 = "Having a pet  is such a big"
              $talk2 = "responsibility."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 280
              $state = 14
              $talk = "Being responsible is  very"
              $talk1 = "uncomfortable."
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 14
              $talk = "I know it because I was  once"
              $talk1 = "responsible for a baby slug."
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "He started yelling and  I didn't"
              $talk1 = "know what to do.  I hope it"
              $talk2 = "never happens  again."
            end
          when 10
            if $d_number == 0
              $endoftalk = $lifecounter + 400
              $state = 18
              $talk = "Don't worry, I'm not  the shouting"
              $talk1 = "kind.  I'm more like... a flower. "
              $talk2 = "A flower with a dog smell."
              $d_number = 1
            end
          when 11
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 13
              $talk = "By the way, one day  I've seen a"
              $talk1 = "glowing  flower! You may think"
              $talk2 = "it's impossible."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 11
              $talk = "A bunch of fireflies were "
              $talk1 = "sitting on it."
              $talk2 = nil
            end
          when 12
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 11
              $talk = "One day I met a wise  and huge"
              $talk1 = "and old  fluffy doggo."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "“There is no lava  on the floor."
              $talk1 = "You can  stand wherever you "
              $talk2 = "want”, he said."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 14
              $talk = "He made my life very  dull..."
              $talk1 = nil
              $talk2 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 14
              $talk = "As you can guess, he  doesn't"
              $talk1 = "believe neither in  monsters"
              $talk2 = "nor in fairytales."
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 14
              $talk = "Adults break my heart..."
              $talk1 = nil
              $talk2 = nil
              $sad += 1
            end
          when 13
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 18
              $talk = "Strangely, adults are  the"
              $talk1 = "ones who taught me  reading"
              $talk2 = "fairytales."
              $d_number = 1
            end
            
            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "Not long ago I was  just looking"
              $talk1 = "at the  pictures imagining my "
              $talk2 = "own stories."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 18
              $talk = "But then I was taught  that"
              $talk1 = "letters in fact mean  something."
              $talk2 = "Some of my  stories were better..."
            end
          when 14
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "I once read a book  which ended"
              $talk1 = "with kids  eating some magic"
              $talk2 = "pills  in order to never grow up."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 11
              $talk = "I wonder where to find  these"
              $talk1 = "pills."
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "I would give all my  money and"
              $talk1 = "stickers in  exchange for these!"
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 11
              $talk = "I have 38 cents and  two awesome"
              $talk1 = "stickers  with cars. They are"
              $talk2 = "rare,  I can tell you!"
            end
          when 15
            if $respect >= 0 and $response
              if $d_number == 0
                $wait = $lifecounter + 300
                $state = 14
                $talk = "I'm sorry... I told you  before"
                $talk1 = "that I'm not  a good talker."
                $d_number = 1
              end

              if $d_number == 1 and $lifecounter == $wait
                $wait = $lifecounter + 200
                $state = 14
                $talk = "But I end up talking  pretty"
                $talk1 = "much..."
                $d_number = 2
              end

              if $d_number == 2 and $lifecounter == $wait
                $endoftalk = $lifecounter + 300
                $state = 13
                $talk = "Thank you so much  for being"
                $talk1 = "so kind to me!"
              end
            elsif $respect < 0
              if $d_number == 0
                $endoftalk = $lifecounter + 400
                $state = 18
                $talk = "Seems like we are so  different."
                $talk1 = "It's not bad!  All the beings are"
                $talk2 = " different afterall..."
                $d_number = 1
              end
            elsif !$response
              if $d_number == 0
                $wait = $lifecounter + 300
                $state = 14
                $talk = "You never ever answered... "
                $talk1 = "It's nothing, maybe your "
                $talk2 = "keyboard is broken."
                $d_number = 1
              end

              if $d_number == 1 and $lifecounter == $wait
                $wait = $lifecounter + 300
                $state = 14
                $talk = "I just wanted to thank  you for"
                $talk1 = "taking care of  me... "
                $talk2 = nil
                $d_number = 2
              end

              if $d_number == 2 and $lifecounter == $wait
                $endoftalk = $lifecounter + 300
                $state = 14
                $talk = "If you weren't around , I would"
                $talk1 = "probably... die  bitter and alone..."
                $sad += 1
                $d_number = 3
              end
            end
          when 16
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 14
              $talk = "Yesterday I've lost a  tooth."
              $talk1 = "So I cried a lot..."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "I didn't know it was  alright"
              $talk1 = "for teeth to tear  off."
              $talk2 = "It worries me still."
            end
          when 17
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 18
              $talk = "Do you think it's  possible to"
              $talk1 = "live a life  without hurting"
              $talk2 = "anyone?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 15
              $d_number = 2
            end

            if $d_number == 1 or $d_number == 2
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 300
                $state = 18
                $talk = "You really do? "
                $talk1 = "It must be so hard!"
                $talk2 = nil
                $respect += 1
                $response = true
                $d_number = 3
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 14
                $talk = "Yes, sounds impossible..."
                $talk1 = nil
                $talk2 = nil
                $sad += 1
                $response = true
                $d_number = 3
              end
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 14
              $talk = "Must be hard..."
              $talk1 = nil
              $talk2 = nil
              $sad += 1
            end
          when 18
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 14
              $talk = "I have to tell you something."
              $talk1 = "I hope you  hear me, it's"
              $talk2 = "important, really."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "I will leave you soon.  It's not"
              $talk1 = "that I want to...  It's just..."
              $talk2 = "It's time..."
            end
          when 19
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "There is one more  thing wise"
              $talk1 = "huge old fluffy doggo said"
              $talk2 = "to me."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "“Never fear. Never worry. "
              $talk1 = "It's the best you can do.”"
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 18
              $talk = "It sounds like  a wise advice."
              $talk1 = "But easier  said than done!"
            end
	    		end
    		when 3
          case $dialogue
          when 0
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 11
              $talk = "Greetings! I'm Ninja! "
              $talk1 = "I will be here for a  while,"
              $talk2 = "hope you're ok  with that."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 10
              $talk = "No need to look  after me,"
              $talk1 = "really! Just  give me foods plz."
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "I will call you in  case of"
              $talk1 = "something  urrrgent, alrrright?"
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 150
              $state = 11
              $talk = "Do your stuff."
              $talk1 = nil
            end
          when 1
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 10
              $talk = "Just letting you know... "
              $talk1 = "I really like fish! "
              $talk2 = "I really like fish in  my mouth!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 10
              $talk = "I'm not driving at  anything,"
              $talk1 = "please give me some fish!!!"
              $talk2 = nil
            end
          when 2
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 13
              $talk = "Thanks for your  company!"
              $talk1 = "You know,  would be cool to "
              $talk2 = "hear you."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 12
              $talk = "Oh, I know! You  could press"
              $talk1 = "buttons!  How about that?"
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 10
              $talk = "C'moooon, press something!"
              $talk1 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 19
              $d_number = 4
            end

            if $d_number == 2 or $d_number == 3 or $d_number == 4
              if Gosu.button_down? Gosu::KB_A or Gosu.button_down? Gosu::KB_B or Gosu.button_down? Gosu::KB_C or Gosu.button_down? Gosu::KB_D or Gosu.button_down? Gosu::KB_E or Gosu.button_down? Gosu::KB_F or 
                Gosu.button_down? Gosu::KB_G or Gosu.button_down? Gosu::KB_H or Gosu.button_down? Gosu::KB_I or Gosu.button_down? Gosu::KB_J or Gosu.button_down? Gosu::KB_K or Gosu.button_down? Gosu::KB_L or 
                Gosu.button_down? Gosu::KB_M or Gosu.button_down? Gosu::KB_N or Gosu.button_down? Gosu::KB_O or Gosu.button_down? Gosu::KB_P or Gosu.button_down? Gosu::KB_Q or Gosu.button_down? Gosu::KB_R or 
                Gosu.button_down? Gosu::KB_S or Gosu.button_down? Gosu::KB_T or Gosu.button_down? Gosu::KB_U or Gosu.button_down? Gosu::KB_V or Gosu.button_down? Gosu::KB_W or Gosu.button_down? Gosu::KB_X or 
                Gosu.button_down? Gosu::KB_Y or Gosu.button_down? Gosu::KB_Z
                $wait = $lifecounter + 200
                $state = 12
                $talk = "Cooooooool!"
                $talk1 = "You really did it!"
                $sad -= 1
                $respect += 1
                $response = true
                $d_number = 6
              end
            end

            if $d_number == 6 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "Well... Now I wonder  how exactly"
              $talk1 = "we could communicate this way."
              $d_number = 7
            end

            if $d_number == 7 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 14
              $talk = "People are so hard  to"
              $talk1 = "communicate with!"
              $d_number = 8
            end

            if $d_number == 4 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 14
              $talk = "Maaaan... That's not  cool what"
              $talk1 = "you're  doing... What you are "
              $talk2 = "not doing."
              $respect -= 1
              $d_number = 5
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 14
              $talk = "Alright, I will ask  you things. "
              $talk1 = "Maybe you  will change your mind."
              $talk2 = nil
            end
          when 3
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "Errr, how about pressing Y for"
              $talk1 = "'YES' and N for  'dunno maybe'?"
              $talk2 = "Let's try it out!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 10
              $talk = "Have you ever  committed a... "
              $talk1 = "MURRRDER???"
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 19
              $d_number = 3
            end

            if $d_number == 2 or $d_number == 3
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 300
                $state = 12
                $talk = "Yo killa! Don't worry,  I'll keep"
                $talk1 = "it secret!  You get my cat"
                $talk2 = "promise!"
                $respect += 1
                $response = true
                $d_number = 5
              end

              if Gosu.button_down? Gosu::KB_N
                $wait = $lifecounter + 300
                $state = 11
                $talk = "Mmm... Oh, what  if you have a"
                $talk1 = "split  purrrsonality?"
                $talk2 = nil
                $response = true
                $d_number = 6
              end
            end

            if $d_number == 6 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 13
              $talk = "One person is a  serial killer"
              $talk1 = "and another  is, well, talking"
              $talk2 = "to cats."
              $d_number = 7
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 13
              $talk = "Alriiight, it's fair.  If you were,"
              $talk1 = "you  wouldn't tell anyway."
              $d_number = 4
            end
          when 4
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 12
              $talk = "Oh, don't think  that I'm"
              $talk1 = "interested in  death..."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 11
              $talk = "I just like poking  corpses with"
              $talk1 = "a stick."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 150
              $state = 10
              $talk = "FOR SCIENCE!!!"
              $talk1 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 50
              $state = 19
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "Last week I poked  a dead pigeon."
              $talk1 = "It was  fun. And also a snail. "
              $talk2 = "It was alive though."
              $d_number = 5
            end

            if $d_number == 5 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 10
              $talk = "What I desire the  most is to"
              $talk1 = "poke a  real shark someday!"
              $talk2 = nil
              $d_number = 6
            end

            if $d_number == 6 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 10
              $talk = "Sharks are sooooo  dope!"
              $talk1 = "Did you know  that they swim"
              $talk2 = "even  when they sleep?"
              $d_number = 7
            end

            if $d_number == 7 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 10
              $talk = "Sooooo dooopeeee!"
              $talk1 = nil
              $talk2 = nil
              $d_number = 8
            end
          when 5
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "By the way, I have  superpowers!"
              $talk1 = "Night vision! And also 9 lives!"
              $talk2 = "I can jump really  high!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 13
              $talk = "I must be a tripple-super-hero..."
              $talk1 = nil
              $talk2 = nil
              $d_number = 2
            end
          when 6
              if $d_number == 0
              $wait = $lifecounter + 400
              $state = 10
              $talk = "I have a very important"
              $talk1 = "question to ask!!  Do you like..."
              $talk2 = "VIDEOGAMES?!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 19
              $d_number = 2
            end

            if $d_number == 1 or $d_number == 2
              if Gosu.button_down? Gosu::KB_Y
                $wait = $lifecounter + 400
                $state = 10
                $talk = "YES???? IS IT ALL  YOU CAN SAY???"
                $talk1 = "C'MON! SMASH THE 'Y'  BUTTON"
                $talk2 = "ON THE COUNT OF 3!"
                $response = true
                $d_number = 3
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 14
                $talk = "What's wrong with you..."
                $talk1 = nil
                $talk2 = nil
                $respect -= 1
                $sad += 1
                $response = true
                $d_number = 4
              end
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 50
              $state = 10
              $talk = "...1..."
              $talk1 = nil
              $talk2 = nil
              $d_number = 6
            end

            if $d_number == 6 and $lifecounter == $wait
              $wait = $lifecounter + 50
              $state = 10
              $talk = "...2..."
              $d_number = 7
            end

            if $d_number == 7 and $lifecounter == $wait
              $wait = $lifecounter + 50
              $state = 10
              $talk = "...3!"
              $smash_count = 0
              $smash_text = ''
              $tap = "     [ TAP THE 'Y' BUTTON ]"
              $d_number = 8
            end

            if $d_number == 8 and $lifecounter == $wait
              $wait = $lifecounter + 150
              $state = 19
              $talk = nil
              $d_number = 9
            end

            if ($d_number == 8 or $d_number == 9) and Gosu.button_down? Gosu::KB_Y and !@pressed3
              $smash_text += 'Y '
              $smash_count += 1
              @pressed3 = true
            elsif not Gosu.button_down? Gosu::KB_Y
              @pressed3 = nil
            end

            if $d_number == 9 and $lifecounter == $wait
              $endoftalk = $lifecounter + 150
              $state = 20
              $smash_text = nil
              $tap = nil
              $talk = "Meeeeeeeeeh!"
              $d_number = 10
            end

            if $smash_count == 16
              $endoftalk = $lifecounter + 150
              $state = 12
              $smash_text = nil
              $smash_count = nil
              $tap = nil
              $respect += 2
              $sad -= 1
              $talk = "Yooooooooooo!"
              $d_number = 11
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "Well, it's a strange  question."
              $talk1 = "Who doesn't..."
              $talk2 = nil
              $d_number = 5
            end
          when 7
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 18
              $talk = "By the way, I love brick  game!"
              $talk1 = "It's very fun!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 350
              $state = 11
              $talk = "I still haven't decided  which"
              $talk1 = "one of 9999 games  I like the"
              $talk2 = "most though..."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 20
              $talk = "Most of them look  pretty the"
              $talk1 = "same..."
              $talk2 = nil
              $d_number = 3
            end
          when 8
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 11
              $talk = "Have you ever tried  building"
              $talk1 = "houses  of cards?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 350
              $state = 15
              $d_number = 2
            end

            if $d_number == 1 or $d_number == 2
              if Gosu.button_down? Gosu::KB_Y
                $wait = $lifecounter + 400
                $state = 13
                $talk = "Then you probably  know that it's "
                $talk1 = "a disappointing biz cuz you"
                $talk2 = "build less than  you destroy."
                $response = true
                $d_number = 3
              end

              if Gosu.button_down? Gosu::KB_N
                $response = true
                $d_number = 5
              end
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 10
              $talk = "Well, unless you like  to"
              $talk1 = "DESTROY!"
              $talk2 = nil
              $d_number = 4
            end

            if $d_number == 5 or ($d_number == 2 and $lifecounter == $wait)
              $endoftalk = $lifecounter + 250
              $state = 13
              $talk = "You should try  someday, it's"
              $talk1 = "disappointing."
              $d_number = 6
            end
          when 9
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 11
              $talk = "I bet there are lots  of things"
              $talk1 = "to do with  cards."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "But there's only one  game I"
              $talk1 = "know. It's called  'janitor'."
              $talk2 = "The rules  are quite simple."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 20
              $talk = "The one scatters the  card deck"
              $talk1 = "and you have  to pick up all the"
              $talk2 = "cards  as fast as possible..."
              $d_number = 3
            end
          when 10
            if $d_number == 0
              $wait = $lifecounter + 200
              $state = 11
              $talk = "I wanna learn how  to play"
              $talk1 = "poker!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 20
              $talk = "But I've been told that  I cannot"
              $talk1 = "play poker  cause I'm too"
              $talk2 = "emotional."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 150
              $state = 10
              $talk = "I'M NOT EMOTIONAL!!!!!"
              $talk1 = nil
              $talk2 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 50
              $state = 19
              $talk = nil
              $d_number = 4
            end
          when 11
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "There's only one thing  I hate"
              $talk1 = "more than  homework... dogs..."
              $talk2 = "and also... water!"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 150
              $state = 20
              $talk = "No, wait, I hate  lots of things!"
              $talk1 = nil
              $talk2 = nil
              $d_number = 2
            end
          when 12
            if $d_number == 0
              $wait = $lifecounter + 350
              $state = 13
              $talk = "The biggest advantage  of being"
              $talk1 = "a cat is that  you have beans"
              $talk2 = "on  your paws."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 11
              $talk = "And you always fall  on them."
              $talk1 = "If I didn't,  I would lose few"
              $talk2 = "lives."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "Another me would  poke me with"
              $talk1 = "a stick."
              $talk2 = nil
            end
          when 13
            if $d_number == 0
              $wait = $lifecounter + 200
              $state = 14
              $talk = "I don't really need any  friends."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 450
              $state = 14
              $talk = "I don't think I would  ever get"
              $talk1 = "along with  any creatures who"
              $talk2 = "don't care about  my awesome"
              $talk3 = "dinosaurs  and my lasers."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 14
              $talk = "When I meet those,  I rather"
              $talk1 = "want to punch  them and leave."
              $talk2 = nil
              $talk3 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 14
              $talk = "I don't need you to  understand."
              $talk1 = nil
              $sad += 1
            end
          when 14
            if $d_number == 0
              $wait = $lifecounter + 350
              $state = 20
              $talk = "I had a friend once.  I thought"
              $talk1 = "I had.  One little tiger"
              $talk2 = "pretended  to be my friend."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 450
              $state = 14
              $talk = "But she just laughed  behind"
              $talk1 = "my back spreading  my secrets"
              $talk2 = "and calling  me stupid!"
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 300
              $state = 13
              $talk = "So I stole her brickgame! And"
              $talk1 = "never talked to  her ever since."
              $talk2 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 13
              $talk = "I think it was totally fair! "
              $talk1 = "Was it?"
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 15
              $d_number = 5
            end

            if $d_number == 4 or $d_number == 5
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 150
                $state = 11
                $talk = "I knew it!"
                $talk1 = nil
                $sad -= 1
                $respect += 1
                $response = true
                $d_number = 6
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 20
                $talk = "So what would you do,  huh?"
                $talk1 = nil
                $response = true
                $respect -= 1
                $sad += 1
                $d_number = 7
              end
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "Well, of course it was..."
              $talk1 = nil
              #you can press something here, but it's not bug, it's a feature %)
            end
          when 15
            if $d_number == 0
              $wait = $lifecounter + 200
              $state = 11
              $talk = "Do you like horror films?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $state = 15
              $d_number = 2
            end

            if $d_number == 1 or $d_number == 2
              if Gosu.button_down? Gosu::KB_Y
                $wait = $lifecounter + 350
                $state = 11
                $talk = "You seem to be the brave  kind!"
                $talk1 = "Have you ever  wondered why"
                $talk2 = "zombies  never jump?"
                $sad -= 1
                $respect += 1
                $response = true
                $d_number = 4
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 13
                $talk = "I understand, they are for  total"
                $talk1 = "weirdos."
                $response = true
                $d_number = 5
              end
            end

            if $d_number == 4 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "Do you really need to  be that"
              $talk1 = "smart to jump..."
              $talk2 = nil
              $d_number = 6
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "Mmm, just wondering..."
              $d_number = 7
            end
          when 16
            if $respect >= 1 and $response
              if $d_number == 0
                $endoftalk = $lifecounter + 350
                $state = 11
                $talk = "I just wanna tell you  something."
                $talk1 = "You are  cool! Not very cool."
                $talk2 = "But average cool."
                $sad -= 1
                $d_number = 1
              end
            elsif $respect < 1 and $response
              if $d_number == 0
                $endoftalk = $lifecounter + 300
                $state = 11
                $talk = "We are not getting  along."
                $talk1 = "It's fine  since we don't have to."
                $sad += 1
                $d_number = 1
              end
            elsif !$response
              if $d_number == 0
                $endoftalk = $lifecounter + 300
                $state = 10
                $talk = "OKAY! Keep ignoring me!!! "
                $talk1 = "You are extremely good  at this!"
                $sad += 1
                $d_number = 1
              end
            end
          when 17
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 11
              $talk = "Just letting you know. "
              $talk1 = "I'll soon leave you.  No worries,"
              $talk2 = "it's mostly  not your fault."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 13
              $talk = "You'll never see me  again,"
              $talk1 = "but you may meet  my evil twin"
              $talk2 = "someday.  She's from space."
              $d_number = 2
            end
          when 18
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 13
              $talk = "This week I ate an  earthworm."
              $talk1 = "I did it on  a dare, but I regret"
              $talk2 = " nothing."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 13
              $talk = "It tasted much better  than it"
              $talk1 = "seemed. Plus I got 2 bucks. "
              $talk2 = "Easy money."
              $sad -= 1
              $d_number = 2
            end
          end
        when 1
          case $dialogue
          when 0
            if $d_number == 0
              $wait = $lifecounter + 250
              $state = 15
              $talk = "Do you mind my  company,"
              $talk1 = "earthling?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 13
              $talk = "I'm from Skýdalur.  It's far"
              $talk1 = "away from here,  in another"
              $talk2 = "planetary  system."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 400
              $state = 14
              $talk = "It's alright if you  are busy."
              $talk1 = "You don't  have to pay me much "
              $talk2 = "attention."
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "I will just stay here  for a"
              $talk1 = "while. But, please, hear me "
              $talk2 = "if I call you."
              $d_number = 4
            end
          when 1
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 12
              $talk = "By the way, my name  is"
              $talk1 = "Stjörnuryk.  You don't have"
              $talk2 = "to  remember."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 200
              $state = 15
              $talk = "And what is yours?"
              $talk1 = nil
              $talk2 = nil
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 15
              $d_number = 3
            end

            if $d_number == 3
              $talk = "." if $lifecounter + 249 == $wait
              $talk = ". ." if $lifecounter + 200 == $wait
              $talk = ". . ." if $lifecounter + 150 == $wait
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 14
              $talk = "Seems that you can't  answer,"
              $talk1 = "sorry... I hope you understand "
              $talk2 = "what I say."
              $sad += 1
              $d_number = 4
            end
          when 2
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 15
              $talk = "I have heard about  Earth before. "
              $talk1 = "We call it vatnkúlu-3-328."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 15
              $talk = "I could never  imagine that I"
              $talk1 = "would  be here myself."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 14
              $talk = "It's so far away  from home..."
              $talk1 = nil
              $d_number = 3
            end
          when 3
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 15
              $talk = "It struck me to see that most"
              $talk1 = "of  earthlings have  stereo-vision."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 450
              $state = 13
              $talk = "It's out of my qualia,  I wonder"
              $talk1 = "what it feels  like to have two"
              $talk2 = "photosensitive organs."
              $d_number = 2
            end
          when 4
            if $d_number == 0
              $endoftalk = $lifecounter + 350
              $state = 14
              $talk = "Sorry for sneezing  all the time."
              $talk1 = "I have a  terrible allergy to "
              $talk2 = "mold..."
              $d_number = 1
            end
          when 5
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 15
              $talk = "Do earthlings really  have one"
              $talk1 = "physiological  hole for talking"
              $talk2 = "and  eating and sneezing?"
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 15
              $talk = "It's so uncomfortable!  I use"
              $talk1 = "antennas to talk."
              $talk2 = nil
              $d_number = 2
            end
          when 6
            if $d_number == 0
              $wait = $lifecounter + 300
              $state = 14
              $talk = "I consider this one-way"
              $talk1 = "communication to be frustrating."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 450
              $state = 14
              $talk = "I know your language, yet we"
              $talk1 = "cannot talk to each other."
              $talk2 = "There are so many  things to"
              $talk3 = "talk about..."
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 15
              $talk = "May you at least press  buttons"
              $talk1 = "to answer?"
              $talk2 = nil
              $talk3 = nil
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 250
              $state = 15
              $talk = "Please press 'Y' for 'yes'  and"
              $talk1 = "'N' for 'no'. Can you?"
              $d_number = 4
            end

            if $d_number == 4 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $d_number = 5
            end

            if $d_number == 4 or $d_number == 5
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 200
                $state = 12
                $talk = "Wow, thank you!"
                $talk1 = nil
                $sad -= 1
                $respect += 1
                $response = true
                $d_number = 6
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 250
                $state = 19
                $talk = "But you just did.  Is it a joke?"
                $talk1 = nil
                $sad += 1
                $respect -= 1
                $response = true
                $d_number = 7
              end
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 14
              $talk = "Alright, maybe later..."
              $talk1 = nil
              $d_number = 8
            end
          when 7
            if $d_number == 0
              $wait = $lifecounter + 400
              $state = 14
              $talk = "Honestly, I shouldn't be  on"
              $talk1 = "Earth. Our teleporter  broke"
              $talk2 = "and got me here  by mistake."
              $sad += 1
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $wait = $lifecounter + 450
              $state = 13
              $talk = "I don't know if anyone  is"
              $talk1 = "searching for me now  and if"
              $talk2 = "I ever be able  to come back"
              $talk3 = "home..."
              $sad += 1
              $d_number = 2
            end

            if $d_number == 2 and $lifecounter == $wait
              $wait = $lifecounter + 450
              $state = 13
              $talk = "Earthlings haven't invented "
              $talk1 = "teleporters yet. They are  way"
              $talk2 = "too complicated  to build on"
              $talk3 = "one's own."
              $sad += 1
              $d_number = 3
            end

            if $d_number == 3 and $lifecounter == $wait
              $endoftalk = $lifecounter + 300
              $state = 13
              $talk = "And require way too  much"
              $talk1 = "computing power."
              $talk2 = nil
              $talk3 = nil
              $sad += 2
            end
          when 8
            if $d_number == 0
              $wait = $lifecounter + 200
              $state = 20
              $talk = "Your star is such a  baby."
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 400
              $state = 13
              $talk = "Earthlings don't need  to live in"
              $talk1 = "a constant  worry that it may"
              $talk2 = "collapse anytime."
              $d_number = 2
            end
          when 9
            if $d_number == 0
              $wait = $lifecounter + 600
              $state = 15
              $talk = "I need to ask you  something."
              $talk1 = "Do you have a tail?"
              $d_number = 1
            end

            if $d_number == 1
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 300
                $state = 21
                $talk = "You do? Wow!"
                $talk1 = "I need to  reconsider some data."
                $respect += 1
                $response = true
                $d_number = 2
              end

              if Gosu.button_down? Gosu::KB_N
                $wait = $lifecounter + 10
                $state = 21
                $talk = "No? Not even a rudimental one?"
                $talk1 = nil
                $response = true
                $d_number = 3
              end
            end

            if $d_number == 3 and $lifecounter == $wait
              $wait = $lifecounter + 500
              $d_number = 5
            end

            if $d_number == 5
              if Gosu.button_down? Gosu::KB_Y or Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 200
                $state = 12
                $talk = "Thank you for your  answer."
                $respect += 1
                $d_number = 7
              end
            end

            if $d_number == 5 and $lifecounter == $wait
              $endoftalk = $lifecounter + 150
              $state = 19
              $talk = "Hmmm..."
              $d_number = 6
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 250
              $state = 10
              $talk = "I hope it's not  impolite to ask"
              $talk1 = "such  things."
              $d_number = 4
            end
          when 10
            if $d_number == 0
              $wait = $lifecounter + 500
              $state = 15
              $talk = "There are approximately  83588"
              $talk1 = "kinds of bacterias  on Earth"
              $talk2 = "which can potentially kill me. "
              $d_number = 1
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 21
              $talk = "It brings way too much  worries."
              $talk1 = nil
              $talk2 = nil
              $d_number = 2
            end
          when 11
            if $d_number == 0
              $wait = $lifecounter + 700
              $state = 20
              $talk = "Have you ever tried  pönnukökur?"
              $d_number = 1
            end

            if $d_number == 1
              if Gosu.button_down? Gosu::KB_Y
                $endoftalk = $lifecounter + 300
                $state = 12
                $talk = "So you have  them too!"
                $talk1 = "It's amazing!"
                $respect += 1
                $sad -= 1
                $response = true
                $d_number = 2
              end

              if Gosu.button_down? Gosu::KB_N
                $endoftalk = $lifecounter + 400
                $state = 20
                $talk = "This is the best thing  in"
                $talk1 = "the world! I will  teleport"
                $talk2 = "you some if  I ever come back!"
                $response = true
                $d_number = 3
              end
            end

            if $d_number == 1 and $lifecounter == $wait
              $endoftalk = $lifecounter + 200
              $state = 13
              $talk = "You would probably  like them."
              $d_number = 4
            end
          when 12
          end
        when id
        end
    	end
    end
  end
end

class String
  def wrap(col = 25)
    gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3line")
  end
end

class Dreams
  def initialize
   @dreamvar0 = rand(0..12) if $id != 1
   @dreamvar0 = rand(13..19) if $id == 1
   @dreamvar1 = rand(0..21) if $id != 1
   @dreamvar1 = rand(22..36) if $id == 1
   @dreamvar2 = rand(0..13) if $id != 1
   @dreamvar2 = rand(10..19) if $id == 1
   @dreamvar3 = rand(0..17) if $id != 1
   @dreamvar3 = rand(10..22) if $id == 1
   @dreamvar4 = rand(0..12) if $id != 5
   @dreamvar4 = rand(0..11) if $id == 5
   @dreamphrases0 = ["in some park", "in a castle", "in the woods", "near the ocean", "on the seashore", "in some city", "in a haunted house", "in a spaceship", "in outer space", "in the fields", "somewhere far away", "on some other planet", "on the moon", "in the garður", "in a vígi", "in the skóginum", "near the haf", "on the sjávarströnd", "in a reimt hús", "in the sviði"]
   @dreamphrases1 = ["aliens", "mutants", "wizards", "dolphins", "dragons", "sharks", "vampires", "dinosaurs", "some kids", "elfs", "ghosts", "robots", "monsters", "mermaids", "Eskimo", "penguins", "bugs", "zombie cats", "skeletons", "jellyfish", "fairies", "unicorns", "stökkbrigði", "töframaður", "höfrungar", "hákarlar", "risaeðlur", "draugar", "vélmenni", "skrímsli", "hafmeyjunum", "mörgæsir", "skordýr", "beinagrindur", "marglytta", "álfar", "einhyrningar"]
   @dreamphrases2 = ["with little umbrellas", "with blasters", "wearing sweaters", "wearing dresses", "wearing funny hats", "wearing mittens", "wearing raincoats", "wearing bucket hats", "with chainsaws", "wearing masks", "looking suspicios", "looking happy", "looking excited", "looking mysterious", "with little regnhlífar", "wearing kjólar", "in peysur", "wearing húfur", "with byssur", "with hálsklútar"]
   @dreamphrases3 = ["having a party", "casting spells", "singing lullabies", "playing drums", "playing chess", "growing cactuses", "playing hide-and-seek", "teleporting", "playing chiptune", "making paper airplanes", "dancing", "flying around", "staring at each other", "whispering", "laughing", "telling jokes", "4-dimensional", "talking to me", "singing lög", "playing trommur", "playing skák", "growing ferskjur", "playing feluleikur"]
   @dreamphrases4 = ["I wanna write it down", "I wanna draw it", "I hope I see it again", "It was nice", "I hope I remember it", "... Nevermind", "Don't laugh, please", "It was weird", "It was strange", "It was touching", "It seems to make no sense", "I often see these", "Just kidding"]
  end

  def update
   @dreamtext = "I've seen a dream."
   @dreamtext1 = "I appeared to be #{@dreamphrases0[@dreamvar0]}."
   @dreamtext2 = "There were #{@dreamphrases1[@dreamvar1]} #{@dreamphrases2[@dreamvar2]}. They were #{@dreamphrases3[@dreamvar3]}."
   @dreamtext3 = "#{@dreamphrases4[@dreamvar4]}."
   @lines1 = @dreamtext1.wrap.split('line')
   @lines2 = @dreamtext2.wrap.split('line')

   if $dreamstate == 1
    $state = 15
    $move = false
    $wait = $lifecounter + 50
    $dreamstate = 2
   end
   
   if $dreamstate == 2 and $lifecounter == $wait
    $state = 11
    $wait = $lifecounter + 250 
    $talk = @dreamtext
    $talk1 = @lines1[0]
    $talk2 = @lines1[1]
    $dreamstate = 3
   end

   if $dreamstate == 3 and $lifecounter == $wait
    $wait = $lifecounter + 400
    $talk = @lines2[0]
    $talk1 = @lines2[1]
    $talk2 = @lines2[2]
    $talk3 = @lines2[3]
    $dreamstate = 4
   end

   if $dreamstate == 4 and $lifecounter == $wait
   case @dreamvar4
   when 0, 1, 2, 3, 4, 9, 11
   $sad -= 1
   $state = 13
   when 12
   $state = 12
   $sad -= 1
   when 5, 6, 7, 8, 10
   $state = 14
   end
   $talk = @dreamtext3
   if $id == 5 and @dreamvar4 < 2
    $wait = $lifecounter + 300
    $talk1 = "I wish I could..."
   else
    $wait = $lifecounter + 200
    $talk1 = nil
   end
   $talk2 = nil
   $talk3 = nil
   $dreamstate = 5
   end

   if $dreamstate == 5 and $lifecounter == $wait
   $move = true
   $dreamstate = 0
   $dream = false
   end
  end
end

class Stats
  def initialize
    @image, @image1, @image2, @image3 = *Gosu::Image.load_tiles("vis/stats.png", 5, 22)
    @hearts1, @hearts2, @hearts3, @hearts4, @hearts5, @hearts11, @hearts12, @hearts13, @hearts14, @hearts15 = *Gosu::Image.load_tiles("vis/hearts.png", 39, 6)
    $sad = 1
    $hungry = 1
    $sleepy = 0
    $sick = false
    @maygetsick = 0
  end

  def draw
   if $id != 4
     @image.draw(5, 5, 1) if $light
     @image1.draw(5, 5, 1) if !$light
   elsif $id == 4
     @image2.draw(5, 5, 1) if $light
     @image3.draw(5, 5, 1) if !$light
   end
   case $sad
   when 0
   @hearts5.draw(12, 5, 1) if $light
   @hearts15.draw(12, 5, 1) if !$light
   when 1
   @hearts4.draw(12, 5, 1) if $light
   @hearts14.draw(12, 5, 1) if !$light
   when 2
   @hearts3.draw(12, 5, 1) if $light
   @hearts13.draw(12, 5, 1) if !$light
   when 3
   @hearts2.draw(12, 5, 1) if $light
   @hearts12.draw(12, 5, 1) if !$light
   when 4
   @hearts1.draw(12, 5, 1) if $light
   @hearts11.draw(12, 5, 1) if !$light
   end

   case $hungry
   when 0, -1, -2
   @hearts5.draw(12, 13, 1) if $light
   @hearts15.draw(12, 13, 1) if !$light
   when 1
   @hearts4.draw(12, 13, 1) if $light
   @hearts14.draw(12, 13, 1) if !$light
   when 2
   @hearts3.draw(12, 13, 1) if $light
   @hearts13.draw(12, 13, 1) if !$light
   when 3
   @hearts2.draw(12, 13, 1) if $light
   @hearts12.draw(12, 13, 1) if !$light
   when 4
   @hearts1.draw(12, 13, 1) if $light
   @hearts11.draw(12, 13, 1) if !$light
   end
   
   if $id != 4
     case $sleepy
     when 0
     @hearts5.draw(12, 21, 1) if $light
     @hearts15.draw(12, 21, 1) if !$light
     when 1
     @hearts4.draw(12, 21, 1) if $light
     @hearts14.draw(12, 21, 1) if !$light
     when 2
     @hearts3.draw(12, 21, 1) if $light
     @hearts13.draw(12, 21, 1) if !$light
     when 3
     @hearts2.draw(12, 21, 1) if $light
     @hearts12.draw(12, 21, 1) if !$light
     when 4
     @hearts1.draw(12, 21, 1) if $light
     @hearts11.draw(12, 21, 1) if !$light
     end
    end
  end

  def update
    @maygetsick = rand(0..4) if $lifecounter % 3000 == 2999 and !$asleep and !$play and !$sing and !$hug and !$dream and $move and $rpsls == 0 and $id != 5 and !$robotplay and !$sleepdeprivation
    @maygetsick = nil if $cure
    $sick = true if @maygetsick == 1
    if !$sick and !$asleep
    $sad += 1 if $lifecounter % 2500 == 1 and $id != 3 and $rpsls == 0 and !$sing and !$hug and !$conversation
     if $id == 3 and $light
      $sad += 1 if $lifecounter % 2500 == 1 and $rpsls == 0 and !$sing and !$hug and !$conversation
     elsif $id == 3 and !$light and $sleepy < 5 and $hungry < 5
      $sad -= 1 if $lifecounter % 2500 == 1 and !$conversation
     elsif $id == 3
      $sad += 1 if $lifecounter % 3000 == 1 and !$conversation
     end
    $hungry += 1 if $lifecounter % 1000 == 1 and $id != 4
    if $id == 4 and $light
      $hungry -= 1 if $lifecounter % 1000 == 1
    elsif $id == 4 and !$light
      $hungry += 1 if $lifecounter % 1000 == 1
    end
    $sleepy += 1 if $lifecounter % 4000 == 1 and $id != 4
    #$sleepy += 1 if $lifecounter % 200 == 1 and $id != 4
    if $light and !$sing and !$hug and $sleepstate != 8 and !$dream and !$sleepdeprivation and $move and !$conversation
     if $sleepy > 4
       $state = 4
       elsif $sleepy <= 4
        if $hungry > 4
        $state = 3 if $sad < 5
        $state = 2 if $sad >= 5
        elsif $hungry <= 4
        $state = 2 if $sad >= 5
        $state = 1 if $sad < 1
        $state = 0 if $sad >= 1 and $sad < 5
        end
      end
    elsif !$light and $id == 3 and !$sleepdeprivation
      if $sleepy > 4
       $state = 4
       elsif $sleepy <= 4
        if $hungry > 4
        $state = 3 if $sad < 5
        $state = 2 if $sad >= 5
        elsif $hungry <= 4
        $state = 2 if $sad >= 5
        $state = 1 if $sad < 1
        $state = 0 if $sad >= 1 and $sad < 5
        end
      end
    end
    elsif $sick and !$asleep
    $state = 6 if $move
    $sad += 1 if $lifecounter % 1500 == 1
    $hungry += 1 if $lifecounter % 500 == 1 and $id != 4
    if $id == 4 and $light
      $hungry -= 1 if $lifecounter % 1500 == 1
    elsif $id == 4 and !$light
      $hungry += 1 if $lifecounter % 500 == 1
    end
    $sleepy += 1 if $lifecounter % 3500 == 1 and $id != 4
    #$sleepy += 1 if $lifecounter % 200 == 1 and $id != 4
    elsif $sick and $asleep
    $state = 5
    $sad += 1 if $lifecounter % 2000 == 1
    $hungry += 1 if $lifecounter % 4500 == 1
    $sleepy -= 1 if $lifecounter % 3000 == 2000 and $id != 4
    #$sleepy -= 1 if $lifecounter % 200 == 1 and $id != 4
    elsif !$sick and $asleep
    $state = 5
    $sad -= 1 if $lifecounter % 500 == 1 and $id == 4
    $hungry += 1 if $lifecounter % 5000 == 1 and $id != 4
    $hungry -= 1 if $lifecounter % 1500 == 1 and $id == 4
    $sleepy -= 1 if $lifecounter % 2000 == 1999 and $id != 4
    #$sleepy -= 1 if $lifecounter % 5 == 1 and $id != 4
   end

   if $asleep and $sleepy == 0 and $id != 4
    $asleep = false
    if !$sick
     $dream = true
     $dreamstate = 1
    end
    $state = 7 if $id !=3
    $sleepstate = 5 if $id != 3
   elsif $asleep and $sad == 0 and $id == 4
    $asleep = false
    $robotplay = false
   end

   $sad = 0 if $sad < 0
   $sad = 5 if $sad > 4
   $hungry = -1 if $hungry < -1
   $hungry = 5 if $hungry > 5 and $id == 4 and $light
   $hungry = 0 if $hungry < 0 and $id == 4 and !$light
   $sleepy = 5 if $sleepy > 4
  end
end

class Tamago < Gosu::Window
  def initialize
    super 200, 220
    self.caption = "Tamagotchi"
    @font = Gosu::Font.new(self, "vis/pixel.ttf", 14)
    @background_image = Gosu::Image.new("vis/back.png", :tileable => true)
    @background_image1 = Gosu::Image.new("vis/back1.png", :tileable => true)
    @stats = Stats.new
    @icons = Gosu::Image.new("vis/icons.png")
    @icons1 = Gosu::Image.new("vis/icons1.png")
    @action = Action.new
    $lifecounter = 0
    @pet = Pet.new
    @talk = Talks.new
  end

def update
  @action.update
  $lifecounter += 1 if !$start
  @talk.update
  @stats.update
  @sawadream = Dreams.new if $dream and $light and $dreamstate == 1
  @sawadream.update if $dream and $light
 end

  def draw
    @background_image.draw(0, 0, 0) if $light
    @background_image1.draw(0, 0, 0) if !$light
    @stats.draw if !$start
    @icons.draw(140, 5, 1) if !$start and $light
    @icons1.draw(140, 5, 1) if !$start and !$light
    $player.draw if !$start and !$feed and !$play and $rpsls == 0
    @font.draw($talk, 10, 157, 1, 1.0, 1.0, Gosu::Color::WHITE)
    @font.draw($talk1, 10, 169, 1, 1.0, 1.0, Gosu::Color::WHITE)
    @font.draw($talk2, 10, 181, 1, 1.0, 1.0, Gosu::Color::WHITE)
    @font.draw($talk3, 10, 193, 1, 1.0, 1.0, Gosu::Color::WHITE)
    @font.draw($tap, 10, 169, 1, 1.0, 1.0, Gosu::Color::BLUE)
    @font.draw($smash_text, 10, 181, 1, 1.0, 1.0, Gosu::Color::BLUE)
    @font.draw($lifecounter, 10, 181, 1, 1.0, 1.0, Gosu::Color::WHITE) if !$feed and !$dream and $rpsls == 0 and $light and !$conversation
    @font.draw($respect, 50, 5, 1, 1.0, 1.0, Gosu::Color::BLACK)
    #@font.draw($state, 50, 5, 1, 1.0, 1.0, Gosu::Color::BLACK) if $light
    #@font.draw($state, 50, 5, 1, 1.0, 1.0, Gosu::Color::WHITE) if !$light
    @action.draw
    @pet.draw if $start
    $foods.draw if $feed
    $playing.draw if $play
    $minigame.draw if $rpsls > 0
  end
end

 Tamago.new.show

 #c:\prog> ocra tamago.rbw --icon icon.ico

 #some var = 0 if depriv
 #depriv = false if var
 #some var += 1 when !$light
 #some var -= 1 when $light
 #some var = nil when some var < 0
 # depriv = true if !some var and !light

 #i don't wanna boast, but i know a lot of nice fairytales. So if you change your mind someday, please let me know. I would gladly share them with you...
 #fix bug with no falling stats when !light and dream = true. Possible solution - "unless light and dream". Also make pets produce sound when they wake up!!!
 #today you are you, it's truer than true, there's noone alive who is youer than you
 #if you don't answer to ninja 1st time, she'll tell to press y/n anyway - errrm. how about pressing Y N
 #animate ninja likes darkness
 #test how pets behave on talk when feel bad
 #make pets talk faster
 #waifu monologue 'it's so frustrating not to be able to establish communication. I wonder if you have limbs...'
 #do i need to stop counters?
 #make autoexit from menus
 #press any key
 #delete unneeded dialog states
 #deer pleads that you answer if you don't
 #make some monologues time-dependant (those about leaving soon)
 #change more stats after talks (less or more sad)
 #waifu is not sad or hungry when the lights are off. it needs to be fixed. other pets seem to have the same issue
 #low stats make the higher risk to get sick
 #turn on the light also by pressing UP button
 #when robot plays,the talk is not triggered
 #make waifu sneeze
 #i don't insist on answering, but if you can, please do.
 #robot tells time
 #add sound when feed/when suffer
 #no sick, talk, catsleep etc. when minigame
 #Don't get close to me, I'm infected
 #I feel broken/ I'm stressed/ I'm melting
 #Press esc to leave the game and go do heroic stuff
 #zingo is busy at the moment
 #different emotions when tell dreams
 #sorry, I need to charge
 #change start window

