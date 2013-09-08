module Hi

  include Math

    def self.area(r)
      PI * r ** 2
    end

    def self.circle(args={})

      # set variables and defaults
      id = args[:id] || 1
      r = args[:r] || 5
      stroke_width = args[:stroke_width] || 1
      cx = args[:cx] || 10
      cy = args[:cy] || 10
      fill = args[:fill] || "white"
      stroke = args[:stroke] || "black"

      # required parameters
      opening_tag = "<circle "
      id = "id=\"#{id}\" "
      cx = "cx=\"#{cx}\" "
      cy = "cy=\"#{cy}\" "
      r  = "r=\"#{r}\" "
      closing_tag = "/>"

      # optional parameters
      fill = "fill=\"#{fill}\" "
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      circle = opening_tag + id + cx + cy + r + fill + stroke + stroke_width + closing_tag

      # output
      circle.html_safe

    end

    def self.rect(args={})

      # set variables and defaults
      id = args[:id] || "r1"
      x = args[:x] || 10
      y = args[:y] || 10
      width = args[:width] || 10 # can't be negative
      height = args[:height] || 10 # can't be negative
      rx = args[:cx] || 0 # can't be negative
      ry = args[:cy] || 0 # can't be negative    

      stroke_width = args[:stroke_width] || 1
      fill = args[:fill] || "white"
      stroke = args[:stroke] || "black"

      # required parameters
      opening_tag = "<rect "
      id = "id=\"#{id}\" "
      x = "x=\"#{x}\" "
      y = "y=\"#{y}\" "
      width  = "width=\"#{width}\" "
      height  = "height=\"#{height}\" "
      closing_tag = "/>"

      # optional parameters
      rx = "rx=\"#{rx}\" "
      ry = "ry=\"#{ry}\" "
      fill = "fill=\"#{fill}\" "
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      circle = opening_tag + id + x + y + width +  height + rx + ry + fill + stroke + stroke_width + closing_tag

      # output
      circle.html_safe

    end

end
