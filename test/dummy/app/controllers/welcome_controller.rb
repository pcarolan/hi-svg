class WelcomeController < ApplicationController
  def index
    @circle_object = {:id => 1,:r => 50, :w => 3, :cx => 400, :cy => 200, :fill => "blue", :stroke => "red"}
    @rect_object = {:id => "r2", :x => 1, :y => 1, :width => 400, :height => 200, :rx => 0,:rx => 0, :fill => "green"}
  end
end
