class WelcomeController < ApplicationController
  def index
    @circle_object = {:id => 1,:r => 50, :w => 3, :cx => 400, :cy => 200, :fill => "blue", :stroke => "red"}
    @rect_object = {:id => "r2", :x => 20, :y => 20, :width => 200, :height => 100, :rx => 40,:ry => 20, :fill => "red"}
  end
end
