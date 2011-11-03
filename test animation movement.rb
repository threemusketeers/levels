Shoes.app do
  fill blue
  @player=rect :top => 50, :width => 50, :height=> 50
  # @info = para 'hi'
  
  # keypress to figure out what direction to move
  @direction=para "0"
  @direction2=para "0"
  @horizontal=0
  @vertical=0
  keypress do |direct|
    if direct == :right
      # @direction.replace "#{direct}"
      @horizontal += 10
    end
    if direct == :left
      # @direction.replace "#{direct}"
      @horizontal-=10
    end
    if direct == :down
      # @direction.replace "#{direct}"
      @vertical+=10
    end
    if direct == :up
      # @direction.replace "#{direct}"
      @vertical-=10
    end
    @direction.replace "#{@horizontal}"
    @direction2.replace "#{@vertical}"
  end
  
  
  # animate - move based on our current direction
  animate do |frame|
    new_left=@player.left+@horizontal
    new_top=@player.top+@vertical   
    @player.move(new_left, new_top)
  end
end