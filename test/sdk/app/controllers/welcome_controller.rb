class WelcomeController < ApplicationController
  def index
    @circle = Circle.new({id: 1,r: 50,w: 3, cx: 400, cy: 200, fill: "blue",stroke: "white",stroke_width: 2})

    @rect = Rect.new({id: "r2",x: 20,y: 20,width: 200,height: 100,rx: 5,ry: 5,fill: "red", stroke: "white",stroke_width: 2})

    @ellipse = Ellipse.new({:id => "c2", :cx => 150, :cy => 200,:rx => 80, :ry => 50, :fill => "orange", :stroke => "white",stroke_width: 2})
    
    @line_object = {:id => "l2", :x1 => 100, :y1 => 300,:x2 => 200, :y2 => 800, :stroke => "green",:stroke_width => 10}

    @xgrid = []
    dist = 50

    40.times do |i|
      @xgrid << {:id => "tick", :x1 => 0, :y1 => 5,:x2 => 1420, :y2 => dist, :stroke => "white",:stroke_width => 2}
      dist += 50
    end
    
  end
end
