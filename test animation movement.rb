Shoes.app do
  fill blue
  # @player=rect :top => 50, :width => 50, :height=> 50
    @player= image 'skeleton1.png', :top => 50, :width => 50, :height=> 50
  # @info = para 'hi'
  
  # keypress to figure out what direction to move
  @direction=para "0"
  @direction2=para "0"
  @horizontal=0
  @vertical=0
  animate(1) do
    new_top-=5
  end
  keypress do |direct|
    if direct == :right
      # @direction.replace "#{direct}"
      @horizontal += 1
      @player.replace = image 'skeleton1.png', :top => 50, :width => 50, :height=> 50
    end
    if direct == :left
      # @direction.replace "#{direct}"
      @horizontal-= 1
      @player.replace = image 'skeleton2.png', :top => 50, :width => 50, :height=> 50
    end
    if direct == :down
      # @direction.replace "#{direct}"
      @vertical+= 1
    end
    if direct == :up
      # @direction.replace "#{direct}"
      @vertical-= 1
    end
    @direction.replace "#{@horizontal}"
    @direction2.replace "#{@vertical}"
  end
  
  
  # animate - move based on our current direction
  animate(30) do |frame|
    new_left=@player.left+@horizontal
    new_top=@player.top+@vertical   
    @player.move(new_left, new_top)
  end
end