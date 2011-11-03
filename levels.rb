Shoes.app do

  banner 'hi ZACH'
  fill blue
  @player=rect :top => 50, :width => 50, :height=> 50
  # @info = para 'hi'
  keypress do |key|
    # @info.replace "#{key.inspect} was pressed"
    # @player.displace(50, 10)
    new_left=@player.left
    new_top=@player.top
    new_left=new_left+10 if key == :right
    new_left=new_left-10 if key == :left
    new_top=new_top+10 if key == :down
    new_top=new_top-10 if key == :up
    @player.move(new_left,new_top)
  end
end