class Ellipse

  attr_accessor :args

  def initialize(args={})

    @args = {:id => args[:id] || "ellipse-id",
         :cx => args[:cx] || 30, # The x-axis coordinate of the center of the ellipse.
         :cy => args[:cy] || 20, # The y-axis coordinate of the center of the ellipse.
         :rx => args[:rx] || 20, # The x-axis radius of the ellipse.
         :ry => args[:ry] || 10, # The y-axis radius of the ellipse.
         :fill => args[:fill] || "none",
         :stroke => args[:stroke] || "black",
         :stroke_width => args[:stroke_width] || 1,
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