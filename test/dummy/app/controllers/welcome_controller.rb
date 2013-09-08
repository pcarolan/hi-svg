class WelcomeController < ApplicationController
  def index
    @circle_obj = {:r => 50, :w => 3, :cx => 400, :cy => 300, :fill => "red", :stroke => "blue"}
  end
end
