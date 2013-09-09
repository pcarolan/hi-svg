class WelcomeController < ApplicationController
  def index
    @circle_object = {id: 1,r: 50,w: 3, cx: 400, cy: 200, fill: "blue",stroke: "white",stroke_width: 2}

    @rect_object = {id: "r2",x: 20,y: 20,width: 200,height: 100,rx: 5,ry: 5,fill: "red", stroke: "white",stroke_width: 2}

    @ellipse_object = {:id => "c2", :cx => 150, :cy => 200,:rx => 80, :ry => 50, :fill => "orange", :stroke => "white"}

  end
end
