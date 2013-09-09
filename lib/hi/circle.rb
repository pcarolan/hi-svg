class Circle

  attr_accessor :args

  def initialize(args={})

    @args = {:id => args[:id] || 1,
             :r => args[:r] || 5,
             :stroke_width => args[:stroke_width] || 1,
             :cx => args[:cx] || 10, # The x-axis coordinate of the center of the circle.
             :cy => args[:cy] || 10, # The y-axis coordinate of the center of the circle.
             :fill => args[:fill] || "white",
             :stroke => args[:stroke] || "black",
             :stroke_dasharray => args[:stroke_dasharray] || nil}
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