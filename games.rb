require 'ruby2d'

background = Image.new('mario.png', y: -100)

# Define a square shape.
set width: 800
set height: 600


hero = Sprite.new(
  'hero.png',
  width: 78,
  height: 99,
  clip_width: 78,
  time: 250,
  animations: {
    walk: 1..2,
    climb: 3..4,
    cheer: 5..6
  }
)

on :key_held do |event|
  case event.key
    when 'left'
      hero.play animation: :walk, loop: true, flip: :horizontal
      if hero.x > 0
        hero.x -= 3
      else
          background.x += 3
      end
    when 'right'
      hero.play animation: :walk, loop: true
      if hero.x < (Window.width - hero.width)
        hero.x += 3
      else
        background.x -= 3
      end
    when 'up'
      hero.play animation: :climb, loop: true
      if hero.y < (Window.width - hero.width)
        hero.y -= 3
      end
    when 'down'
      hero.play animation: :climb, loop: true
      if hero.y < (Window.width - hero.width)
        hero.y += 3
      end
      when 'c'
      hero.play animation: :cheer
      end
    end




show
