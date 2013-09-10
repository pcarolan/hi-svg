class Rect

  attr_accessor :args

  def initialize(args={})

    @args = {:id => args[:id] || "rect-id",
             :r => args[:r] || 5,
             :x => args[:x] || 10, # The x-axis coordinate of the side of the rectangle which has the smaller x-axis coordinate value.
             :y => args[:y] || 10, # The y-axis coordinate of the side of the rectangle which has the smaller y-axis coordinate.
             :width => args[:width] || 10, # can't be negative
             :height => args[:height] || 10, # can't be negative
             :rx => args[:rx] || 0, # can't be negative
             :ry => args[:ry] || 0, # can't be negative  
             :fill => args[:fill] || "none",
             :stroke => args[:stroke] || "black",
             :stroke_width => args[:stroke_width] || 1}
  end  

  def tag(attributes)
    ("<#{self.class.to_s.downcase} " + attributes.join(" ") + "/>").html_safe
  end

  def attributes(key_val_hash)
    output = []
    key_val_hash.each do |key,val|
      output << key.to_s + "=\"#{val.to_s}\""
    end
    output
  end

  def draw
    tag attributes @args 
  end

end